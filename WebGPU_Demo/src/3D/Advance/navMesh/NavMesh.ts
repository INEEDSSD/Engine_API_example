const { regClass, property } = Laya;
import { CameraClick } from "./CameraClick";
import Vector3 = Laya.Vector3
import NavMeshSurface = Laya.NavMeshSurface;
import UnlitMaterial = Laya.UnlitMaterial;
import Color = Laya.Color;
import PixelLineSprite3D = Laya.PixelLineSprite3D;
import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import NavAgent = Laya.NavAgent;
import Component = Laya.Component;
import Node = Laya.Node;
import { BaseScript } from "../../../BaseScript";

@regClass()
export class NavMesh extends BaseScript {
    @property(Camera)
    camera: Camera;

    private _angents: NavAgent[]
    private _scene: Scene3D;
    private _lineSprite: PixelLineSprite3D;

    private static tempV: Laya.Vector3 = new Laya.Vector3();

    getAllComplete<T extends Component>(node: Node, outs: T[], componentType: new () => T) {
        let comp = node.getComponent(componentType);
        if (comp != null) outs.unshift(comp);
        for (var i = 0, n = node.numChildren; i < n; i++) {
            this.getAllComplete(node.getChildAt(i) as Node, outs, componentType);
        }
    }

    onAwake(): void {
        super.base(this.camera);
    }
    onStart() {
        this._angents = [];
        this.getAllComplete(this.owner.scene as Node, this._angents, NavAgent);
        this._scene = this.owner.scene as Scene3D;
        this._lineSprite = new PixelLineSprite3D(100000);
        let suface = this.owner.getComponent(NavMeshSurface)
        this.showDebugMesh(suface);
        let click = this.camera.getComponent(CameraClick);
        if (click) {
            click.clickHandler = Laya.Handler.create(this, this.stageClickHandler, null, false)
        }
        // let link = this.owner.getComponent(Laya.NavNavMeshLink)
        // let index = suface.navMesh.navTileGrid.getTileIndexByPos(link.start.x, link.start.z);
        // console.log(link);
        // this.addMouseEvent()
    }

    private stageClickHandler(pos: Vector3) {
        console.log(pos);
        this._angents.forEach((agent) => {
            agent.destination = pos;
        })
    }

    private showDebugMesh(suface: NavMeshSurface) {
        let navMesh = suface.navMesh;
        let mesh = navMesh.buildDebugMesh();
        let sp3d = new Laya.Sprite3D();
        let meshrender = sp3d.addComponent(Laya.MeshRenderer);
        let meshfilter = sp3d.addComponent(Laya.MeshFilter);
        meshfilter.sharedMesh = mesh;
        var navSprite = this._scene.addChild(sp3d);
        let mat = new UnlitMaterial();
        mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
        mat.albedoColor = new Color(0, 0.75, 1, 0.3)
        meshrender.sharedMaterial = mat;
        Laya.Vector3.lerp(suface.min, suface.max, 0.5, NavMesh.tempV);
        navSprite.transform.position = NavMesh.tempV;
        //@ts-ignore
        let tiles = suface._oriTiles;
        for (var j = 0, n1 = tiles.length; j < n1; j++) {
            this.drawBoundingBox(this._lineSprite, tiles.getNavData(j).boundMin, tiles.getNavData(j).boundMax, Color.RED);
            // this.drawTitleTriangle(this._lineSprite, titles[j], Color.YELLOW);
        }
        this.drawBoundingBox(this._lineSprite, suface.min, suface.max, Color.GREEN);
    }
    private drawBoundingBox(lineSprite3D: PixelLineSprite3D, min: Laya.Vector3, max: Laya.Vector3, color: Color): void {
        let corners: Vector3[] = [];
        corners.push(min.clone())
        let p = min.clone();
        p.z = max.z;
        corners.push(p);

        p = max.clone();
        p.y = min.y;
        corners.push(p);

        p = min.clone();
        p.x = max.x;
        corners.push(p);

        //shang
        p = min.clone();
        p.y = max.y;
        corners.push(p);

        p = min.clone();
        p.z = max.z;
        p.y = max.y;
        corners.push(p);

        p = max.clone();
        corners.push(p);

        p = min.clone();
        p.x = max.x;
        p.y = max.y;
        corners.push(p);

        // bound.getCorners(corners);
        lineSprite3D.addLine(corners[0], corners[1], color, color);
        lineSprite3D.addLine(corners[1], corners[2], color, color);
        lineSprite3D.addLine(corners[2], corners[3], color, color);
        lineSprite3D.addLine(corners[3], corners[0], color, color);
        lineSprite3D.addLine(corners[4], corners[5], color, color);
        lineSprite3D.addLine(corners[5], corners[6], color, color);
        lineSprite3D.addLine(corners[6], corners[7], color, color);
        lineSprite3D.addLine(corners[7], corners[4], color, color);
        lineSprite3D.addLine(corners[0], corners[4], color, color);
        lineSprite3D.addLine(corners[1], corners[5], color, color);
        lineSprite3D.addLine(corners[2], corners[6], color, color);
        lineSprite3D.addLine(corners[3], corners[7], color, color);

    }

}