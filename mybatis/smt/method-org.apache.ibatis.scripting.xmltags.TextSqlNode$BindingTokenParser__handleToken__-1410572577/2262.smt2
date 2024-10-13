(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2214 0)
(declare-sort var3115 0)
(declare-sort var2881 0)
(declare-sort var919 0)
(declare-sort var232 0)
(declare-sort var1224 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun context/-642073557 (var2214) var2881)
(declare-fun getBindings/-523307642 (var2881) var919)
(declare-fun var919_get/1088891777 (var919 var232) var232)
(declare-fun cast-from-String-to-var232 (String) var232)
(declare-fun getClass/1258963082 (var232) ClassObject)
(declare-fun var1224_isSimpleType/1411118852 (ClassObject) Bool)
(declare-fun var1236_getValue/902856528 (String var232) var232)
(declare-fun cast-from-var919-to-var232 (var919) var232)
(declare-fun String_valueOf/-333372740 (var232) String)
(declare-fun checkInjection/-351411980 (var2214 String) void)
(declare-const null-var2214 var2214)
(declare-const null-String String)
(declare-const null-var232 var232)
(declare-const var2713 var2214) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser 
(assert (not (= var2713 null-var2214)))
(declare-const var932 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var932 null-String)))
(define-const var1772 var2881 (context/-642073557 var2713)) ; Statement: $r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var3540 var919 (getBindings/-523307642 var1772)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var3232 var232 (var919_get/1088891777 var3540 (cast-from-String-to-var232 "_parameter"))) ; Statement: r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter") 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var3232 null-var232))) ; Cond: r3 != null 
(assert true)
(define-const var767 ClassObject (getClass/1258963082 var3232)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1364 Bool (var1224_isSimpleType/1411118852 var767)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.type.SimpleTypeRegistry: boolean isSimpleType(java.lang.Class)>($r4) 
 ; Statement: if $z0 == 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert (= (ite var1364 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3993 var2881 (context/-642073557 var2713)) ; Statement: $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context> 
(assert true)
(define-const var307 var919 (getBindings/-523307642 var3993)) ; Statement: $r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>() 
(define-const var1619 var232 (var1236_getValue/902856528 var932 (cast-from-var919-to-var232 var307))) ; Statement: $r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11) 
 ; Statement: if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(assert (not (= var1619 null-var232))) ; Cond: $r12 != null 
(define-const var3050 String (String_valueOf/-333372740 var1619)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12) 
(assert true) ; Non Conditional
(assert true)
;(assert (checkInjection/-351411980 var2713 var3050)) ; Statement: specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13) 

(declare-const var2713!1 var2214)
(declare-const var3050!1 String)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {context/-642073557=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser], org.apache.ibatis.scripting.xmltags.DynamicContext), getBindings/-523307642=([org.apache.ibatis.scripting.xmltags.DynamicContext], java.util.Map), var919_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var232=([java.lang.String], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), var1224_isSimpleType/1411118852=([java.lang.Class], boolean), var1236_getValue/902856528=([java.lang.String, java.lang.Object], java.lang.Object), cast-from-var919-to-var232=([java.util.Map], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), checkInjection/-351411980=([org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, java.lang.String], void)}
; {var2214=org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser, var2713=r0, var932=r5, var3115=null_type, var2881=org.apache.ibatis.scripting.xmltags.DynamicContext, var1772=$r1, var919=java.util.Map, var3540=$r2, var232=java.lang.Object, var3232=r3, var767=$r4, var1224=org.apache.ibatis.type.SimpleTypeRegistry, var1364=$z0, var3993=$r10, var307=$r11, var1236=org.apache.ibatis.scripting.xmltags.OgnlCache, var1619=$r12, var3050=$r13}
; {org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser=var2214, r0=var2713, r5=var932, null_type=var3115, org.apache.ibatis.scripting.xmltags.DynamicContext=var2881, $r1=var1772, java.util.Map=var919, $r2=var3540, java.lang.Object=var232, r3=var3232, $r4=var767, org.apache.ibatis.type.SimpleTypeRegistry=var1224, $z0=var1364, $r10=var3993, $r11=var307, org.apache.ibatis.scripting.xmltags.OgnlCache=var1236, $r12=var1619, $r13=var3050}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r2 = virtualinvoke $r1.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>("_parameter");	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$z0 = staticinvoke <org.apache.ibatis.type.SimpleTypeRegistry: boolean isSimpleType(java.lang.Class)>($r4);	if $z0 == 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r10 = r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: org.apache.ibatis.scripting.xmltags.DynamicContext context>;	$r11 = virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: java.util.Map getBindings()>();	$r12 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r5, $r11);	if $r12 != null goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r12);	specialinvoke r0.<org.apache.ibatis.scripting.xmltags.TextSqlNode$BindingTokenParser: void checkInjection(java.lang.String)>($r13);	return $r13
;block_num 5