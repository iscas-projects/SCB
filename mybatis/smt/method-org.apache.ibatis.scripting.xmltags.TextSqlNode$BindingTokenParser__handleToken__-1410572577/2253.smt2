(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var810 0)
(declare-sort var1767 0)
(declare-sort var1801 0)
(declare-sort var1332 0)
(declare-sort var2119 0)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/-642073557 (var262) var1767)
(declare-fun getBindings/-523307642 (var1767) var1801)
(declare-fun var1801_get/1088891777 (var1801 var1332) var1332)
(declare-fun cast-from-String-to-var1332 (String) var1332)
(declare-fun getClass/1258963082 (var1332) ClassObject)
(declare-fun var2119_isSimpleType/1411118852 (ClassObject) Bool)
(declare-fun var3993_getValue/902856528 (String var1332) var1332)
(declare-fun cast-from-var1801-to-var1332 (var1801) var1332)
(declare-fun checkInjection/-351411980 (var262 String) void)
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const null-var1332 var1332)
(declare-const var1789 var262) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser 
(assert (not (= var1789 null-var262)))
(declare-const var3771 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3771 null-String)))
(define-const var2573 var1767 (context/-642073557 var1789)) ; Statement: $r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var3049 var1801 (getBindings/-523307642 var2573)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var2161 var1332 (var1801_get/1088891777 var3049 (cast-from-String-to-var1332 "_parameter"))) ; Statement: r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter") 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2161 null-var1332))) ; Cond: r3 != null 
(assert true)
(define-const var324 ClassObject (getClass/1258963082 var2161)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2996 Bool (var2119_isSimpleType/1411118852 var324)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.type.SimpleTypeRegistry: boolean isSimpleType(java.lang.Class)>($r4) 
 ; Statement: if $z0 == 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert (= (ite var2996 1 0) 0)) ; Cond: $z0 == 0 
(define-const var684 var1767 (context/-642073557 var1789)) ; Statement: $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var2144 var1801 (getBindings/-523307642 var684)) ; Statement: $r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var1901 var1332 (var3993_getValue/902856528 var3771 (cast-from-var1801-to-var1332 var2144))) ; Statement: $r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11) 
 ; Statement: if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(assert (not (not (= var1901 null-var1332)))) ; Negate: Cond: $r12 != null  
(define-const var1927 String "") ; Statement: $r13 = "" 
 ; Statement: goto [?= specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (checkInjection/-351411980 var1789 var1927)) ; Statement: specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13) 

(declare-const var1789!1 var262)
(declare-const var1927!1 String)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {context/-642073557=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser], org.apache.ibatis.scripting.xmltags.DynamicContext), getBindings/-523307642=([org.apache.ibatis.scripting.xmltags.DynamicContext], java.util.Map), var1801_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1332=([java.lang.String], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), var2119_isSimpleType/1411118852=([java.lang.Class], boolean), var3993_getValue/902856528=([java.lang.String, java.lang.Object], java.lang.Object), cast-from-var1801-to-var1332=([java.util.Map], java.lang.Object), checkInjection/-351411980=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, java.lang.String], void)}
; {var262=org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, var1789=r0, var3771=r5, var810=null_type, var1767=org.apache.ibatis.scripting.xmltags.DynamicContext, var2573=$r1, var1801=java.util.Map, var3049=$r2, var1332=java.lang.Object, var2161=r3, var324=$r4, var2119=org.apache.ibatis.type.SimpleTypeRegistry, var2996=$z0, var684=$r10, var2144=$r11, var3993=org.apache.ibatis.scripting.xmltags.OgnlCache, var1901=$r12, var1927=$r13}
; {org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser=var262, r0=var1789, r5=var3771, null_type=var810, org.apache.ibatis.scripting.xmltags.DynamicContext=var1767, $r1=var2573, java.util.Map=var1801, $r2=var3049, java.lang.Object=var1332, r3=var2161, $r4=var324, org.apache.ibatis.type.SimpleTypeRegistry=var2119, $z0=var2996, $r10=var684, $r11=var2144, org.apache.ibatis.scripting.xmltags.OgnlCache=var3993, $r12=var1901, $r13=var1927}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter");	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$z0 = staticinvoke <org.apache.ibatis.type.SimpleTypeRegistry: boolean isSimpleType(java.lang.Class)>($r4);	if $z0 == 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	$r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11);	if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	$r13 = "";	goto [?= specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13)];	specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13);	return $r13
;block_num 5