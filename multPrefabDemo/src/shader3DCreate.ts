const vs = `
#include "Camera.glsl";
#include "Sprite3DVertex.glsl";
#include "VertexCommon.glsl";

varying vec3 v_Normal;

void main()
{
	Vertex vertex;
    getVertexParams(vertex);
  	mat4 worldMat = getWorldMatrix();
    vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;

    gl_Position = getPositionCS(positionWS);
	  
	vec3 normalWS = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);
    v_Normal = normalWS;
	gl_Position=remapPositionZ(gl_Position);
}
`;

const ps = `
#if defined(GL_FRAGMENT_PRECISION_HIGH)// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
precision highp float;
#else
precision mediump float;
#endif

varying vec3 v_Normal;

void main()
{	
  gl_FragColor=vec4(v_Normal, 1.0);
}
`;



/**
 * Shader3D的自定义shader创建，根据shaderCount循环生成多个不同颜色、不同Define的Shader3D，color与define与下标有关
 * 
 */
export class Shader3DCreate {

    static shaders: Laya.Shader3D[] = [];

    static uniformMap = {
        "u_InColor": Laya.ShaderDataType.Color,
    };


    static defaultValue = {
        "u_InColor": new Laya.Color(1, 1, 1, 1),
    }
    static createShader3D(shaderName: string, shaderCount: number) {
        Shader3DCreate.createMultipleColorShaders3D(shaderName, shaderCount);
    }

    /**
     * 根据shaderCount循环生成多个不同颜色的Shader3D
     * @param baseName 基础shader名称
     * @param shaderCount shader数量
     */
    static createMultipleColorShaders3D(baseName: string, shaderCount: number) {
        console.log(`开始创建 ${shaderCount} 个不同颜色的shader`);
        
        for (let i = 0; i < shaderCount; i++) {
            // 根据索引i生成不同的颜色和defines
            let colorData = this.generateColorFromIndex(i, shaderCount);
            
            // 生成对应的片段着色器
            const customPs = this.generateFragmentShader(colorData.color, colorData.defines);
            
            // 创建shader名称
            let shaderName = `${baseName}_${i}`;
            
            // 创建Shader3D，添加defines支持
            let shader: Laya.Shader3D = Laya.Shader3D.add(shaderName, false);
            let subshader: Laya.SubShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, Shader3DCreate.uniformMap, Shader3DCreate.defaultValue);
            shader.addSubShader(subshader);
            subshader.addShaderPass(vs, customPs); // 使用自定义的片段着色器
            this.shaders.push(shader);
            console.log(`创建了shader: ${shaderName}, 颜色: rgb(${colorData.color.r.toFixed(3)}, ${colorData.color.g.toFixed(3)}, ${colorData.color.b.toFixed(3)}), defines: ${colorData.defines.join(', ')}`);
        }
            
        console.log(`所有shader创建完成`);
    }

    /**
     * 根据索引生成颜色和shader defines
     * @param index 当前索引
     * @param total 总数量
     * @returns 颜色和defines对象
     */
    private static generateColorFromIndex(index: number, total: number): {color: {r: number, g: number, b: number}, defines: string[]} {
        let defines: string[] = [];
        let color: {r: number, g: number, b: number};
        
        // 根据索引生成COLOR1, COLOR2, COLOR3...等define
        let colorDefine = `COLOR${index + 1}`;
        defines.push(colorDefine);
        
        // 根据索引生成不同的颜色，使用HSV色彩空间转换
        let hue = (index / total) * 360; // 色相值，0-360度
        let saturation = 0.8; // 饱和度，0.8比较饱满
        let value = 1.0; // 明度，1.0最亮
        
        // HSV转RGB
        color = this.hsvToRgb(hue, saturation, value);
        
        return {color, defines};
    }

    /**
     * HSV色彩空间转RGB
     * @param h 色相 0-360
     * @param s 饱和度 0-1
     * @param v 明度 0-1
     * @returns RGB颜色对象
     */
    private static hsvToRgb(h: number, s: number, v: number): {r: number, g: number, b: number} {
        let c = v * s;
        let x = c * (1 - Math.abs((h / 60) % 2 - 1));
        let m = v - c;
        
        let r = 0, g = 0, b = 0;
        
        if (h >= 0 && h < 60) {
            r = c; g = x; b = 0;
        } else if (h >= 60 && h < 120) {
            r = x; g = c; b = 0;
        } else if (h >= 120 && h < 180) {
            r = 0; g = c; b = x;
        } else if (h >= 180 && h < 240) {
            r = 0; g = x; b = c;
        } else if (h >= 240 && h < 300) {
            r = x; g = 0; b = c;
        } else if (h >= 300 && h < 360) {
            r = c; g = 0; b = x;
        }
        
        return {
            r: r + m,
            g: g + m, 
            b: b + m
        };
    }

    /**
     * 生成片段着色器代码
     * @param color 颜色对象
     * @param defines shader defines
     * @returns 片段着色器代码
     */
    private static generateFragmentShader(color: {r: number, g: number, b: number}, defines: string[]): string {
        // 生成宏定义字符串
        let defineString = defines.map(define => `#if defined(${define})`).join('\n');

        let defineString1 = defines.map(define => `#define ${define}`).join('\n');
        
        return `
#if defined(GL_FRAGMENT_PRECISION_HIGH)// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
precision highp float;
#else
precision mediump float;
#endif

${defineString1}
varying vec3 v_Normal;

void main()
{    
    ${defineString}
    // 基础颜色
    vec3 baseColor = vec3(${color.r.toFixed(3)}, ${color.g.toFixed(3)}, ${color.b.toFixed(3)});
    #else
    vec3 baseColor = vec3(1.0, 1.0, 1.0);
    #endif
    
    // 可以选择是否考虑法线影响
    vec3 finalColor = baseColor * abs(dot(v_Normal, vec3(0.0, 0.0, 1.0)));
    // 最终颜色计算
    finalColor = finalColor * u_InColor.rgb;
    
    // 确保颜色在合理范围内
    finalColor = clamp(finalColor, 0.0, 1.0);
    
    gl_FragColor = vec4(finalColor, 1.0);
}
`;
    }
}