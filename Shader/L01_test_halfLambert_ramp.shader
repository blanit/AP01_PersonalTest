// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32971,y:32772,varname:node_3138,prsc:2|emission-4342-RGB,olwid-7072-OUT,olcol-2941-RGB;n:type:ShaderForge.SFN_Dot,id:3078,x:32208,y:32850,varname:node_3078,prsc:2,dt:0|A-7617-OUT,B-4412-OUT;n:type:ShaderForge.SFN_NormalVector,id:7617,x:31909,y:32762,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:4412,x:31909,y:32928,varname:node_4412,prsc:2;n:type:ShaderForge.SFN_Multiply,id:539,x:32411,y:32850,varname:node_539,prsc:2|A-3078-OUT,B-3235-OUT;n:type:ShaderForge.SFN_Add,id:9510,x:32574,y:32850,varname:node_9510,prsc:2|A-539-OUT,B-3235-OUT;n:type:ShaderForge.SFN_Vector1,id:3235,x:32208,y:33003,varname:node_3235,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:746,x:32146,y:33130,varname:node_746,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:4796,x:32574,y:32992,varname:node_4796,prsc:2|A-9510-OUT,B-746-OUT;n:type:ShaderForge.SFN_Tex2d,id:4342,x:32574,y:33146,ptovrint:False,ptlb:node_4342,ptin:_node_4342,varname:_node_4342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8816f82af9657d64f86fafbb382a4678,ntxv:0,isnm:False|UVIN-4796-OUT;n:type:ShaderForge.SFN_Vector1,id:7072,x:32771,y:33167,varname:node_7072,prsc:2,v1:0.015;n:type:ShaderForge.SFN_Color,id:2941,x:32757,y:33282,ptovrint:False,ptlb:node_2941,ptin:_node_2941,varname:node_2941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4039216,c2:0.1137255,c3:0.2745098,c4:1;proporder:4342-2941;pass:END;sub:END;*/

Shader "AP01/L02/L01_test_halfLambert_ramp" {
    Properties {
        _node_4342 ("node_4342", 2D) = "white" {}
        _node_2941 ("node_2941", Color) = (0.4039216,0.1137255,0.2745098,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_2941)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.015,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _node_2941_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_2941 );
                return fixed4(_node_2941_var.rgb,0);
            }
            ENDCG
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4342; uniform float4 _node_4342_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_3235 = 0.5;
                float2 node_4796 = float2(((dot(i.normalDir,lightDirection)*node_3235)+node_3235),0.2);
                float4 _node_4342_var = tex2D(_node_4342,TRANSFORM_TEX(node_4796, _node_4342));
                float3 emissive = _node_4342_var.rgb;
                float3 finalColor = emissive;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4342; uniform float4 _node_4342_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
