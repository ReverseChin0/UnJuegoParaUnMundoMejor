// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32439,y:33071,varname:node_3138,prsc:2|custl-37-OUT;n:type:ShaderForge.SFN_Multiply,id:3215,x:29741,y:32229,varname:node_3215,prsc:2|A-7629-TSL,B-7201-OUT;n:type:ShaderForge.SFN_Multiply,id:7299,x:29741,y:32403,varname:node_7299,prsc:2|A-7629-TSL,B-8205-OUT;n:type:ShaderForge.SFN_Multiply,id:4421,x:29741,y:32579,varname:node_4421,prsc:2|A-7629-TSL,B-4177-OUT;n:type:ShaderForge.SFN_Set,id:9396,x:29892,y:32229,varname:FoamSpeed,prsc:2|IN-3215-OUT;n:type:ShaderForge.SFN_Set,id:4609,x:29892,y:32403,varname:RefractionSpeed,prsc:2|IN-7299-OUT;n:type:ShaderForge.SFN_Set,id:8765,x:29892,y:32579,varname:WaterSpeed,prsc:2|IN-4421-OUT;n:type:ShaderForge.SFN_Slider,id:7201,x:29408,y:32230,ptovrint:False,ptlb:FoamSpeed,ptin:_FoamSpeed,varname:node_7201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Slider,id:8205,x:29408,y:32403,ptovrint:False,ptlb:RefractionSpeed,ptin:_RefractionSpeed,varname:node_8205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Slider,id:4177,x:29391,y:32645,ptovrint:False,ptlb:WaterSpeed,ptin:_WaterSpeed,varname:node_4177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Time,id:7629,x:29452,y:32486,varname:node_7629,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6219,x:29349,y:33213,varname:node_6219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Get,id:1309,x:29349,y:33386,varname:node_1309,prsc:2|IN-4609-OUT;n:type:ShaderForge.SFN_Panner,id:8416,x:29552,y:33284,varname:node_8416,prsc:2,spu:1,spv:1|UVIN-6219-UVOUT,DIST-1309-OUT;n:type:ShaderForge.SFN_Tex2d,id:7062,x:29720,y:33284,ptovrint:False,ptlb:WaterNoise,ptin:_WaterNoise,varname:node_7062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8416-UVOUT;n:type:ShaderForge.SFN_Append,id:9201,x:29898,y:33301,varname:node_9201,prsc:2|A-7062-R,B-7062-G;n:type:ShaderForge.SFN_RemapRange,id:5325,x:30060,y:33301,varname:node_5325,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9201-OUT;n:type:ShaderForge.SFN_Multiply,id:7897,x:30238,y:33301,varname:node_7897,prsc:2|A-5325-OUT,B-3377-OUT;n:type:ShaderForge.SFN_Slider,id:3377,x:29985,y:33499,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:node_3377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05551695,max:0.2;n:type:ShaderForge.SFN_Set,id:3876,x:30389,y:33301,varname:GrayScaleRefraction,prsc:2|IN-7897-OUT;n:type:ShaderForge.SFN_TexCoord,id:1923,x:29425,y:32795,varname:node_1923,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5822,x:29656,y:32795,varname:node_5822,prsc:2|A-1923-UVOUT,B-6201-OUT;n:type:ShaderForge.SFN_Panner,id:9852,x:29884,y:32795,varname:node_9852,prsc:2,spu:1,spv:1|UVIN-5822-OUT,DIST-1644-OUT;n:type:ShaderForge.SFN_Slider,id:6201,x:29332,y:32967,ptovrint:False,ptlb:FoamSize,ptin:_FoamSize,varname:node_6201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:591,x:30099,y:32816,varname:node_591,prsc:2,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False|UVIN-9852-UVOUT,TEX-1759-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1759,x:29884,y:32991,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_1759,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:931d3ab4ca37da04fbc326fa72ff808b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:1644,x:29680,y:32974,varname:node_1644,prsc:2|IN-9396-OUT;n:type:ShaderForge.SFN_Step,id:7376,x:30327,y:32816,varname:node_7376,prsc:2|A-4935-OUT,B-591-R;n:type:ShaderForge.SFN_Set,id:3750,x:30502,y:32816,varname:FoamMask,prsc:2|IN-7376-OUT;n:type:ShaderForge.SFN_Get,id:4935,x:30115,y:32749,varname:node_4935,prsc:2|IN-2001-OUT;n:type:ShaderForge.SFN_TexCoord,id:4125,x:30469,y:33032,varname:node_4125,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:796,x:30649,y:33032,varname:node_796,prsc:2,spu:1,spv:1|UVIN-4125-UVOUT,DIST-5929-OUT;n:type:ShaderForge.SFN_Get,id:5929,x:30458,y:33187,varname:node_5929,prsc:2|IN-8765-OUT;n:type:ShaderForge.SFN_Tex2d,id:3988,x:30812,y:33032,varname:node_3988,prsc:2,tex:a185bf824c7042642b43847069b3c2c0,ntxv:0,isnm:False|UVIN-796-UVOUT,TEX-8955-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8955,x:30649,y:33203,ptovrint:False,ptlb:CaustiTexture,ptin:_CaustiTexture,varname:node_8955,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a185bf824c7042642b43847069b3c2c0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:5767,x:31006,y:33032,varname:node_5767,prsc:2|A-1760-OUT,B-3988-R;n:type:ShaderForge.SFN_Slider,id:1760,x:30620,y:32926,ptovrint:False,ptlb:CausticsWidth,ptin:_CausticsWidth,varname:node_1760,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.08,cur:0.2666667,max:0.6;n:type:ShaderForge.SFN_Lerp,id:5738,x:31157,y:32635,varname:node_5738,prsc:2|A-5025-RGB,B-4905-RGB,T-9269-OUT;n:type:ShaderForge.SFN_Color,id:5025,x:30943,y:32381,ptovrint:False,ptlb:SurfaceColor,ptin:_SurfaceColor,varname:node_5025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2117647,c2:0.5843138,c3:0.8117648,c4:1;n:type:ShaderForge.SFN_Color,id:4905,x:30943,y:32563,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:node_4905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843138,c4:1;n:type:ShaderForge.SFN_Set,id:2001,x:30901,y:32863,varname:GetCausticWidth,prsc:2|IN-1760-OUT;n:type:ShaderForge.SFN_Slider,id:7491,x:30294,y:32547,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:node_7491,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_DepthBlend,id:2895,x:30608,y:32547,varname:node_2895,prsc:2|DIST-7491-OUT;n:type:ShaderForge.SFN_Clamp01,id:9269,x:30765,y:32547,varname:node_9269,prsc:2|IN-2895-OUT;n:type:ShaderForge.SFN_Lerp,id:2104,x:31415,y:32876,varname:node_2104,prsc:2|A-5738-OUT,B-1467-RGB,T-5767-OUT;n:type:ShaderForge.SFN_Color,id:1467,x:31086,y:32851,ptovrint:False,ptlb:CausticsColor,ptin:_CausticsColor,varname:node_1467,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ScreenPos,id:7290,x:31189,y:33067,varname:node_7290,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:8341,x:31364,y:33067,varname:node_8341,prsc:2|A-7290-UVOUT,B-8622-OUT;n:type:ShaderForge.SFN_Get,id:8622,x:31189,y:33211,varname:node_8622,prsc:2|IN-3876-OUT;n:type:ShaderForge.SFN_SceneColor,id:7218,x:31524,y:33067,varname:node_7218,prsc:2|UVIN-8341-OUT;n:type:ShaderForge.SFN_Blend,id:2278,x:31708,y:33049,varname:node_2278,prsc:2,blmd:10,clmp:True|SRC-2104-OUT,DST-7218-RGB;n:type:ShaderForge.SFN_Slider,id:5940,x:30815,y:33383,ptovrint:False,ptlb:ShoreBlend,ptin:_ShoreBlend,varname:node_5940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:2;n:type:ShaderForge.SFN_DepthBlend,id:5951,x:31146,y:33383,varname:node_5951,prsc:2|DIST-5940-OUT;n:type:ShaderForge.SFN_Subtract,id:6565,x:31325,y:33383,varname:node_6565,prsc:2|A-5951-OUT,B-282-OUT;n:type:ShaderForge.SFN_Get,id:282,x:31125,y:33540,varname:node_282,prsc:2|IN-3750-OUT;n:type:ShaderForge.SFN_OneMinus,id:4145,x:31485,y:33383,varname:node_4145,prsc:2|IN-6565-OUT;n:type:ShaderForge.SFN_Subtract,id:1660,x:31646,y:33383,varname:node_1660,prsc:2|A-4145-OUT,B-5951-OUT;n:type:ShaderForge.SFN_Clamp01,id:3525,x:31802,y:33383,varname:node_3525,prsc:2|IN-1660-OUT;n:type:ShaderForge.SFN_Lerp,id:37,x:32157,y:33256,varname:node_37,prsc:2|A-2278-OUT,B-7496-RGB,T-3525-OUT;n:type:ShaderForge.SFN_Color,id:7496,x:31840,y:33237,ptovrint:False,ptlb:ShoreColor,ptin:_ShoreColor,varname:node_7496,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7216981,c2:0.8686488,c3:1,c4:1;proporder:7201-8205-4177-7062-3377-6201-1759-8955-1760-5025-4905-7491-1467-5940-7496;pass:END;sub:END;*/

