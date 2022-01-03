Shader "AP01/L09/L09_test_Matcap" {
    Properties {
        _NormalMap ("法线贴图", 2D) = "bump" {}
        _Matcap ("Matcap", 2D) = "gray" {}
        _FresnelPow ("菲涅尔次幂", Range(0, 10)) = 1
        _EnvSpecInt ("环境镜面反射强度", Range(0, 5)) = 1
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
            
            uniform sampler2D _NormalMap;
            uniform sampler2D _Matcap;
            uniform float _FresnelPow;
            uniform float _EnvSpecInt;
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWS : TEXCOORD1;       // 世界顶点位置
                float3 nDirWS : TEXCOORD2;
                float3 tDirWS : TEXCOORD3;
                float3 bDirWS : TEXCOORD4;
            };
            VertexOutput vert(VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.uv0 = v.uv0;
                o.posWS = mul(unity_ObjectToWorld, v.vertex);
                o.nDirWS = UnityObjectToWorldNormal(v.normal);
                o.tDirWS = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
                o.bDirWS = normalize(cross(o.nDirWS, o.tDirWS) * v.tangent.w);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                // 向量准备
                float3 nDirTS = UnpackNormal(tex2D(_NormalMap, i.uv0));
                float3x3 TBN = float3x3(i.tDirWS, i.bDirWS, i.nDirWS);
                float3 nDirWS = normalize(mul(nDirTS, TBN));                        // 计算nDirVS 计算Fresnel
                float3 nDirVS = normalize(mul(UNITY_MATRIX_V, nDirWS));             // 计算MatcapUV
                float3 vDirWS = normalize(_WorldSpaceCameraPos.xyz - i.posWS.xyz);  // 计算Fresnel

                // 准备中间变量
                float2 matcapUV = nDirVS.rg * 0.5 + 0.5;
                float nDotv = dot(nDirWS, vDirWS);

                // 光照模型
                float3 matcap = tex2D(_Matcap, matcapUV);
                float fresnel = pow(max(0.0, 1.0 - nDotv), _FresnelPow);
                float3 envSpecLighting = matcap * fresnel * _EnvSpecInt;

                // 返回值
                return float4(envSpecLighting, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}