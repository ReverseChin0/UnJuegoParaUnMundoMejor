// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32579,y:32708,varname:node_3138,prsc:2|normal-3471-RGB,custl-7548-OUT;n:type:ShaderForge.SFN_NormalVector,id:6340,x:31853,y:32146,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:4839,x:31853,y:32295,varname:node_4839,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:3471,x:32366,y:32790,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_3471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_LightAttenuation,id:5466,x:31853,y:32429,varname:node_5466,prsc:2;n:type:ShaderForge.SFN_Dot,id:4481,x:32056,y:32197,varname:node_4481,prsc:2,dt:1|A-6340-OUT,B-4839-OUT;n:type:ShaderForge.SFN_Multiply,id:7958,x:32214,y:32379,varname:node_7958,prsc:2|A-4481-OUT,B-5466-OUT;n:type:ShaderForge.SFN_Lerp,id:4186,x:32406,y:32379,varname:node_4186,prsc:2|A-7958-OUT,B-3433-OUT,T-3355-OUT;n:type:ShaderForge.SFN_Slider,id:3355,x:32058,y:32575,ptovrint:False,ptlb:sombras,ptin:_sombras,varname:node_3355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:3433,x:32215,y:32499,varname:node_3433,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8452,x:32406,y:32200,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:21f1d9bf18194b643bf8331f16597265,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8996,x:32629,y:32342,varname:node_8996,prsc:2|A-8452-RGB,B-4186-OUT;n:type:ShaderForge.SFN_Set,id:9255,x:32801,y:32342,varname:MainTex,prsc:2|IN-8996-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9768,x:31437,y:32613,varname:node_9768,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:7893,x:31602,y:32613,varname:node_7893,prsc:2|UVIN-9768-UVOUT;n:type:ShaderForge.SFN_Set,id:7975,x:31752,y:32613,varname:Transparency,prsc:2|IN-7893-RGB;n:type:ShaderForge.SFN_Tex2d,id:787,x:31437,y:32832,ptovrint:False,ptlb:TransitionTex,ptin:_TransitionTex,varname:node_787,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c534f097d57b77341bb730ad6723dfdf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8286,x:31325,y:33037,ptovrint:False,ptlb:transition,ptin:_transition,varname:node_8286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:0.5816136,max:1;n:type:ShaderForge.SFN_Slider,id:7939,x:31325,y:33156,ptovrint:False,ptlb:transitinWidth,ptin:_transitinWidth,varname:node_7939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.04873621,max:0.1;n:type:ShaderForge.SFN_Step,id:6952,x:31866,y:32990,varname:node_6952,prsc:2|A-787-G,B-8286-OUT;n:type:ShaderForge.SFN_Step,id:882,x:31866,y:33125,varname:node_882,prsc:2|A-787-G,B-7407-OUT;n:type:ShaderForge.SFN_Add,id:7407,x:31663,y:33138,varname:node_7407,prsc:2|A-8286-OUT,B-7939-OUT;n:type:ShaderForge.SFN_Lerp,id:3678,x:32109,y:33125,varname:node_3678,prsc:2|A-353-OUT,B-1979-RGB,T-882-OUT;n:type:ShaderForge.SFN_Lerp,id:7548,x:32340,y:32947,varname:node_7548,prsc:2|A-3678-OUT,B-38-OUT,T-6952-OUT;n:type:ShaderForge.SFN_Color,id:1979,x:31865,y:33321,ptovrint:False,ptlb:transitionColor,ptin:_transitionColor,varname:node_1979,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.764151,c2:0.4289338,c3:0.4289338,c4:1;n:type:ShaderForge.SFN_Get,id:353,x:31844,y:33254,varname:node_353,prsc:2|IN-7975-OUT;n:type:ShaderForge.SFN_Get,id:38,x:32088,y:32934,varname:node_38,prsc:2|IN-9255-OUT;proporder:3471-3355-8452-787-8286-7939-1979;pass:END;sub:END;*/

Shader "Shader Forge/SimpleEnemies" {
    Properties {
        _Normal ("Normal", 2D) = "white" {}
        _sombras ("sombras", Range(0, 1)) = 0
        _MainTex ("MainTex", 2D) = "white" {}
        _TransitionTex ("TransitionTex", 2D) = "white" {}
        _transition ("transition", Range(-0.1, 1)) = 0.5816136
        _transitinWidth ("transitinWidth", Range(0, 0.1)) = 0.04873621
        [HDR]_transitionColor ("transitionColor", Color) = (0.764151,0.4289338,0.4289338,1)
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _TransitionTex; uniform float4 _TransitionTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _transition)
                UNITY_DEFINE_INSTANCED_PROP( float, _transitinWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _transitionColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
                float3 Transparency = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float4 _transitionColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transitionColor );
                float4 _TransitionTex_var = tex2D(_TransitionTex,TRANSFORM_TEX(i.uv0, _TransitionTex));
                float _transition_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transition );
                float _transitinWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transitinWidth );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _sombras_var = UNITY_ACCESS_INSTANCED_PROP( Props, _sombras );
                float3 MainTex = (_MainTex_var.rgb*lerp((max(0,dot(normalDirection,lightDirection))*attenuation),1.0,_sombras_var));
                float3 finalColor = lerp(lerp(Transparency,_transitionColor_var.rgb,step(_TransitionTex_var.g,(_transition_var+_transitinWidth_var))),MainTex,step(_TransitionTex_var.g,_transition_var));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _TransitionTex; uniform float4 _TransitionTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _transition)
                UNITY_DEFINE_INSTANCED_PROP( float, _transitinWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _transitionColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 Transparency = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float4 _transitionColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transitionColor );
                float4 _TransitionTex_var = tex2D(_TransitionTex,TRANSFORM_TEX(i.uv0, _TransitionTex));
                float _transition_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transition );
                float _transitinWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transitinWidth );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _sombras_var = UNITY_ACCESS_INSTANCED_PROP( Props, _sombras );
                float3 MainTex = (_MainTex_var.rgb*lerp((max(0,dot(normalDirection,lightDirection))*attenuation),1.0,_sombras_var));
                float3 finalColor = lerp(lerp(Transparency,_transitionColor_var.rgb,step(_TransitionTex_var.g,(_transition_var+_transitinWidth_var))),MainTex,step(_TransitionTex_var.g,_transition_var));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
