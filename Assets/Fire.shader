// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:2,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34518,y:33049,varname:node_3138,prsc:2|custl-3346-OUT,clip-8323-OUT;n:type:ShaderForge.SFN_TexCoord,id:1271,x:31923,y:32586,varname:node_1271,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:5137,x:32260,y:32584,varname:node_5137,prsc:2|UVIN-1271-UVOUT,ANG-7450-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7450,x:32089,y:32653,ptovrint:False,ptlb:rotationadjust,ptin:_rotationadjust,varname:node_7450,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.1416;n:type:ShaderForge.SFN_Slider,id:4476,x:31813,y:32849,ptovrint:False,ptlb:SpeedLittle,ptin:_SpeedLittle,varname:node_4476,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:1;n:type:ShaderForge.SFN_Slider,id:4817,x:31813,y:33004,ptovrint:False,ptlb:SpeedBig,ptin:_SpeedBig,varname:node_4817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:1;n:type:ShaderForge.SFN_Time,id:4705,x:32092,y:32892,varname:node_4705,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5663,x:32273,y:32843,varname:node_5663,prsc:2|A-4476-OUT,B-4705-T;n:type:ShaderForge.SFN_Multiply,id:8585,x:32273,y:32986,varname:node_8585,prsc:2|A-4817-OUT,B-4705-T;n:type:ShaderForge.SFN_Panner,id:3999,x:32494,y:32830,varname:node_3999,prsc:2,spu:0,spv:-1|UVIN-5137-UVOUT,DIST-5663-OUT;n:type:ShaderForge.SFN_Panner,id:8061,x:32494,y:32986,varname:node_8061,prsc:2,spu:0,spv:-1|UVIN-5137-UVOUT,DIST-8585-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4871,x:32245,y:33223,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4871,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5228,x:32851,y:33017,varname:node_5228,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-4325-OUT,TEX-4871-TEX;n:type:ShaderForge.SFN_Tex2d,id:2551,x:32750,y:32831,varname:node_2551,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-3999-UVOUT,TEX-4871-TEX;n:type:ShaderForge.SFN_Multiply,id:4325,x:32664,y:32986,varname:node_4325,prsc:2|A-8061-UVOUT,B-9905-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9905,x:32494,y:33145,ptovrint:False,ptlb:magnification,ptin:_magnification,varname:node_9905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Add,id:3119,x:33056,y:32940,varname:node_3119,prsc:2|A-2551-G,B-5228-G;n:type:ShaderForge.SFN_Clamp01,id:6856,x:33226,y:32940,varname:node_6856,prsc:2|IN-3119-OUT;n:type:ShaderForge.SFN_Tex2d,id:2092,x:33148,y:33100,ptovrint:False,ptlb:FireMask,ptin:_FireMask,varname:node_2092,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a4a4cf7818424041a3e9fb1ea78274e,ntxv:0,isnm:False|UVIN-5137-UVOUT;n:type:ShaderForge.SFN_Slider,id:2768,x:33072,y:33336,ptovrint:False,ptlb:StepValue,ptin:_StepValue,varname:node_2768,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.832229,max:1;n:type:ShaderForge.SFN_Slider,id:115,x:33072,y:33489,ptovrint:False,ptlb:ColorTransicion,ptin:_ColorTransicion,varname:node_115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2197855,max:1;n:type:ShaderForge.SFN_Multiply,id:612,x:33430,y:33094,varname:node_612,prsc:2|A-6856-OUT,B-2092-G;n:type:ShaderForge.SFN_Color,id:7193,x:33559,y:33690,ptovrint:False,ptlb:Fuego1,ptin:_Fuego1,varname:node_7193,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9811321,c2:0.43401,c3:0.2082592,c4:1;n:type:ShaderForge.SFN_Color,id:4806,x:33559,y:33854,ptovrint:False,ptlb:Fuego2,ptin:_Fuego2,varname:node_4806,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9416614,c3:0.4481132,c4:1;n:type:ShaderForge.SFN_TexCoord,id:5979,x:33559,y:33999,varname:node_5979,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:821,x:33820,y:33780,varname:node_821,prsc:2|A-7193-RGB,B-4806-RGB,T-5979-V;n:type:ShaderForge.SFN_OneMinus,id:7770,x:33400,y:33325,varname:node_7770,prsc:2|IN-2768-OUT;n:type:ShaderForge.SFN_Step,id:1380,x:33609,y:33157,varname:node_1380,prsc:2|A-612-OUT,B-7770-OUT;n:type:ShaderForge.SFN_OneMinus,id:8323,x:33829,y:33151,varname:node_8323,prsc:2|IN-1380-OUT;n:type:ShaderForge.SFN_Add,id:2113,x:33424,y:33484,varname:node_2113,prsc:2|A-7770-OUT,B-115-OUT;n:type:ShaderForge.SFN_Step,id:4559,x:33645,y:33466,varname:node_4559,prsc:2|A-612-OUT,B-2113-OUT;n:type:ShaderForge.SFN_OneMinus,id:5044,x:33814,y:33466,varname:node_5044,prsc:2|IN-4559-OUT;n:type:ShaderForge.SFN_Multiply,id:1841,x:34013,y:33448,varname:node_1841,prsc:2|A-5044-OUT,B-7582-RGB;n:type:ShaderForge.SFN_Color,id:7582,x:33803,y:33608,ptovrint:False,ptlb:ColorInterior,ptin:_ColorInterior,varname:node_7582,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5129049,c2:0.8290357,c3:0.9622642,c4:1;n:type:ShaderForge.SFN_Lerp,id:3346,x:34196,y:33593,varname:node_3346,prsc:2|A-1841-OUT,B-821-OUT,T-4559-OUT;proporder:7450-4476-4817-4871-9905-2092-2768-115-7193-4806-7582;pass:END;sub:END;*/

