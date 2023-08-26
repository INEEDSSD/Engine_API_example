import CustomInstanceVS from "../DrawCustomInstanceDemo/customInstance.vs"
import CustomInstanceFS from "../DrawCustomInstanceDemo/customInstance.fs"


export class CustomInstanceMaterial extends Laya.Material{
    
    static init(){
        var attributeMap: any = {
			'a_Position': [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
			'a_Normal': [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
			'a_Texcoord0': [Laya.VertexMesh.MESH_TEXTURECOORDINATE0, Laya.ShaderDataType.Vector2],
            'a_Tangent0': [Laya.VertexMesh.MESH_TANGENT0, Laya.ShaderDataType.Vector4],
            'a_WorldMat':[Laya.VertexMesh.MESH_WORLDMATRIX_ROW0, Laya.ShaderDataType.Matrix4x4],
            'a_InstanceColor':[Laya.VertexMesh.MESH_CUSTOME0, Laya.ShaderDataType.Color],
        };

        var uniformMap: any = {
            
        }
        var shader: Laya.Shader3D = Laya.Shader3D.add("CustomInstanceMat",false);
		var subShader: Laya.SubShader = new Laya.SubShader(attributeMap, uniformMap);
        
		shader.addSubShader(subShader);
		subShader.addShaderPass(CustomInstanceVS, CustomInstanceFS, "Forward");
    }

    constructor(){
        super();
        this.setShaderName("CustomInstanceMat");
        this.renderModeSet();
    }

    //渲染模式
    renderModeSet(){
        this.alphaTest = true;//深度测试关闭
        this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;//渲染顺序放在后面
        this.depthWrite = true;
        this.cull = Laya.RenderState.CULL_BACK;
        this.blend = Laya.RenderState.BLEND_DISABLE;
        this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }

}