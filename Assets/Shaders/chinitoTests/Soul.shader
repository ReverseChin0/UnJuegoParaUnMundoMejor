// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|custl-971-OUT,alpha-5852-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1063,x:31759,y:33088,varname:node_1063,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:8086,x:31917,y:33088,varname:node_8086,prsc:2|UVIN-1063-UVOUT;n:type:ShaderForge.SFN_Set,id:97,x:32066,y:33088,varname:Background,prsc:2|IN-8086-RGB;n:type:ShaderForge.SFN_NormalVector,id:5807,x:31565,y:32764,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:1272,x:31755,y:32764,varname:node_1272,prsc:2|NRM-5807-OUT,EXP-5554-OUT;n:type:ShaderForge.SFN_Clamp01,id:8075,x:31979,y:32726,varname:node_8075,prsc:2|IN-1272-OUT;n:type:ShaderForge.SFN_Color,id:4102,x:31824,y:32550,ptovrint:False,ptlb:_Color,ptin:__Color,varname:node_4102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8356049,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:5554,x:31427,y:32958,ptovrint:False,ptlb:exponentFresnel,ptin:_exponentFresnel,varname:node_5554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4630659,max:3;n:type:ShaderForge.SFN_Lerp,id:7240,x:32155,y:32598,varname:node_7240,prsc:2|A-4102-RGB,B-2028-OUT,T-8075-OUT;n:type:ShaderForge.SFN_Set,id:7665,x:32325,y:32615,varname:transparentosoSoul,prsc:2|IN-7240-OUT;n:type:ShaderForge.SFN_Depth,id:5318,x:32314,y:33089,varname:node_5318,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5852,x:32471,y:33089,varname:node_5852,prsc:2|IN-5318-OUT;n:type:ShaderForge.SFN_Get,id:2028,x:31540,y:32652,varname:node_2028,prsc:2|IN-97-OUT;n:type:ShaderForge.SFN_Get,id:971,x:32389,y:32967,varname:node_971,prsc:2|IN-7665-OUT;proporder:4102-5554;pass:END;sub:END;*/

Shader "Shader Forge/Soul" {
    Properties {
        __Color ("_Color", Color) = (0.8356049,1,0,1)
        _exponentFresnel ("exponentFresnel", Range(0, 3)) = 0.4630659
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, __Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _exponentFresnel)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 __Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, __Color );
                float3 Background = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float _exponentFresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _exponentFresnel );
                float3 transparentosoSoul = lerp(__Color_var.rgb,Background,saturate(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_exponentFresnel_var)));
                float3 finalColor = transparentosoSoul;
                return fixed4(finalColor,saturate(partZ));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
