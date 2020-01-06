// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:2,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34149,y:33306,varname:node_3138,prsc:2|custl-9260-OUT,clip-7855-OUT;n:type:ShaderForge.SFN_Tex2d,id:2900,x:32709,y:33387,ptovrint:False,ptlb:FireMask,ptin:_FireMask,varname:node_2900,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a4a4cf7818424041a3e9fb1ea78274e,ntxv:0,isnm:False|UVIN-6934-UVOUT;n:type:ShaderForge.SFN_Panner,id:6916,x:32074,y:33025,varname:node_6916,prsc:2,spu:0,spv:-1|UVIN-6934-UVOUT,DIST-5384-OUT;n:type:ShaderForge.SFN_TexCoord,id:2057,x:31515,y:32833,varname:node_2057,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:4797,x:31534,y:33068,varname:node_4797,prsc:2;n:type:ShaderForge.SFN_Panner,id:6404,x:32074,y:33204,varname:node_6404,prsc:2,spu:0,spv:-1|UVIN-6934-UVOUT,DIST-521-OUT;n:type:ShaderForge.SFN_Multiply,id:521,x:31745,y:33150,varname:node_521,prsc:2|A-4797-T,B-4045-OUT;n:type:ShaderForge.SFN_Slider,id:4045,x:31415,y:33216,ptovrint:False,ptlb:SpeedBig,ptin:_SpeedBig,varname:node_4045,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.5490295,max:1;n:type:ShaderForge.SFN_Tex2d,id:9386,x:32384,y:33156,varname:node_9386,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-6916-UVOUT,TEX-6375-TEX;n:type:ShaderForge.SFN_Tex2d,id:9858,x:32384,y:33318,varname:node_9858,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-2333-OUT,TEX-6375-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6375,x:31669,y:33363,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_6375,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2333,x:32198,y:33351,varname:node_2333,prsc:2|A-6404-UVOUT,B-6332-OUT;n:type:ShaderForge.SFN_Vector1,id:6332,x:31986,y:33407,varname:node_6332,prsc:2,v1:0.55;n:type:ShaderForge.SFN_Clamp01,id:6236,x:32794,y:33249,varname:node_6236,prsc:2|IN-170-OUT;n:type:ShaderForge.SFN_Add,id:170,x:32619,y:33249,varname:node_170,prsc:2|A-9386-G,B-9858-G;n:type:ShaderForge.SFN_Multiply,id:4820,x:32989,y:33383,varname:node_4820,prsc:2|A-6236-OUT,B-2900-G;n:type:ShaderForge.SFN_Slider,id:3090,x:31389,y:32995,ptovrint:False,ptlb:SpeedLittle,ptin:_SpeedLittle,varname:node_3090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:5384,x:31772,y:33010,varname:node_5384,prsc:2|A-4797-T,B-3090-OUT;n:type:ShaderForge.SFN_Step,id:5899,x:33195,y:33394,varname:node_5899,prsc:2|A-4820-OUT,B-6107-OUT;n:type:ShaderForge.SFN_Slider,id:3039,x:32661,y:33570,ptovrint:False,ptlb:StepValue,ptin:_StepValue,varname:node_3039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7915071,max:1;n:type:ShaderForge.SFN_OneMinus,id:7855,x:33379,y:33396,varname:node_7855,prsc:2|IN-5899-OUT;n:type:ShaderForge.SFN_Step,id:6798,x:33263,y:33664,varname:node_6798,prsc:2|A-4820-OUT,B-9104-OUT;n:type:ShaderForge.SFN_Add,id:9104,x:33035,y:33690,varname:node_9104,prsc:2|A-6107-OUT,B-3249-OUT;n:type:ShaderForge.SFN_OneMinus,id:5344,x:33433,y:33664,varname:node_5344,prsc:2|IN-6798-OUT;n:type:ShaderForge.SFN_Slider,id:3249,x:32711,y:33727,ptovrint:False,ptlb:ColorInteriorTransicion,ptin:_ColorInteriorTransicion,varname:node_3249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.242056,max:1;n:type:ShaderForge.SFN_Color,id:8749,x:33213,y:33172,ptovrint:False,ptlb:FuegoExteriorC1,ptin:_FuegoExteriorC1,varname:node_8749,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9215687,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7644,x:33695,y:33667,varname:node_7644,prsc:2|A-5344-OUT,B-1988-RGB;n:type:ShaderForge.SFN_Color,id:1988,x:33433,y:33815,ptovrint:False,ptlb:ColorInteriorC1,ptin:_ColorInteriorC1,varname:node_1988,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9528302,c2:0.8953713,c3:0.2202296,c4:1;n:type:ShaderForge.SFN_Lerp,id:9260,x:33846,y:33524,varname:node_9260,prsc:2|A-7644-OUT,B-6731-OUT,T-6798-OUT;n:type:ShaderForge.SFN_Color,id:8272,x:33213,y:33010,ptovrint:False,ptlb:FuegoExteriorC2,ptin:_FuegoExteriorC2,varname:node_8272,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7830189,c2:0.02585441,c3:0.02585441,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2577,x:33243,y:33528,varname:node_2577,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:1125,x:33461,y:33119,varname:node_1125,prsc:2|A-8272-RGB,B-8749-RGB,T-2577-V;n:type:ShaderForge.SFN_Multiply,id:6731,x:33659,y:33383,varname:node_6731,prsc:2|A-1125-OUT,B-7855-OUT;n:type:ShaderForge.SFN_OneMinus,id:6107,x:32973,y:33533,varname:node_6107,prsc:2|IN-3039-OUT;n:type:ShaderForge.SFN_Rotator,id:6934,x:32186,y:32849,varname:node_6934,prsc:2|UVIN-2057-UVOUT,ANG-2604-OUT;n:type:ShaderForge.SFN_Vector1,id:2604,x:32000,y:32917,varname:node_2604,prsc:2,v1:3.1416;proporder:2900-6375-4045-3090-3039-3249-1988-8749-8272;pass:END;sub:END;*/

