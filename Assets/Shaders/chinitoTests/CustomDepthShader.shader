// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32920,y:32966,varname:node_3138,prsc:2|normal-38-OUT,custl-8184-OUT,alpha-8771-OUT;n:type:ShaderForge.SFN_Depth,id:5419,x:32345,y:33344,varname:node_5419,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:8771,x:32514,y:33344,varname:node_8771,prsc:2|IN-5419-OUT;n:type:ShaderForge.SFN_Tex2d,id:5662,x:31938,y:33381,ptovrint:False,ptlb:Main,ptin:_Main,varname:node_5662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:21f1d9bf18194b643bf8331f16597265,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6971,x:32450,y:32582,ptovrint:False,ptlb:normal,ptin:_normal,varname:node_6971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cba96fb1476919342b0480dd2d7c0e3b,ntxv:3,isnm:True;n:type:ShaderForge.SFN_LightAttenuation,id:6023,x:31292,y:33263,varname:node_6023,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6229,x:31292,y:32988,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:1463,x:31292,y:33130,varname:node_1463,prsc:2;n:type:ShaderForge.SFN_Dot,id:3732,x:31494,y:33060,varname:node_3732,prsc:2,dt:1|A-6229-OUT,B-1463-OUT;n:type:ShaderForge.SFN_Multiply,id:2563,x:31654,y:33201,varname:node_2563,prsc:2|A-3732-OUT,B-6023-OUT;n:type:ShaderForge.SFN_Set,id:7931,x:32324,y:33487,varname:MainTex,prsc:2|IN-725-OUT;n:type:ShaderForge.SFN_NormalVector,id:7292,x:31084,y:32338,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:9308,x:31276,y:32515,varname:node_9308,prsc:2;n:type:ShaderForge.SFN_Dot,id:5785,x:31483,y:32436,varname:node_5785,prsc:2,dt:0|A-4348-OUT,B-9308-OUT;n:type:ShaderForge.SFN_OneMinus,id:5522,x:31634,y:32436,varname:node_5522,prsc:2|IN-5785-OUT;n:type:ShaderForge.SFN_Exp,id:61,x:31811,y:32618,varname:node_61,prsc:2,et:0|IN-7022-OUT;n:type:ShaderForge.SFN_Power,id:2823,x:31811,y:32458,varname:node_2823,prsc:2|VAL-5522-OUT,EXP-61-OUT;n:type:ShaderForge.SFN_Slider,id:7022,x:31483,y:32780,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:_RimPower_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.550959,max:2;n:type:ShaderForge.SFN_Color,id:1301,x:31992,y:32878,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:_RimColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7921569,c2:0,c3:0.04175048,c4:1;n:type:ShaderForge.SFN_Multiply,id:4363,x:32038,y:32458,varname:node_4363,prsc:2|A-2823-OUT,B-632-OUT,C-391-OUT;n:type:ShaderForge.SFN_Slider,id:391,x:31780,y:32281,ptovrint:False,ptlb:RimIntensity,ptin:_RimIntensity,varname:_RimIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.213953,max:2;n:type:ShaderForge.SFN_Set,id:8527,x:32212,y:32458,varname:RimLights,prsc:2|IN-4363-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:632,x:32233,y:32767,ptovrint:False,ptlb:UseRimLightColor,ptin:_UseRimLightColor,varname:_RimLightColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7124-RGB,B-1301-RGB;n:type:ShaderForge.SFN_LightColor,id:7124,x:31992,y:32730,varname:node_7124,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:4348,x:31276,y:32306,ptovrint:False,ptlb:usePerturbedNormal,ptin:_usePerturbedNormal,varname:_usePerturbedNormal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-964-OUT,B-7292-OUT;n:type:ShaderForge.SFN_NormalVector,id:964,x:31084,y:32186,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:9748,x:31518,y:32609,cmnt:El fresnel hace lo mismo que el view dir dot one minus y power,varname:node_9748,prsc:2;n:type:ShaderForge.SFN_Get,id:6632,x:32126,y:33165,varname:node_6632,prsc:2|IN-7931-OUT;n:type:ShaderForge.SFN_Add,id:8184,x:32420,y:33193,varname:node_8184,prsc:2|A-6632-OUT,B-9862-OUT;n:type:ShaderForge.SFN_Get,id:9862,x:32126,y:33228,varname:node_9862,prsc:2|IN-8527-OUT;n:type:ShaderForge.SFN_Vector3,id:9235,x:32450,y:32466,varname:node_9235,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:9560,x:32707,y:32578,varname:node_9560,prsc:2|A-9235-OUT,B-6971-RGB,T-1734-OUT;n:type:ShaderForge.SFN_Slider,id:1734,x:32450,y:32766,ptovrint:False,ptlb:NormaliIntensity,ptin:_NormaliIntensity,varname:node_1734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Set,id:3491,x:32881,y:32578,varname:Normal,prsc:2|IN-9560-OUT;n:type:ShaderForge.SFN_Get,id:38,x:32686,y:33038,varname:node_38,prsc:2|IN-3491-OUT;n:type:ShaderForge.SFN_LightColor,id:950,x:31292,y:33421,varname:node_950,prsc:2;n:type:ShaderForge.SFN_Set,id:727,x:31814,y:33237,varname:ShadowData,prsc:2|IN-2563-OUT;n:type:ShaderForge.SFN_Get,id:6171,x:31292,y:33561,varname:node_6171,prsc:2|IN-727-OUT;n:type:ShaderForge.SFN_Multiply,id:6288,x:31535,y:33475,varname:node_6288,prsc:2|A-950-RGB,B-6171-OUT;n:type:ShaderForge.SFN_Set,id:9873,x:31704,y:33475,varname:DiffuseLight,prsc:2|IN-6288-OUT;n:type:ShaderForge.SFN_Color,id:7104,x:31938,y:33561,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7104,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:725,x:32162,y:33487,varname:node_725,prsc:2|A-5662-RGB,B-7104-RGB,C-2563-OUT,D-6288-OUT;n:type:ShaderForge.SFN_Set,id:302,x:31644,y:33056,varname:DirectLight,prsc:2|IN-3732-OUT;proporder:5662-6971-7022-1301-391-632-4348-1734-7104;pass:END;sub:END;*/

