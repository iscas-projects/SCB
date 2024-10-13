(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort var2061 0)
(declare-sort var1449 0)
(declare-sort var1035 0)
(declare-sort var2991 0)
(declare-sort var2581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/-642073557 (var3104) var1449)
(declare-fun getBindings/-523307642 (var1449) var1035)
(declare-fun var1035_get/1088891777 (var1035 var2991) var2991)
(declare-fun cast-from-String-to-var2991 (String) var2991)
(declare-fun var1035_put/1464166817 (var1035 var2991 var2991) var2991)
(declare-fun var2581_getValue/902856528 (String var2991) var2991)
(declare-fun cast-from-var1035-to-var2991 (var1035) var2991)
(declare-fun String_valueOf/-333372740 (var2991) String)
(declare-fun checkInjection/-351411980 (var3104 String) void)
(declare-const null-var3104 var3104)
(declare-const null-String String)
(declare-const null-var2991 var2991)
(declare-const var3945 var3104) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser 
(assert (not (= var3945 null-var3104)))
(declare-const var1266 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1266 null-String)))
(define-const var385 var1449 (context/-642073557 var3945)) ; Statement: $r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var970 var1035 (getBindings/-523307642 var385)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var678 var2991 (var1035_get/1088891777 var970 (cast-from-String-to-var2991 "_parameter"))) ; Statement: r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter") 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var678 null-var2991)))) ; Negate: Cond: r3 != null  
(define-const var3320 var1449 (context/-642073557 var3945)) ; Statement: $r8 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var756 var1035 (getBindings/-523307642 var3320)) ; Statement: $r9 = virtualinvoke $r8.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
;(assert (var1035_put/1464166817 var756 (cast-from-String-to-var2991 "value") null-var2991)) ; Statement: interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("value", null) 

(declare-const var756!1 var1035)
(declare-const var1768 String)
(declare-const var643 var2061)
 ; Statement: goto [?= $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>] 
(assert true) ; Non Conditional
(define-const var1853 var1449 (context/-642073557 var3945)) ; Statement: $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var3832 var1035 (getBindings/-523307642 var1853)) ; Statement: $r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var3877 var2991 (var2581_getValue/902856528 var1266 (cast-from-var1035-to-var2991 var3832))) ; Statement: $r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11) 
 ; Statement: if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(assert (not (= var3877 null-var2991))) ; Cond: $r12 != null 
(define-const var1904 String (String_valueOf/-333372740 var3877)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(assert true) ; Non Conditional
(assert true)
;(assert (checkInjection/-351411980 var3945 var1904)) ; Statement: specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13) 

(declare-const var3945!1 var3104)
(declare-const var1904!1 String)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {context/-642073557=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser], org.apache.ibatis.scripting.xmltags.DynamicContext), getBindings/-523307642=([org.apache.ibatis.scripting.xmltags.DynamicContext], java.util.Map), var1035_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2991=([java.lang.String], java.lang.Object), var1035_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), var2581_getValue/902856528=([java.lang.String, java.lang.Object], java.lang.Object), cast-from-var1035-to-var2991=([java.util.Map], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), checkInjection/-351411980=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, java.lang.String], void)}
; {var3104=org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, var3945=r0, var1266=r5, var2061=null_type, var1449=org.apache.ibatis.scripting.xmltags.DynamicContext, var385=$r1, var1035=java.util.Map, var970=$r2, var2991=java.lang.Object, var678=r3, var3320=$r8, var756=$r9, var1768="value", var643=null, var1853=$r10, var3832=$r11, var2581=org.apache.ibatis.scripting.xmltags.OgnlCache, var3877=$r12, var1904=$r13}
; {org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser=var3104, r0=var3945, r5=var1266, null_type=var2061, org.apache.ibatis.scripting.xmltags.DynamicContext=var1449, $r1=var385, java.util.Map=var1035, $r2=var970, java.lang.Object=var2991, r3=var678, $r8=var3320, $r9=var756, "value"=var1768, null=var643, $r10=var1853, $r11=var3832, org.apache.ibatis.scripting.xmltags.OgnlCache=var2581, $r12=var3877, $r13=var1904}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter");	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r8 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r9 = virtualinvoke $r8.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("value", null);	goto [?= $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>];	$r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	$r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11);	if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13);	return $r13
;block_num 5