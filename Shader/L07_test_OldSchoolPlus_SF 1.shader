// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7768,x:33452,y:32709,varname:node_7768,prsc:2|emission-4643-OUT;n:type:ShaderForge.SFN_LightVector,id:7370,x:31706,y:31945,varname:node_7370,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6917,x:31706,y:32077,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:348,x:31932,y:32020,varname:node_348,prsc:2,dt:0|A-7370-OUT,B-6917-OUT;n:type:ShaderForge.SFN_Max,id:1430,x:32110,y:32020,varname:node_1430,prsc:2|A-348-OUT,B-6794-OUT;n:type:ShaderForge.SFN_Vector1,id:6794,x:31932,y:32166,varname:node_6794,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:6268,x:31591,y:33103,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:874,x:31755,y:33103,varname:node_874,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6268-OUT;n:type:ShaderForge.SFN_Vector1,id:9212,x:31755,y:33277,varname:node_9212,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:209,x:32292,y:33105,varname:node_209,prsc:2|A-874-OUT,B-9212-OUT;n:type:ShaderForge.SFN_Multiply,id:2919,x:31936,y:33243,varname:node_2919,prsc:2|A-874-OUT,B-1260-OUT;n:type:ShaderForge.SFN_Vector1,id:1260,x:31755,y:33333,varname:node_1260,prsc:2,v1:-1;n:type:ShaderForge.SFN_Max,id:9401,x:32292,y:33250,varname:node_9401,prsc:2|A-2919-OUT,B-674-OUT;n:type:ShaderForge.SFN_Vector1,id:674,x:31755,y:33388,varname:node_674,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3133,x:31755,y:33447,varname:node_3133,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:5805,x:32119,y:33390,varname:node_5805,prsc:2|A-3133-OUT,B-9401-OUT;n:type:ShaderForge.SFN_Subtract,id:2555,x:32292,y:33390,varname:node_2555,prsc:2|A-5805-OUT,B-209-OUT;n:type:ShaderForge.SFN_Add,id:5437,x:32754,y:33215,varname:node_5437,prsc:2|A-8898-OUT,B-3195-OUT,C-7726-OUT;n:type:ShaderForge.SFN_Color,id:530,x:32076,y:32936,ptovrint:False,ptlb:UpEnCol,ptin:_UpEnCol,varname:node_530,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:1713,x:32230,y:32936,ptovrint:False,ptlb:DownEnCol,ptin:_DownEnCol,varname:_UpEnCol_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6292,x:32399,y:32936,ptovrint:False,ptlb:SideEnCol,ptin:_SideEnCol,varname:_UpEnCol_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3195,x:32529,y:33250,varname:node_3195,prsc:2|A-9401-OUT,B-1713-RGB;n:type:ShaderForge.SFN_Multiply,id:7726,x:32529,y:33390,varname:node_7726,prsc:2|A-2555-OUT,B-6292-RGB;n:type:ShaderForge.SFN_Multiply,id:8898,x:32529,y:33105,varname:node_8898,prsc:2|A-209-OUT,B-530-RGB;n:type:ShaderForge.SFN_Color,id:547,x:32067,y:31854,ptovrint:False,ptlb:Base,ptin:_Base,varname:node_547,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8300,x:33099,y:32929,varname:node_8300,prsc:2|A-547-RGB,B-8695-OUT;n:type:ShaderForge.SFN_Multiply,id:1330,x:32375,y:32028,varname:node_1330,prsc:2|A-547-RGB,B-1430-OUT;n:type:ShaderForge.SFN_Add,id:4643,x:33258,y:32799,varname:node_4643,prsc:2|A-5596-OUT,B-8300-OUT;n:type:ShaderForge.SFN_ViewVector,id:7720,x:31492,y:32461,varname:node_7720,prsc:2;n:type:ShaderForge.SFN_Reflect,id:3733,x:31492,y:32332,varname:node_3733,prsc:2|A-2107-OUT,B-1696-OUT;n:type:ShaderForge.SFN_NormalVector,id:1696,x:31290,y:32408,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7126,x:31070,y:32230,varname:node_7126,prsc:2;n:type:ShaderForge.SFN_Dot,id:2679,x:31726,y:32406,varname:node_2679,prsc:2,dt:0|A-3733-OUT,B-7720-OUT;n:type:ShaderForge.SFN_Max,id:7589,x:31935,y:32470,varname:node_7589,prsc:2|A-2679-OUT,B-306-OUT;n:type:ShaderForge.SFN_Vector1,id:306,x:31726,y:32571,varname:node_306,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:5929,x:32153,y:32514,varname:node_5929,prsc:2|VAL-7589-OUT,EXP-8973-OUT;n:type:ShaderForge.SFN_Slider,id:8973,x:31726,y:32667,ptovrint:False,ptlb:specular_range,ptin:_specular_range,varname:node_8973,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:13.05245,max:90;n:type:ShaderForge.SFN_Slider,id:4815,x:31868,y:32772,ptovrint:False,ptlb:specular_intensity,ptin:_specular_intensity,varname:_specular_range_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.658228,max:1;n:type:ShaderForge.SFN_Multiply,id:1632,x:32327,y:32479,varname:node_1632,prsc:2|A-5929-OUT,B-4815-OUT;n:type:ShaderForge.SFN_Add,id:9478,x:32657,y:32349,varname:node_9478,prsc:2|A-1330-OUT,B-1632-OUT;n:type:ShaderForge.SFN_Multiply,id:2107,x:31254,y:32253,varname:node_2107,prsc:2|A-7126-OUT,B-1834-OUT;n:type:ShaderForge.SFN_Vector1,id:1834,x:31070,y:32370,varname:node_1834,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:8695,x:32927,y:33071,varname:node_8695,prsc:2|A-5397-RGB,B-5437-OUT;n:type:ShaderForge.SFN_Tex2d,id:5397,x:32733,y:32962,ptovrint:False,ptlb:AmbientOcclusion,ptin:_AmbientOcclusion,varname:node_5397,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:eabfa8d88fe328f4b952fb81f530c4a4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8995,x:33227,y:32305,varname:node_8995,prsc:2|A-3043-RGB,B-8888-OUT;n:type:ShaderForge.SFN_Color,id:3043,x:33058,y:32136,ptovrint:False,ptlb:LightCol,ptin:_LightCol,varname:_Base_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8754902,c3:0.75,c4:1;n:type:ShaderForge.SFN_LightAttenuation,id:9225,x:33265,y:32136,varname:node_9225,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5596,x:33448,y:32305,varname:node_5596,prsc:2|A-9225-OUT,B-8995-OUT;n:type:ShaderForge.SFN_Multiply,id:8888,x:33011,y:32305,varname:node_8888,prsc:2|A-9478-OUT,B-647-OUT;n:type:ShaderForge.SFN_Slider,id:647,x:32677,y:32196,ptovrint:False,ptlb:Light_Intensity,ptin:_Light_Intensity,varname:_Light_Intensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;proporder:547-3043-8973-4815-5397-530-6292-1713-647;pass:END;sub:END;*/

