(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1571 0)
(declare-sort var2659 0)
(declare-sort var1722 0)
(declare-sort var1107 0)
(declare-sort var300 0)
(declare-sort var1081 0)
(declare-sort var1038 0)
(declare-sort var180 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1107-init () var1107)
(declare-fun getVariables/-1974316651 (var2659) var300)
(declare-fun var1081-init () var1081)
(declare-fun <init>/-1408130306 (var1081) void)
(declare-fun <init>/2121607937 (var1107 String Bool var300 var1038) void)
(declare-fun cast-from-var1081-to-var1038 (var1081) var1038)
(declare-fun evalNode/633338648 (var1107 String) var180)
(declare-fun createSqlSource/-733889671 (var1571 var2659 var180 ClassObject) var347)
(declare-const null-var1571 var1571)
(declare-const null-var2659 var2659)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3693 var1571) ; Statement: r9 := @this: org.apache.ibatis.scripting.xmltags.XMLLanguageDriver 
(assert (not (= var3693 null-var1571)))
(declare-const var1195 var2659) ; Statement: r0 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1195 null-var2659)))
(declare-const var1949 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var1949 null-String)))
(declare-const var2933 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var2933 null-ClassObject)))
(assert true)
(define-const var1981 Bool (startsWith/-1785782452 var1949 "<script>")) ; Statement: $z0 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>("<script>") 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<org.apache.ibatis.session.Configuration: java.util.Properties getVariables()>() 
(assert (not (= (ite var1981 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1271 var1107 var1107-init) ; Statement: $r6 = new org.apache.ibatis.parsing.XPathParser 
(assert true)
(define-const var1100 var300 (getVariables/-1974316651 var1195)) ; Statement: $r8 = virtualinvoke r0.<org.apache.ibatis.session.Configuration: java.util.Properties getVariables()>() 
(define-const var2124 var1081 var1081-init) ; Statement: $r7 = new org.apache.ibatis.builder.xml.XMLMapperEntityResolver 
(assert true)
;(assert (<init>/-1408130306 var2124)) ; Statement: specialinvoke $r7.<org.apache.ibatis.builder.xml.XMLMapperEntityResolver: void <init>()>() 

(declare-const var2124!1 var1081)
(assert true)
;(assert (<init>/2121607937 var1271 var1949 (ite (= 1 0) true false) var1100 (cast-from-var1081-to-var1038 var2124!1))) ; Statement: specialinvoke $r6.<org.apache.ibatis.parsing.XPathParser: void <init>(java.lang.String,boolean,java.util.Properties,org.xml.sax.EntityResolver)>(r12, 0, $r8, $r7) 

(declare-const var1271!1 var1107)
(declare-const var1949!1 String)
(declare-const var365 Int)
(declare-const var1100!1 var300)
(declare-const var2124!2 var1081)
(assert true)
(define-const var2118 var180 (evalNode/633338648 var1271!1 "/script")) ; Statement: $r10 = virtualinvoke $r6.<org.apache.ibatis.parsing.XPathParser: org.apache.ibatis.parsing.XNode evalNode(java.lang.String)>("/script") 
(assert true)
(define-const var823 var347 (createSqlSource/-733889671 var3693 var1195 var2118 var2933)) ; Statement: $r11 = virtualinvoke r9.<org.apache.ibatis.scripting.xmltags.XMLLanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r0, $r10, r4) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1107-init=([], org.apache.ibatis.parsing.XPathParser), getVariables/-1974316651=([org.apache.ibatis.session.Configuration], java.util.Properties), var1081-init=([], org.apache.ibatis.builder.xml.XMLMapperEntityResolver), <init>/-1408130306=([org.apache.ibatis.builder.xml.XMLMapperEntityResolver], void), <init>/2121607937=([org.apache.ibatis.parsing.XPathParser, java.lang.String, boolean, java.util.Properties, org.xml.sax.EntityResolver], void), cast-from-var1081-to-var1038=([org.apache.ibatis.builder.xml.XMLMapperEntityResolver], org.xml.sax.EntityResolver), evalNode/633338648=([org.apache.ibatis.parsing.XPathParser, java.lang.String], org.apache.ibatis.parsing.XNode), createSqlSource/-733889671=([org.apache.ibatis.scripting.xmltags.XMLLanguageDriver, org.apache.ibatis.session.Configuration, org.apache.ibatis.parsing.XNode, java.lang.Class], org.apache.ibatis.mapping.SqlSource)}
; {var1571=org.apache.ibatis.scripting.xmltags.XMLLanguageDriver, var3693=r9, var2659=org.apache.ibatis.session.Configuration, var1195=r0, var1949=r12, var1722=null_type, var2933=r4, var1981=$z0, var1107=org.apache.ibatis.parsing.XPathParser, var1271=$r6, var300=java.util.Properties, var1100=$r8, var1081=org.apache.ibatis.builder.xml.XMLMapperEntityResolver, var2124=$r7, var1038=org.xml.sax.EntityResolver, var365=0, var180=org.apache.ibatis.parsing.XNode, var2118=$r10, var347=org.apache.ibatis.mapping.SqlSource, var823=$r11}
; {org.apache.ibatis.scripting.xmltags.XMLLanguageDriver=var1571, r9=var3693, org.apache.ibatis.session.Configuration=var2659, r0=var1195, r12=var1949, null_type=var1722, r4=var2933, $z0=var1981, org.apache.ibatis.parsing.XPathParser=var1107, $r6=var1271, java.util.Properties=var300, $r8=var1100, org.apache.ibatis.builder.xml.XMLMapperEntityResolver=var1081, $r7=var2124, org.xml.sax.EntityResolver=var1038, 0=var365, org.apache.ibatis.parsing.XNode=var180, $r10=var2118, org.apache.ibatis.mapping.SqlSource=var347, $r11=var823}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: org.apache.ibatis.scripting.xmltags.XMLLanguageDriver;	r0 := @parameter0: org.apache.ibatis.session.Configuration;	r12 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.Class;	$z0 = virtualinvoke r12.<java.lang.String: boolean startsWith(java.lang.String)>("<script>");	if $z0 == 0 goto $r1 = virtualinvoke r0.<org.apache.ibatis.session.Configuration: java.util.Properties getVariables()>();	$r6 = new org.apache.ibatis.parsing.XPathParser;	$r8 = virtualinvoke r0.<org.apache.ibatis.session.Configuration: java.util.Properties getVariables()>();	$r7 = new org.apache.ibatis.builder.xml.XMLMapperEntityResolver;	specialinvoke $r7.<org.apache.ibatis.builder.xml.XMLMapperEntityResolver: void <init>()>();	specialinvoke $r6.<org.apache.ibatis.parsing.XPathParser: void <init>(java.lang.String,boolean,java.util.Properties,org.xml.sax.EntityResolver)>(r12, 0, $r8, $r7);	$r10 = virtualinvoke $r6.<org.apache.ibatis.parsing.XPathParser: org.apache.ibatis.parsing.XNode evalNode(java.lang.String)>("/script");	$r11 = virtualinvoke r9.<org.apache.ibatis.scripting.xmltags.XMLLanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,org.apache.ibatis.parsing.XNode,java.lang.Class)>(r0, $r10, r4);	return $r11
;block_num 2