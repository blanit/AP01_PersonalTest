// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33846,y:33240,varname:node_3138,prsc:2|emission-9542-OUT,olwid-7072-OUT,olcol-2941-RGB;n:type:ShaderForge.SFN_Dot,id:3078,x:32208,y:32850,varname:node_3078,prsc:2,dt:0|A-7617-OUT,B-4412-OUT;n:type:ShaderForge.SFN_NormalVector,id:7617,x:31909,y:32762,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:4412,x:31909,y:32928,varname:node_4412,prsc:2;n:type:ShaderForge.SFN_Multiply,id:539,x:32411,y:32850,varname:node_539,prsc:2|A-3078-OUT,B-3235-OUT;n:type:ShaderForge.SFN_Add,id:9510,x:32574,y:32850,varname:node_9510,prsc:2|A-539-OUT,B-3235-OUT;n:type:ShaderForge.SFN_Vector1,id:3235,x:32208,y:33003,varname:node_3235,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:746,x:32146,y:33130,varname:node_746,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:4796,x:32432,y:33059,varname:node_4796,prsc:2|A-9510-OUT,B-746-OUT;n:type:ShaderForge.SFN_Tex2d,id:4342,x:32626,y:33059,ptovrint:False,ptlb:node_4342,ptin:_node_4342,varname:_node_4342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:77ba2b5681f76de47a686f7c70142d90,ntxv:0,isnm:False|UVIN-4796-OUT;n:type:ShaderForge.SFN_Vector1,id:7072,x:33537,y:33624,varname:node_7072,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Color,id:2941,x:33537,y:33711,ptovrint:False,ptlb:node_2941,ptin:_node_2941,varname:node_2941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4039216,c2:0.1137255,c3:0.2745098,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3897,x:32537,y:33679,varname:node_3897,prsc:2|EXP-9316-OUT;n:type:ShaderForge.SFN_Blend,id:9818,x:32865,y:33730,varname:node_9818,prsc:2,blmd:6,clmp:True|SRC-4342-RGB,DST-9643-OUT;n:type:ShaderForge.SFN_Vector1,id:9316,x:32365,y:33713,varname:node_9316,prsc:2,v1:3;n:type:ShaderForge.SFN_Color,id:7836,x:32537,y:33832,ptovrint:False,ptlb:node_7836,ptin:_node_7836,varname:node_7836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.990077,c3:0.8349056,c4:1;n:type:ShaderForge.SFN_Blend,id:9643,x:32703,y:33730,varname:node_9643,prsc:2,blmd:1,clmp:True|SRC-3897-OUT,DST-7836-RGB;n:type:ShaderForge.SFN_LightVector,id:7859,x:31915,y:33239,varname:node_7859,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4062,x:31915,y:33390,prsc:2,pt:False;n:type:ShaderForge.SFN_Add,id:1074,x:32223,y:33245,varname:node_1074,prsc:2|A-7859-OUT,B-1181-OUT;n:type:ShaderForge.SFN_Dot,id:7782,x:32580,y:33245,varname:node_7782,prsc:2,dt:1|A-9094-OUT,B-4062-OUT;n:type:ShaderForge.SFN_Normalize,id:9094,x:32407,y:33245,varname:node_9094,prsc:2|IN-1074-OUT;n:type:ShaderForge.SFN_Step,id:1500,x:32856,y:33245,varname:node_1500,prsc:2|A-9202-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Vector1,id:9202,x:32693,y:33289,varname:node_9202,prsc:2,v1:0.996;n:type:ShaderForge.SFN_Lerp,id:9542,x:33537,y:33417,varname:node_9542,prsc:2|A-9818-OUT,B-317-RGB,T-1385-OUT;n:type:ShaderForge.SFN_Color,id:317,x:33080,y:33751,ptovrint:False,ptlb:node_317,ptin:_node_317,varname:node_317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8773585,c2:0.8649824,c3:0.7159576,c4:1;n:type:ShaderForge.SFN_Vector3,id:1181,x:32028,y:33295,varname:node_1181,prsc:2,v1:0.2,v2:0.05,v3:0.1;n:type:ShaderForge.SFN_LightVector,id:4195,x:31915,y:33550,varname:node_4195,prsc:2;n:type:ShaderForge.SFN_Add,id:4052,x:32231,y:33518,varname:node_4052,prsc:2|A-4195-OUT,B-8228-OUT;n:type:ShaderForge.SFN_Dot,id:9887,x:32588,y:33518,varname:node_9887,prsc:2,dt:1|A-6114-OUT,B-4028-OUT;n:type:ShaderForge.SFN_Normalize,id:6114,x:32415,y:33518,varname:node_6114,prsc:2|IN-4052-OUT;n:type:ShaderForge.SFN_Vector3,id:8228,x:32036,y:33568,varname:node_8228,prsc:2,v1:0.2,v2:0.35,v3:0.05;n:type:ShaderForge.SFN_Vector1,id:7056,x:32701,y:33562,varname:node_7056,prsc:2,v1:0.998;n:type:ShaderForge.SFN_NormalVector,id:4028,x:31903,y:33733,prsc:2,pt:False;n:type:ShaderForge.SFN_Step,id:7534,x:32864,y:33518,varname:node_7534,prsc:2|A-7056-OUT,B-9887-OUT;n:type:ShaderForge.SFN_Add,id:8346,x:33043,y:33391,varname:node_8346,prsc:2|A-1500-OUT,B-7534-OUT;n:type:ShaderForge.SFN_Divide,id:1385,x:33328,y:33417,varname:node_1385,prsc:2|A-8346-OUT,B-22-OUT;n:type:ShaderForge.SFN_Vector1,id:22,x:33008,y:33565,varname:node_22,prsc:2,v1:1.5;proporder:4342-2941-7836-317;pass:END;sub:END;*/

Shader "AP01/L01/L01_test_Jade" {
    Properties {
        _node_4342 ("node_4342", 2D) = "white" {}
        _node_2941 ("node_2941", Color) = (0.4039216,0.1137255,0.2745098,1)
        _node_7836 ("node_7836", Color) = (1,0.990077,0.8349056,1)
        _node_317 ("node_317", Color) = (0.8773585,0.8649824,0.7159576,1)
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
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.01,1) );
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4342; uniform float4 _node_4342_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7836)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_317)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_3235 = 0.5;
                float2 node_4796 = float2(((dot(i.normalDir,lightDirection)*node_3235)+node_3235),0.2);
                float4 _node_4342_var = tex2D(_node_4342,TRANSFORM_TEX(node_4796, _node_4342));
                float4 _node_7836_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_7836 );
                float4 _node_317_var = UNITY_ACCESS_INSTANCED_PROP( Props, _node_317 );
                float3 emissive = lerp(saturate((1.0-(1.0-_node_4342_var.rgb)*(1.0-saturate((pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)*_node_7836_var.rgb))))),_node_317_var.rgb,((step(0.996,max(0,dot(normalize((lightDirection+float3(0.2,0.05,0.1))),i.normalDir)))+step(0.998,max(0,dot(normalize((lightDirection+float3(0.2,0.35,0.05))),i.normalDir))))/1.5));
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_4342; uniform float4 _node_4342_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_7836)
                UNITY_DEFINE_INSTANCED_PROP( float4, _node_317)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