Shader "Shader Forge/fire" {
    Properties {
        _FireMask ("FireMask", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _SpeedBig ("SpeedBig", Range(0.1, 1)) = 0.5490295
        _SpeedLittle ("SpeedLittle", Range(0.1, 1)) = 1
        _StepValue ("StepValue", Range(0, 1)) = 0.7915071
        _ColorInteriorTransicion ("ColorInteriorTransicion", Range(0, 1)) = 0.242056
        [HDR]_ColorInteriorC1 ("ColorInteriorC1", Color) = (0.9528302,0.8953713,0.2202296,1)
        [HDR]_FuegoExteriorC1 ("FuegoExteriorC1", Color) = (1,0.9215687,0,1)
        [HDR]_FuegoExteriorC2 ("FuegoExteriorC2", Color) = (0.7830189,0.02585441,0.02585441,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _FireMask; uniform float4 _FireMask_ST;
            uniform float _SpeedBig;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _SpeedLittle;
            uniform float _StepValue;
            uniform float _ColorInteriorTransicion;
            uniform float4 _FuegoExteriorC1;
            uniform float4 _ColorInteriorC1;
            uniform float4 _FuegoExteriorC2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4x4 bbmv = UNITY_MATRIX_MV;
                bbmv._m00 = -1.0/length(unity_WorldToObject[0].xyz);
                bbmv._m10 = 0.0f;
                bbmv._m20 = 0.0f;
                bbmv._m01 = 0.0f;
                bbmv._m11 = -1.0/length(unity_WorldToObject[1].xyz);
                bbmv._m21 = 0.0f;
                bbmv._m02 = 0.0f;
                bbmv._m12 = 0.0f;
                bbmv._m22 = -1.0/length(unity_WorldToObject[2].xyz);
                o.pos = mul( UNITY_MATRIX_P, mul( bbmv, v.vertex ));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4797 = _Time;
                float node_6934_ang = 3.1416;
                float node_6934_spd = 1.0;
                float node_6934_cos = cos(node_6934_spd*node_6934_ang);
                float node_6934_sin = sin(node_6934_spd*node_6934_ang);
                float2 node_6934_piv = float2(0.5,0.5);
                float2 node_6934 = (mul(i.uv0-node_6934_piv,float2x2( node_6934_cos, -node_6934_sin, node_6934_sin, node_6934_cos))+node_6934_piv);
                float2 node_6916 = (node_6934+(node_4797.g*_SpeedLittle)*float2(0,-1));
                float4 node_9386 = tex2D(_Noise,TRANSFORM_TEX(node_6916, _Noise));
                float2 node_2333 = ((node_6934+(node_4797.g*_SpeedBig)*float2(0,-1))*0.55);
                float4 node_9858 = tex2D(_Noise,TRANSFORM_TEX(node_2333, _Noise));
                float4 _FireMask_var = tex2D(_FireMask,TRANSFORM_TEX(node_6934, _FireMask));
                float node_4820 = (saturate((node_9386.g+node_9858.g))*_FireMask_var.g);
                float node_6107 = (1.0 - _StepValue);
                float node_7855 = (1.0 - step(node_4820,node_6107));
                clip(node_7855 - 0.5);
////// Lighting:
                float node_6798 = step(node_4820,(node_6107+_ColorInteriorTransicion));
                float3 finalColor = lerp(((1.0 - node_6798)*_ColorInteriorC1.rgb),(lerp(_FuegoExteriorC2.rgb,_FuegoExteriorC1.rgb,i.uv0.g)*node_7855),node_6798);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif //UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _FireMask; uniform float4 _FireMask_ST;
            uniform float _SpeedBig;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _SpeedLittle;
            uniform float _StepValue;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4x4 bbmv = UNITY_MATRIX_MV;
                bbmv._m00 = -1.0/length(unity_WorldToObject[0].xyz);
                bbmv._m10 = 0.0f;
                bbmv._m20 = 0.0f;
                bbmv._m01 = 0.0f;
                bbmv._m11 = -1.0/length(unity_WorldToObject[1].xyz);
                bbmv._m21 = 0.0f;
                bbmv._m02 = 0.0f;
                bbmv._m12 = 0.0f;
                bbmv._m22 = -1.0/length(unity_WorldToObject[2].xyz);
                o.pos = mul( UNITY_MATRIX_P, mul( bbmv, v.vertex ));
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4797 = _Time;
                float node_6934_ang = 3.1416;
                float node_6934_spd = 1.0;
                float node_6934_cos = cos(node_6934_spd*node_6934_ang);
                float node_6934_sin = sin(node_6934_spd*node_6934_ang);
                float2 node_6934_piv = float2(0.5,0.5);
                float2 node_6934 = (mul(i.uv0-node_6934_piv,float2x2( node_6934_cos, -node_6934_sin, node_6934_sin, node_6934_cos))+node_6934_piv);
                float2 node_6916 = (node_6934+(node_4797.g*_SpeedLittle)*float2(0,-1));
                float4 node_9386 = tex2D(_Noise,TRANSFORM_TEX(node_6916, _Noise));
                float2 node_2333 = ((node_6934+(node_4797.g*_SpeedBig)*float2(0,-1))*0.55);
                float4 node_9858 = tex2D(_Noise,TRANSFORM_TEX(node_2333, _Noise));
                float4 _FireMask_var = tex2D(_FireMask,TRANSFORM_TEX(node_6934, _FireMask));
                float node_4820 = (saturate((node_9386.g+node_9858.g))*_FireMask_var.g);
                float node_6107 = (1.0 - _StepValue);
                float node_7855 = (1.0 - step(node_4820,node_6107));
                clip(node_7855 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
