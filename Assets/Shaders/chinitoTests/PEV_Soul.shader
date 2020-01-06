// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32920,y:32966,varname:node_3138,prsc:2|custl-2085-OUT,alpha-2439-OUT;n:type:ShaderForge.SFN_ScreenPos,id:4334,x:31399,y:32854,varname:node_4334,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:3432,x:31571,y:32854,varname:node_3432,prsc:2|UVIN-4334-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:5309,x:30658,y:32554,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:1855,x:30862,y:32564,varname:node_1855,prsc:2|NRM-5309-OUT,EXP-9995-OUT;n:type:ShaderForge.SFN_Slider,id:9995,x:30579,y:32748,ptovrint:False,ptlb:ExponentFresnel,ptin:_ExponentFresnel,varname:node_9995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2345485,max:3;n:type:ShaderForge.SFN_Clamp01,id:2751,x:31050,y:32564,varname:node_2751,prsc:2|IN-1855-OUT;n:type:ShaderForge.SFN_Lerp,id:2289,x:31271,y:32480,cmnt:Shader de Soul... si se ve raro write on BUffer,varname:node_2289,prsc:2|A-4577-RGB,B-5120-OUT,T-2751-OUT;n:type:ShaderForge.SFN_Color,id:4577,x:30922,y:32342,ptovrint:False,ptlb:MainFresnelColor,ptin:_MainFresnelColor,varname:node_4577,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.08018868,c2:0.235044,c3:0.3207547,c4:1;n:type:ShaderForge.SFN_Get,id:5120,x:30719,y:32468,varname:node_5120,prsc:2|IN-2518-OUT;n:type:ShaderForge.SFN_Set,id:2518,x:31740,y:32854,varname:background,prsc:2|IN-3432-RGB;n:type:ShaderForge.SFN_Set,id:1678,x:31430,y:32480,varname:Soul,prsc:2|IN-2289-OUT;n:type:ShaderForge.SFN_Get,id:2085,x:32564,y:33057,varname:node_2085,prsc:2|IN-1678-OUT;n:type:ShaderForge.SFN_Clamp01,id:2439,x:32581,y:33280,varname:node_2439,prsc:2|IN-6391-OUT;n:type:ShaderForge.SFN_Depth,id:6391,x:32363,y:33283,varname:node_6391,prsc:2;proporder:9995-4577;pass:END;sub:END;*/

Shader "PEV_Soul" {
    Properties {
        _ExponentFresnel ("ExponentFresnel", Range(0, 3)) = 0.2345485
        _MainFresnelColor ("MainFresnelColor", Color) = (0.08018868,0.235044,0.3207547,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _ExponentFresnel;
            uniform float4 _MainFresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 background = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float3 Soul = lerp(_MainFresnelColor.rgb,background,saturate(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_ExponentFresnel)));
                float3 finalColor = Soul;
                return fixed4(finalColor,saturate(partZ));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