Shader "Shader Forge/Fire" {
    Properties {
        _rotationadjust ("rotationadjust", Float ) = 3.1416
        _SpeedLittle ("SpeedLittle", Range(0.1, 1)) = 0.1
        _SpeedBig ("SpeedBig", Range(0.1, 1)) = 0.1
        _Noise ("Noise", 2D) = "white" {}
        _magnification ("magnification", Float ) = 2
        _FireMask ("FireMask", 2D) = "white" {}
        _StepValue ("StepValue", Range(0, 1)) = 0.832229
        _ColorTransicion ("ColorTransicion", Range(0, 1)) = 0.2197855
        _Fuego1 ("Fuego1", Color) = (0.9811321,0.43401,0.2082592,1)
        _Fuego2 ("Fuego2", Color) = (1,0.9416614,0.4481132,1)
        _ColorInterior ("ColorInterior", Color) = (0.5129049,0.8290357,0.9622642,1)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _FireMask; uniform float4 _FireMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _rotationadjust)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpeedLittle)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpeedBig)
                UNITY_DEFINE_INSTANCED_PROP( float, _magnification)
                UNITY_DEFINE_INSTANCED_PROP( float, _StepValue)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorTransicion)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fuego1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fuego2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorInterior)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
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
                UNITY_SETUP_INSTANCE_ID( i );
                float _SpeedLittle_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpeedLittle );
                float4 node_4705 = _Time;
                float _rotationadjust_var = UNITY_ACCESS_INSTANCED_PROP( Props, _rotationadjust );
                float node_5137_ang = _rotationadjust_var;
                float node_5137_spd = 1.0;
                float node_5137_cos = cos(node_5137_spd*node_5137_ang);
                float node_5137_sin = sin(node_5137_spd*node_5137_ang);
                float2 node_5137_piv = float2(0.5,0.5);
                float2 node_5137 = (mul(i.uv0-node_5137_piv,float2x2( node_5137_cos, -node_5137_sin, node_5137_sin, node_5137_cos))+node_5137_piv);
                float2 node_3999 = (node_5137+(_SpeedLittle_var*node_4705.g)*float2(0,-1));
                float4 node_2551 = tex2D(_Noise,TRANSFORM_TEX(node_3999, _Noise));
                float _SpeedBig_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpeedBig );
                float _magnification_var = UNITY_ACCESS_INSTANCED_PROP( Props, _magnification );
                float2 node_4325 = ((node_5137+(_SpeedBig_var*node_4705.g)*float2(0,-1))*_magnification_var);
                float4 node_5228 = tex2D(_Noise,TRANSFORM_TEX(node_4325, _Noise));
                float4 _FireMask_var = tex2D(_FireMask,TRANSFORM_TEX(node_5137, _FireMask));
                float node_612 = (saturate((node_2551.g+node_5228.g))*_FireMask_var.g);
                float _StepValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _StepValue );
                float node_7770 = (1.0 - _StepValue_var);
                clip((1.0 - step(node_612,node_7770)) - 0.5);
////// Lighting:
                float _ColorTransicion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorTransicion );
                float node_4559 = step(node_612,(node_7770+_ColorTransicion_var));
                float4 _ColorInterior_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorInterior );
                float4 _Fuego1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fuego1 );
                float4 _Fuego2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fuego2 );
                float3 finalColor = lerp(((1.0 - node_4559)*_ColorInterior_var.rgb),lerp(_Fuego1_var.rgb,_Fuego2_var.rgb,i.uv0.g),node_4559);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _FireMask; uniform float4 _FireMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _rotationadjust)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpeedLittle)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpeedBig)
                UNITY_DEFINE_INSTANCED_PROP( float, _magnification)
                UNITY_DEFINE_INSTANCED_PROP( float, _StepValue)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
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
                UNITY_SETUP_INSTANCE_ID( i );
                float _SpeedLittle_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpeedLittle );
                float4 node_4705 = _Time;
                float _rotationadjust_var = UNITY_ACCESS_INSTANCED_PROP( Props, _rotationadjust );
                float node_5137_ang = _rotationadjust_var;
                float node_5137_spd = 1.0;
                float node_5137_cos = cos(node_5137_spd*node_5137_ang);
                float node_5137_sin = sin(node_5137_spd*node_5137_ang);
                float2 node_5137_piv = float2(0.5,0.5);
                float2 node_5137 = (mul(i.uv0-node_5137_piv,float2x2( node_5137_cos, -node_5137_sin, node_5137_sin, node_5137_cos))+node_5137_piv);
                float2 node_3999 = (node_5137+(_SpeedLittle_var*node_4705.g)*float2(0,-1));
                float4 node_2551 = tex2D(_Noise,TRANSFORM_TEX(node_3999, _Noise));
                float _SpeedBig_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpeedBig );
                float _magnification_var = UNITY_ACCESS_INSTANCED_PROP( Props, _magnification );
                float2 node_4325 = ((node_5137+(_SpeedBig_var*node_4705.g)*float2(0,-1))*_magnification_var);
                float4 node_5228 = tex2D(_Noise,TRANSFORM_TEX(node_4325, _Noise));
                float4 _FireMask_var = tex2D(_FireMask,TRANSFORM_TEX(node_5137, _FireMask));
                float node_612 = (saturate((node_2551.g+node_5228.g))*_FireMask_var.g);
                float _StepValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _StepValue );
                float node_7770 = (1.0 - _StepValue_var);
                clip((1.0 - step(node_612,node_7770)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
