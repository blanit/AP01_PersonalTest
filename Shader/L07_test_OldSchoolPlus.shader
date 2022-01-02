Shader "AP01/L07/L07_test_OldSchoolPlus" {
    Properties {
        _BaseCol ("基础色", COLOR) = (1.0, 1.0, 1.0, 1.0)      //基础色
        _SpecularRange ("高光范围", range(1, 90)) = 30         //高光范围
        _SpecularInt ("高光强度", range(0, 5)) = 1       //高光强度
        _LightCol ("光照颜色", COLOR) = (1.0, 1.0, 1.0, 1.0)   //光照颜色
        _LightInt ("光照强度", range(0, 10)) = 1         //光照强度
        
        _EnvUpCol ("环境天顶颜色", COLOR) = (1.0, 1.0, 1.0, 1.0)    //上方环境颜色
        _EnvSideCol ("环境水平颜色", COLOR) = (0.7, 0.7, 0.7, 1.0)  //侧面环境颜色
        _EnvDownCol ("环境地表颜色", COLOR) = (0.5, 0.5, 0.5, 1.0)  //下方环境颜色
        _Occlusion ("AO贴图", 2d) = "white" {}                     //AO贴图
        _EnvLightInt ("环境光强度", range(0, 2)) = 1                  //环境光强度


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
            #include "AutoLight.cginc"      // 使用Unity投影必须包含这两个库文件
            #include "Lighting.cginc"       // 同上
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            
            uniform float3 _BaseCol;            //基础色
            uniform float _SpecularRange;       //高光范围
            uniform float _SpecularInt;   //高光强度
            uniform float3 _LightCol;           //光照颜色
            uniform float _LightInt;      //光照强度

            uniform float3 _EnvUpCol;           //上方环境颜色
            uniform float3 _EnvSideCol;         //侧面环境颜色
            uniform float3 _EnvDownCol;         //下方环境颜色
            uniform sampler2D _Occlusion;       //AO贴图
            uniform float _EnvLightInt;         //环境光强度

            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 uv0 : TEXCOORD0;
            };
            
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                float4 posWS : TEXCOORD1;
                float3 nDirWS : TEXCOORD2;
                LIGHTING_COORDS(3,4)               
            };
            
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.posWS = mul(unity_ObjectToWorld, v.vertex);
                o.nDirWS = UnityObjectToWorldNormal( v.normal );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                o.uv = v.uv0;
                return o;
            }
            
            float4 frag(VertexOutput i) : COLOR {
                float3 nDir = normalize(i.nDirWS);
                float3 lDir = _WorldSpaceLightPos0.xyz;
                float3 rDir = reflect(-lDir, nDir);
                float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS);
                float shadow = LIGHT_ATTENUATION(i); 
                float EnvUpMask = max(0.0, nDir.g);
                float EnvDownMask = max(0.0, -nDir.g);
                float EnvSideMask = 1 - EnvUpMask - EnvDownMask;

                
                float nDotl = dot(nDir, lDir);
                float vDotr = dot(vDir, rDir);

                //光照模型（直接光照）
                float Lambert = max(0.0, nDotl);
                float Specular = max(0.0, vDotr);
                Specular = pow(Specular, _SpecularRange); 
                Specular *= _SpecularInt;
                float3 dirLighting = (_BaseCol * Lambert + Specular) * _LightInt * _LightCol * shadow;
                //光照模型（间接光照）
                float3 envCol = (EnvUpMask * _EnvUpCol + EnvSideMask * _EnvSideCol + EnvDownMask * _EnvDownCol);
                float occlusion = tex2D(_Occlusion, i.uv);
                float3 envLighting= envCol * _BaseCol * occlusion * _EnvLightInt;

                float3 finalRGB = dirLighting + envLighting;

                return float4(finalRGB, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}