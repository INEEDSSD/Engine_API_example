#if !defined(Standard_vertex_lib)
    #define Standard_vertex_lib

    #include "ShadingVertex.glsl";
    #include "./CommonVS.glsl";

    //varying vec4 tSpace0;
    //varying vec4 tSpace1;
    //varying vec4 tSpace2;

    //varying vec3 v_BiNormalWS2;
    //varying float v_TangentW;

    void initPixelParams(inout PixelParams params, in Vertex vertex)
    {
        shadingPixelParams(params, vertex);
        sharePixelParams(params);

        //vec3 worldPos = v_PositionWS;
        //worldPos.x *= -1.0;
        //vec3 worldNormal = v_NormalWS;
        //worldNormal.x *= -1.0;
        //vec3 worldTangent = v_TangentWS;
        //worldTangent.x *= -1.0;
        //vec3 worldBinormal = cross(worldNormal, worldTangent) * sign(vertex.tangentOS.w);
        //v_BiNormalWS2 = worldBinormal;

        //v_TangentW = sign(vertex.tangentOS.w);

        //tSpace0 = vec4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
        //tSpace1 = vec4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
        //tSpace2 = vec4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

        //v_NormalWS.x *= -1.0;
        //v_TangentWS.x *= -1.0;
        //v_BiNormalWS = normalize(cross(v_NormalWS, v_TangentWS) * sign(vertex.tangentOS.w));
    }

#endif // Standard_vertex_lib