Shader "AP01/L05/L05_test_Phong"{
    Properties {
        _MainCol ("颜色", color) = (1.0, 1.0, 1.0, 1.0)
        _SpecularPow ("高光范围", range(1, 90)) = 30
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
            
            uniform float3 _MainCol;
            uniform float _SpecularPow;
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 posCS : SV_POSITION;
                float4 posWS : TEXCOORD0;
                float3 nDirWS : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                    o.posCS = UnityObjectToClipPos(v.vertex);
                    o.posWS = mul(unity_ObjectToWorld, v.vertex);
                    o.nDirWS = UnityObjectToWorldNormal(v.normal);
                return o;
            }
            
            float4 frag(VertexOutput i) : COLOR {

                float3 nDir = normalize(i.nDirWS);
                float3 lDir = _WorldSpaceLightPos0.xyz;
                float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS);
                float3 rDir = reflect(-lDir, nDir);
                //数学求反射反射方向过程 float3 rDir = normalize(2 * nDotl * nDir - lDir);
                
                float nDotl = dot(nDir, lDir);
                float rDotv = dot(rDir, vDir);

                float Lambert = max(0.0, nDotl);
                float Phong = pow(max(0.0, rDotv), _SpecularPow);
                float3 finalRGB = _MainCol * Lambert + Phong;

                return float4(finalRGB, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}

