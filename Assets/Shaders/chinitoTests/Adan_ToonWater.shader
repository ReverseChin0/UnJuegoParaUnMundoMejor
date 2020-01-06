// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33457,y:32723,varname:node_3138,prsc:2|custl-1192-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31832,y:32461,ptovrint:False,ptlb:SurfaceColor,ptin:_SurfaceColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2104842,c2:0.5841166,c3:0.8113208,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:2990,x:31764,y:32774,varname:node_2990,prsc:2|DIST-5192-OUT;n:type:ShaderForge.SFN_Slider,id:5192,x:31441,y:32774,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:node_5192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4083763,max:10;n:type:ShaderForge.SFN_Lerp,id:1026,x:32124,y:32474,varname:node_1026,prsc:2|A-7241-RGB,B-60-RGB,T-2549-OUT;n:type:ShaderForge.SFN_Color,id:60,x:31832,y:32623,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:node_60,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843138,c4:1;n:type:ShaderForge.SFN_Clamp01,id:2549,x:31943,y:32774,varname:node_2549,prsc:2|IN-2990-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9453,x:31808,y:33058,varname:node_9453,prsc:2|DIST-2732-OUT;n:type:ShaderForge.SFN_Slider,id:2732,x:31478,y:33058,ptovrint:False,ptlb:ShoreBlend,ptin:_ShoreBlend,varname:node_2732,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4336668,max:2;n:type:ShaderForge.SFN_Color,id:4856,x:32785,y:32888,ptovrint:False,ptlb:ShoreColor,ptin:_ShoreColor,varname:node_4856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9339623,c2:0.5418743,c3:0.5418743,c4:1;n:type:ShaderForge.SFN_Lerp,id:1192,x:33002,y:32873,varname:node_1192,prsc:2|A-8328-OUT,B-4856-RGB,T-9488-OUT;n:type:ShaderForge.SFN_Tex2d,id:8497,x:31832,y:31938,varname:node_8497,prsc:2,tex:a185bf824c7042642b43847069b3c2c0,ntxv:0,isnm:False|UVIN-1516-UVOUT,TEX-8241-TEX;n:type:ShaderForge.SFN_Slider,id:613,x:31908,y:31812,ptovrint:False,ptlb:CausticsWidth,ptin:_CausticsWidth,varname:node_613,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.08,cur:0.2692855,max:0.6;n:type:ShaderForge.SFN_TexCoord,id:1383,x:31401,y:31928,varname:node_1383,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:1516,x:31646,y:31928,varname:node_1516,prsc:2,spu:1,spv:1|UVIN-1383-UVOUT,DIST-3057-OUT;n:type:ShaderForge.SFN_Time,id:2554,x:30868,y:31573,varname:node_2554,prsc:2;n:type:ShaderForge.SFN_Slider,id:6361,x:30935,y:31816,ptovrint:False,ptlb:WaterSpeed,ptin:_WaterSpeed,varname:node_6361,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.625871,max:3;n:type:ShaderForge.SFN_Multiply,id:9539,x:31262,y:31738,varname:node_9539,prsc:2|A-2554-TSL,B-6361-OUT;n:type:ShaderForge.SFN_Lerp,id:3412,x:32501,y:32443,varname:node_3412,prsc:2|A-1026-OUT,B-9356-RGB,T-1444-OUT;n:type:ShaderForge.SFN_Color,id:9356,x:32124,y:32623,ptovrint:False,ptlb:CausticsColor,ptin:_CausticsColor,varname:node_9356,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:4432,x:31821,y:32342,varname:FoamMask,prsc:2|IN-8292-OUT;n:type:ShaderForge.SFN_Panner,id:1267,x:31228,y:32353,varname:node_1267,prsc:2,spu:1,spv:1|UVIN-4987-OUT,DIST-320-OUT;n:type:ShaderForge.SFN_Get,id:3057,x:31401,y:31836,varname:node_3057,prsc:2|IN-3255-OUT;n:type:ShaderForge.SFN_Set,id:3255,x:31425,y:31738,varname:WaterSpeed,prsc:2|IN-9539-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8241,x:30899,y:31948,ptovrint:False,ptlb:CaustiTexture,ptin:_CaustiTexture,varname:node_8241,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a185bf824c7042642b43847069b3c2c0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1426,x:31432,y:32370,varname:node_1426,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-1267-UVOUT,TEX-3508-TEX;n:type:ShaderForge.SFN_Step,id:1444,x:32034,y:31938,varname:node_1444,prsc:2|A-613-OUT,B-8497-R;n:type:ShaderForge.SFN_Step,id:8292,x:31671,y:32342,varname:node_8292,prsc:2|A-3674-OUT,B-1426-R;n:type:ShaderForge.SFN_Multiply,id:4987,x:30908,y:32355,varname:node_4987,prsc:2|A-8379-UVOUT,B-350-OUT;n:type:ShaderForge.SFN_Slider,id:350,x:30540,y:32407,ptovrint:False,ptlb:FoamSize,ptin:_FoamSize,varname:node_350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Get,id:3674,x:31463,y:32295,varname:node_3674,prsc:2|IN-1760-OUT;n:type:ShaderForge.SFN_Set,id:1760,x:32258,y:31815,varname:CausticsWidth,prsc:2|IN-613-OUT;n:type:ShaderForge.SFN_TexCoord,id:8379,x:30620,y:32255,varname:node_8379,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1677,x:31262,y:31494,varname:node_1677,prsc:2|A-1154-OUT,B-2554-TSL;n:type:ShaderForge.SFN_Set,id:1033,x:31457,y:31494,varname:FoamSpeed,prsc:2|IN-1677-OUT;n:type:ShaderForge.SFN_Slider,id:1154,x:30821,y:31429,ptovrint:False,ptlb:FoamSpeed,ptin:_FoamSpeed,varname:node_1154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Get,id:320,x:31042,y:32417,varname:node_320,prsc:2|IN-1033-OUT;n:type:ShaderForge.SFN_Clamp01,id:9488,x:32501,y:33054,varname:node_9488,prsc:2|IN-5058-OUT;n:type:ShaderForge.SFN_ScreenPos,id:3331,x:32304,y:32643,varname:node_3331,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:8624,x:32626,y:32643,varname:node_8624,prsc:2|UVIN-7362-OUT;n:type:ShaderForge.SFN_Blend,id:8328,x:32826,y:32625,varname:node_8328,prsc:2,blmd:10,clmp:True|SRC-3412-OUT,DST-8624-RGB;n:type:ShaderForge.SFN_Subtract,id:6820,x:32000,y:33058,varname:node_6820,prsc:2|A-9453-OUT,B-1478-OUT;n:type:ShaderForge.SFN_OneMinus,id:6693,x:32159,y:33058,varname:node_6693,prsc:2|IN-6820-OUT;n:type:ShaderForge.SFN_Get,id:1478,x:31808,y:33206,varname:node_1478,prsc:2|IN-4432-OUT;n:type:ShaderForge.SFN_Subtract,id:5058,x:32354,y:33173,varname:node_5058,prsc:2|A-6693-OUT,B-9453-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3508,x:30900,y:32121,ptovrint:False,ptlb:FoamTex,ptin:_FoamTex,varname:node_3508,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:6344,x:32520,y:31940,varname:node_6344,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6083,x:32916,y:32063,ptovrint:False,ptlb:WaterNoise,ptin:_WaterNoise,varname:node_6083,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:90edb7c904f5dfc4e83e8b86f15a71d3,ntxv:0,isnm:False|UVIN-3823-UVOUT;n:type:ShaderForge.SFN_Append,id:2838,x:33087,y:32080,varname:node_2838,prsc:2|A-6083-R,B-6083-G;n:type:ShaderForge.SFN_RemapRange,id:372,x:33259,y:32080,varname:node_372,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2838-OUT;n:type:ShaderForge.SFN_Multiply,id:1254,x:33433,y:32084,varname:node_1254,prsc:2|A-372-OUT,B-5382-OUT;n:type:ShaderForge.SFN_Slider,id:5382,x:33123,y:32275,ptovrint:False,ptlb:RefractionIntensity,ptin:_RefractionIntensity,varname:node_5382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.2;n:type:ShaderForge.SFN_Set,id:8836,x:33590,y:32084,varname:GrayScaleRefraction,prsc:2|IN-1254-OUT;n:type:ShaderForge.SFN_Get,id:440,x:32304,y:32795,varname:node_440,prsc:2|IN-8836-OUT;n:type:ShaderForge.SFN_Add,id:7362,x:32470,y:32643,varname:node_7362,prsc:2|A-3331-UVOUT,B-440-OUT;n:type:ShaderForge.SFN_Panner,id:3823,x:32751,y:32063,varname:node_3823,prsc:2,spu:1,spv:1|UVIN-6344-UVOUT,DIST-7465-OUT;n:type:ShaderForge.SFN_Slider,id:628,x:30800,y:31723,ptovrint:False,ptlb:RefractionSpeed,ptin:_RefractionSpeed,varname:node_628,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Multiply,id:3104,x:31262,y:31614,varname:node_3104,prsc:2|A-2554-TSL,B-628-OUT;n:type:ShaderForge.SFN_Get,id:7465,x:32520,y:32098,varname:node_7465,prsc:2|IN-7061-OUT;n:type:ShaderForge.SFN_Set,id:7061,x:31472,y:31614,varname:RefractionSpeed,prsc:2|IN-3104-OUT;proporder:3508-8241-6083-7241-60-4856-9356-6361-5192-2732-613-350-1154-5382-628;pass:END;sub:END;*/

