Shader "AP01/L07/L07_test_3ColAmbient" {
    Properties {
        _Occlusion ("AO贴图", 2d) = "white" {} //AO图默认颜色应为白色
        _EnvUpCol ("环境天顶颜色", COLOR) = (1.0, 1.0, 1.0, 1.0)
        _EnvSideCol ("环境水平颜色", COLOR) = (0.5, 0.5, 0.5, 1.0)
        _EnvDownCol ("环境地表颜色", COLOR) = (1.0, 1.0, 1.0, 1.0)
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
            
            uniform sampler2D _Occlusion;
            uniform float3 _EnvUpCol;
            uniform float3 _EnvSideCol;
            uniform float3 _EnvDownCol;

            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 uv0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;               
                float3 nDirWS : TEXCOORD0;
                float2 uv : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.nDirWS = UnityObjectToWorldNormal( v.normal );
                o.uv = v.uv0;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 nDir = i.nDirWS;

                float upMask = max(0.0, nDir.g);
                float downMask = max(0.0, -nDir.g);
                float sideMask = 1.0 - upMask - downMask;
                
                float3 envCol = _EnvUpCol * upMask + _EnvDownCol * downMask + sideMask * _EnvSideCol;

                float occlusion = tex2D(_Occlusion, i.uv);

                float3 envLighting = envCol * occlusion;
                
                return float4(envLighting, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}