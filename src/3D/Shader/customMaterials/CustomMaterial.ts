import Material = Laya.Material;
import MaterialRenderMode = Laya.MaterialRenderMode;

export class CustomMaterial extends Material {
	constructor() {
		super();
		this.setShaderName("CustomShader");
		this.materialRenderMode = MaterialRenderMode.RENDERMODE_OPAQUE;
	}
}