Shader "Shader Forge/PEV_07_ToonWater" {
    Properties {
        _FoamTex ("FoamTex", 2D) = "white" {}
        _CaustiTexture ("CaustiTexture", 2D) = "white" {}
        _WaterNoise ("WaterNoise", 2D) = "white" {}
        _SurfaceColor ("SurfaceColor", Color) = (0.2104842,0.5841166,0.8113208,1)
        _DepthColor ("DepthColor", Color) = (0.07843138,0.3921569,0.7843138,1)
        _ShoreColor ("ShoreColor", Color) = (0.9339623,0.5418743,0.5418743,1)
        _CausticsColor ("CausticsColor", Color) = (1,1,1,1)
        _WaterSpeed ("WaterSpeed", Range(0, 3)) = 1.625871
        _DepthBlend ("DepthBlend", Range(0, 10)) = 0.4083763
        _ShoreBlend ("ShoreBlend", Range(0, 2)) = 0.4336668
        _CausticsWidth ("CausticsWidth", Range(0.08, 0.6)) = 0.2692855
        _FoamSize ("FoamSize", Range(0, 10)) = 1
        _FoamSpeed ("FoamSpeed", Range(0, 5)) = 2
        _RefractionIntensity ("RefractionIntensity", Range(0, 0.2)) = 0
        _RefractionSpeed ("RefractionSpeed", Range(0, 3)) = 0
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _SurfaceColor;
            uniform float _DepthBlend;
            uniform float4 _DepthColor;
            uniform float _ShoreBlend;
            uniform float4 _ShoreColor;
            uniform float _CausticsWidth;
            uniform float _WaterSpeed;
            uniform float4 _CausticsColor;
            uniform sampler2D _CaustiTexture; uniform float4 _CaustiTexture_ST;
            uniform float _FoamSize;
            uniform float _FoamSpeed;
            uniform sampler2D _FoamTex; uniform float4 _FoamTex_ST;
            uniform sampler2D _WaterNoise; uniform float4 _WaterNoise_ST;
            uniform float _RefractionIntensity;
            uniform float _RefractionSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 node_2554 = _Time;
                float WaterSpeed = (node_2554.r*_WaterSpeed);
                float2 node_1516 = (i.uv0+WaterSpeed*float2(1,1));
                float4 node_8497 = tex2D(_CaustiTexture,TRANSFORM_TEX(node_1516, _CaustiTexture));
                float RefractionSpeed = (node_2554.r*_RefractionSpeed);
                float2 node_3823 = (i.uv0+RefractionSpeed*float2(1,1));
                float4 _WaterNoise_var = tex2D(_WaterNoise,TRANSFORM_TEX(node_3823, _WaterNoise));
                float2 GrayScaleRefraction = ((float2(_WaterNoise_var.r,_WaterNoise_var.g)*2.0+-1.0)*_RefractionIntensity);
                float node_9453 = saturate((sceneZ-partZ)/_ShoreBlend);
                float CausticsWidth = _CausticsWidth;
                float FoamSpeed = (_FoamSpeed*node_2554.r);
                float2 node_1267 = ((i.uv0*_FoamSize)+FoamSpeed*float2(1,1));
                float4 node_1426 = tex2D(_FoamTex,TRANSFORM_TEX(node_1267, _FoamTex));
                float FoamMask = step(CausticsWidth,node_1426.r);
                float3 finalColor = lerp(saturate(( tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb > 0.5 ? (1.0-(1.0-2.0*(tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb-0.5))*(1.0-lerp(lerp(_SurfaceColor.rgb,_DepthColor.rgb,saturate(saturate((sceneZ-partZ)/_DepthBlend))),_CausticsColor.rgb,step(_CausticsWidth,node_8497.r)))) : (2.0*tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb*lerp(lerp(_SurfaceColor.rgb,_DepthColor.rgb,saturate(saturate((sceneZ-partZ)/_DepthBlend))),_CausticsColor.rgb,step(_CausticsWidth,node_8497.r))) )),_ShoreColor.rgb,saturate(((1.0 - (node_9453-FoamMask))-node_9453)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