Shader "AP01/L07/L07_test_OldSchoolPlus_SF" {
    Properties {
        _Base ("Base", Color) = (1,0.5,0,1)
        _LightCol ("LightCol", Color) = (1,0.8754902,0.75,1)
        _specular_range ("specular_range", Range(1, 90)) = 13.05245
        _specular_intensity ("specular_intensity", Range(0, 1)) = 0.658228
        _AmbientOcclusion ("AmbientOcclusion", 2D) = "white" {}
        _UpEnCol ("UpEnCol", Color) = (1,1,1,1)
        _SideEnCol ("SideEnCol", Color) = (0,0,0,1)
        _DownEnCol ("DownEnCol", Color) = (0.5,0.5,0.5,1)
        _Light_Intensity ("Light_Intensity", Range(0, 3)) = 1
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _AmbientOcclusion; uniform float4 _AmbientOcclusion_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _UpEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DownEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SideEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Base)
                UNITY_DEFINE_INSTANCED_PROP( float, _specular_range)
                UNITY_DEFINE_INSTANCED_PROP( float, _specular_intensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _Light_Intensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
////// Emissive:
                float4 _LightCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightCol );
                float4 _Base_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Base );
                float _specular_range_var = UNITY_ACCESS_INSTANCED_PROP( Props, _specular_range );
                float _specular_intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _specular_intensity );
                float _Light_Intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Light_Intensity );
                float4 _AmbientOcclusion_var = tex2D(_AmbientOcclusion,TRANSFORM_TEX(i.uv0, _AmbientOcclusion));
                float node_874 = i.normalDir.g;
                float node_209 = max(node_874,0.0);
                float4 _UpEnCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UpEnCol );
                float node_9401 = max((node_874*(-1.0)),0.0);
                float4 _DownEnCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DownEnCol );
                float4 _SideEnCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SideEnCol );
                float3 emissive = ((attenuation*(_LightCol_var.rgb*(((_Base_var.rgb*max(dot(lightDirection,i.normalDir),0.0))+(pow(max(dot(reflect((lightDirection*(-1.0)),i.normalDir),viewDirection),0.0),_specular_range_var)*_specular_intensity_var))*_Light_Intensity_var)))+(_Base_var.rgb*(_AmbientOcclusion_var.rgb*((node_209*_UpEnCol_var.rgb)+(node_9401*_DownEnCol_var.rgb)+(((1.0-node_9401)-node_209)*_SideEnCol_var.rgb)))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _AmbientOcclusion; uniform float4 _AmbientOcclusion_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _UpEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DownEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SideEnCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Base)
                UNITY_DEFINE_INSTANCED_PROP( float, _specular_range)
                UNITY_DEFINE_INSTANCED_PROP( float, _specular_intensity)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _Light_Intensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