Shader "Shader Forge/ToonWater" {
    Properties {
        _FoamSpeed ("FoamSpeed", Range(0, 5)) = 1
        _RefractionSpeed ("RefractionSpeed", Range(0, 3)) = 1
        _WaterSpeed ("WaterSpeed", Range(0, 3)) = 1
        _WaterNoise ("WaterNoise", 2D) = "white" {}
        _RefractionIntensity ("Refraction Intensity", Range(0, 0.2)) = 0.05551695
        _FoamSize ("FoamSize", Range(0, 10)) = 1
        _Foam ("Foam", 2D) = "white" {}
        _CaustiTexture ("CaustiTexture", 2D) = "white" {}
        _CausticsWidth ("CausticsWidth", Range(0.08, 0.6)) = 0.2666667
        _SurfaceColor ("SurfaceColor", Color) = (0.2117647,0.5843138,0.8117648,1)
        _DepthColor ("DepthColor", Color) = (0.07843138,0.3921569,0.7843138,1)
        _DepthBlend ("DepthBlend", Range(0, 10)) = 0
        _CausticsColor ("CausticsColor", Color) = (1,1,1,1)
        _ShoreBlend ("ShoreBlend", Range(0, 2)) = 0.4
        _ShoreColor ("ShoreColor", Color) = (0.7216981,0.8686488,1,1)
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _WaterNoise; uniform float4 _WaterNoise_ST;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform sampler2D _CaustiTexture; uniform float4 _CaustiTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _RefractionSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _RefractionIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _FoamSize)
                UNITY_DEFINE_INSTANCED_PROP( float, _CausticsWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SurfaceColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DepthColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _DepthBlend)
                UNITY_DEFINE_INSTANCED_PROP( float4, _CausticsColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ShoreBlend)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ShoreColor)
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
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 _SurfaceColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SurfaceColor );
                float4 _DepthColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthColor );
                float _DepthBlend_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthBlend );
                float4 _CausticsColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CausticsColor );
                float _CausticsWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CausticsWidth );
                float4 node_7629 = _Time;
                float _WaterSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterSpeed );
                float WaterSpeed = (node_7629.r*_WaterSpeed_var);
                float2 node_796 = (i.uv0+WaterSpeed*float2(1,1));
                float4 node_3988 = tex2D(_CaustiTexture,TRANSFORM_TEX(node_796, _CaustiTexture));
                float _RefractionSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RefractionSpeed );
                float RefractionSpeed = (node_7629.r*_RefractionSpeed_var);
                float2 node_8416 = (i.uv0+RefractionSpeed*float2(1,1));
                float4 _WaterNoise_var = tex2D(_WaterNoise,TRANSFORM_TEX(node_8416, _WaterNoise));
                float _RefractionIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RefractionIntensity );
                float2 GrayScaleRefraction = ((float2(_WaterNoise_var.r,_WaterNoise_var.g)*2.0+-1.0)*_RefractionIntensity_var);
                float4 _ShoreColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShoreColor );
                float _ShoreBlend_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShoreBlend );
                float node_5951 = saturate((sceneZ-partZ)/_ShoreBlend_var);
                float GetCausticWidth = _CausticsWidth_var;
                float _FoamSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSpeed );
                float FoamSpeed = (node_7629.r*_FoamSpeed_var);
                float _FoamSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FoamSize );
                float2 node_9852 = ((i.uv0*_FoamSize_var)+FoamSpeed*float2(1,1));
                float4 node_591 = tex2D(_Foam,TRANSFORM_TEX(node_9852, _Foam));
                float FoamMask = step(GetCausticWidth,node_591.r);
                float3 finalColor = lerp(saturate(( tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb > 0.5 ? (1.0-(1.0-2.0*(tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb-0.5))*(1.0-lerp(lerp(_SurfaceColor_var.rgb,_DepthColor_var.rgb,saturate(saturate((sceneZ-partZ)/_DepthBlend_var))),_CausticsColor_var.rgb,step(_CausticsWidth_var,node_3988.r)))) : (2.0*tex2D( _GrabTexture, (sceneUVs.rg+GrayScaleRefraction)).rgb*lerp(lerp(_SurfaceColor_var.rgb,_DepthColor_var.rgb,saturate(saturate((sceneZ-partZ)/_DepthBlend_var))),_CausticsColor_var.rgb,step(_CausticsWidth_var,node_3988.r))) )),_ShoreColor_var.rgb,saturate(((1.0 - (node_5951-FoamMask))-node_5951)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