Shader "Shader Forge/PEV_17_ChromaKey" {
    Properties {
        _Main ("Main", 2D) = "white" {}
        _normal ("normal", 2D) = "bump" {}
        _RimPower ("RimPower", Range(0, 2)) = 1.550959
        _RimColor ("RimColor", Color) = (0.7921569,0,0.04175048,1)
        _RimIntensity ("RimIntensity", Range(0, 2)) = 1.213953
        [MaterialToggle] _UseRimLightColor ("UseRimLightColor", Float ) = 0
        [MaterialToggle] _usePerturbedNormal ("usePerturbedNormal", Float ) = 0
        _NormaliIntensity ("NormaliIntensity", Range(0, 2)) = 1
        _MainColor ("MainColor", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _Main; uniform float4 _Main_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform float _RimIntensity;
            uniform fixed _UseRimLightColor;
            uniform fixed _usePerturbedNormal;
            uniform float _NormaliIntensity;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
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
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float3 Normal = lerp(float3(0,0,1),_normal_var.rgb,_NormaliIntensity);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float4 _Main_var = tex2D(_Main,TRANSFORM_TEX(i.uv0, _Main));
                float node_3732 = max(0,dot(normalDirection,lightDirection));
                float node_2563 = (node_3732*attenuation);
                float ShadowData = node_2563;
                float3 node_6288 = (_LightColor0.rgb*ShadowData);
                float3 MainTex = (_Main_var.rgb*_MainColor.rgb*node_2563*node_6288);
                float3 RimLights = (pow((1.0 - dot(lerp( i.normalDir, normalDirection, _usePerturbedNormal ),viewDirection)),exp(_RimPower))*lerp( _LightColor0.rgb, _RimColor.rgb, _UseRimLightColor )*_RimIntensity);
                float3 finalColor = (MainTex+RimLights);
                return fixed4(finalColor,saturate(partZ));
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
            #ifndef UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif //UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _Main; uniform float4 _Main_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform float _RimIntensity;
            uniform fixed _UseRimLightColor;
            uniform fixed _usePerturbedNormal;
            uniform float _NormaliIntensity;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float3 Normal = lerp(float3(0,0,1),_normal_var.rgb,_NormaliIntensity);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float4 _Main_var = tex2D(_Main,TRANSFORM_TEX(i.uv0, _Main));
                float node_3732 = max(0,dot(normalDirection,lightDirection));
                float node_2563 = (node_3732*attenuation);
                float ShadowData = node_2563;
                float3 node_6288 = (_LightColor0.rgb*ShadowData);
                float3 MainTex = (_Main_var.rgb*_MainColor.rgb*node_2563*node_6288);
                float3 RimLights = (pow((1.0 - dot(lerp( i.normalDir, normalDirection, _usePerturbedNormal ),viewDirection)),exp(_RimPower))*lerp( _LightColor0.rgb, _RimColor.rgb, _UseRimLightColor )*_RimIntensity);
                float3 finalColor = (MainTex+RimLights);
                return fixed4(finalColor * saturate(partZ),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
