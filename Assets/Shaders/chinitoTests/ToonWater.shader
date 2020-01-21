// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33237,y:32568,varname:node_3138,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3215,x:29741,y:32229,varname:node_3215,prsc:2|A-7629-TSL,B-7201-OUT;n:type:ShaderForge.SFN_Multiply,id:7299,x:29741,y:32403,varname:node_7299,prsc:2|A-7629-TSL,B-8205-OUT;n:type:ShaderForge.SFN_Multiply,id:4421,x:29741,y:32579,varname:node_4421,prsc:2|A-7629-TSL,B-4177-OUT;n:type:ShaderForge.SFN_Set,id:9396,x:29892,y:32229,varname:FoamSpeed,prsc:2|IN-3215-OUT;n:type:ShaderForge.SFN_Set,id:4609,x:29892,y:32403,varname:RefractionSpeed,prsc:2|IN-7299-OUT;n:type:ShaderForge.SFN_Set,id:8765,x:29892,y:32579,varname:WaterSpeed,prsc:2|IN-4421-OUT;n:type:ShaderForge.SFN_Slider,id:7201,x:29408,y:32230,ptovrint:False,ptlb:FoamSpeed,ptin:_FoamSpeed,varname:node_7201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Slider,id:8205,x:29408,y:32403,ptovrint:False,ptlb:RefractionSpeed,ptin:_RefractionSpeed,varname:node_8205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Slider,id:4177,x:29391,y:32645,ptovrint:False,ptlb:WaterSpeed,ptin:_WaterSpeed,varname:node_4177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Time,id:7629,x:29452,y:32486,varname:node_7629,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6219,x:29349,y:33213,varname:node_6219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Get,id:1309,x:29349,y:33386,varname:node_1309,prsc:2|IN-4609-OUT;n:type:ShaderForge.SFN_Panner,id:8416,x:29552,y:33284,varname:node_8416,prsc:2,spu:1,spv:1|UVIN-6219-UVOUT,DIST-1309-OUT;n:type:ShaderForge.SFN_Tex2d,id:7062,x:29720,y:33284,ptovrint:False,ptlb:WaterNoise,ptin:_WaterNoise,varname:node_7062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8416-UVOUT;n:type:ShaderForge.SFN_Append,id:9201,x:29898,y:33301,varname:node_9201,prsc:2|A-7062-R,B-7062-G;n:type:ShaderForge.SFN_RemapRange,id:5325,x:30060,y:33301,varname:node_5325,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9201-OUT;n:type:ShaderForge.SFN_Multiply,id:7897,x:30238,y:33301,varname:node_7897,prsc:2|A-5325-OUT,B-3377-OUT;n:type:ShaderForge.SFN_Slider,id:3377,x:29985,y:33499,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:node_3377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05551695,max:0.2;n:type:ShaderForge.SFN_Set,id:3876,x:30389,y:33301,varname:GrayScaleRefraction,prsc:2|IN-7897-OUT;n:type:ShaderForge.SFN_TexCoord,id:1923,x:29425,y:32795,varname:node_1923,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5822,x:29656,y:32795,varname:node_5822,prsc:2|A-1923-UVOUT,B-6201-OUT;n:type:ShaderForge.SFN_Panner,id:9852,x:29884,y:32795,varname:node_9852,prsc:2,spu:1,spv:1|UVIN-5822-OUT,DIST-1644-OUT;n:type:ShaderForge.SFN_Slider,id:6201,x:29332,y:32967,ptovrint:False,ptlb:FoamSize,ptin:_FoamSize,varname:node_6201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:591,x:30099,y:32816,varname:node_591,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-9852-UVOUT,TEX-1759-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1759,x:29884,y:32991,ptovrint:False,ptlb:Caustics,ptin:_Caustics,varname:node_1759,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:1644,x:29680,y:32974,varname:node_1644,prsc:2|IN-9396-OUT;n:type:ShaderForge.SFN_Step,id:7376,x:30327,y:32816,varname:node_7376,prsc:2|A-591-RGB;n:type:ShaderForge.SFN_Set,id:3750,x:30502,y:32816,varname:Foam,prsc:2|IN-7376-OUT;n:type:ShaderForge.SFN_Get,id:4935,x:30127,y:33007,varname:node_4935,prsc:2;pass:END;sub:END;*/

Shader "Shader Forge/ToonWater" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
