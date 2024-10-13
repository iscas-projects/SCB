(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort var3650 0)
(declare-sort var1915 0)
(declare-sort var3747 0)
(declare-sort var2254 0)
(declare-sort var1944 0)
(declare-sort var2644 0)
(declare-sort var663 0)
(declare-sort var2555 0)
(declare-sort var1542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun adaptee/-1858346196 (var1093) var3747)
(declare-fun findProperty/-1234044310 (var3747 String Bool) var2254)
(declare-fun var3650_getMethodType/-466914787 (var3650) var1944)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var3650_getNameToken/-1004068127 (var3650 Int) String)
(declare-fun var2644_safeToString/1863739852 (var663) String)
(declare-fun cast-from-var1093-to-var663 (var1093) var663)
(declare-fun var1542_typeError/-1487832051 (String (Array Int String)) var2555)
(declare-const null-var1093 var1093)
(declare-const null-var3650 var3650)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2254 var2254)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1332 var1093) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeJSAdapter 
(assert (not (= var1332 null-var1093)))
(declare-const var1693 var3650) ; Statement: r4 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1693 null-var3650)))
(declare-const var124 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var124 null-String)))
(declare-const var3929 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var3929 null-Bool)))
(define-const var2396 var3747 (adaptee/-1858346196 var1332)) ; Statement: $r2 = r0.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee> 
(assert true)
(define-const var2676 var2254 (findProperty/-1234044310 var2396 var124 (ite (= 1 1) true false))) ; Statement: r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r1, 1) 
(define-const var1407 var1944 (var3650_getMethodType/-466914787 var1693)) ; Statement: r5 = interfaceinvoke r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
 ; Statement: if r3 == null goto b1 = -1 
(assert (= var2676 null-var2254)) ; Cond: r3 == null 
(define-const var3707 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1377 Int (hashCode/-467973558 var124)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i2) {     case -596047202: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__call__");     default: goto lookupswitch(b1) {     case 0: goto $r6 = newarray (java.lang.String)[2];     default: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__put__"); }; } 
(assert (and (not (= var1377 (- 596047202))) true)) ; Intersect: Negate: Cond: $i2 == -596047202   and Non Conditional 
 ; Statement: lookupswitch(b1) {     case 0: goto $r6 = newarray (java.lang.String)[2];     default: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__put__"); } 
(assert (and (= var3707 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var66 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[2] 
(define-const var3653 String (var3650_getNameToken/-1004068127 var1693 2)) ; Statement: $r7 = interfaceinvoke r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2) 
(declare-const var66!1 (Array Int String))
(assert (not (= var66!1 null-__Array__Int__String__)))
(assert (= (select var66!1 0) var3653)) ; Statement: $r6[0] = $r7 
(define-const var3812 String (var2644_safeToString/1863739852 (cast-from-var1093-to-var663 var1332))) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r0) 
(declare-const var66!2 (Array Int String))
(assert (not (= var66!2 null-__Array__Int__String__)))
(assert (= (select var66!2 1) var3812)) ; Statement: $r6[1] = $r8 
(define-const var467 var2555 (var1542_typeError/-1487832051 "no.such.function" var66!2)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r6) 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {adaptee/-1858346196=([jdk.nashorn.internal.objects.NativeJSAdapter], jdk.nashorn.internal.runtime.ScriptObject), findProperty/-1234044310=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.String, boolean], jdk.nashorn.internal.runtime.FindProperty), var3650_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), hashCode/-467973558=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var3650_getNameToken/-1004068127=([jdk.internal.dynalink.CallSiteDescriptor, int], java.lang.String), var2644_safeToString/1863739852=([java.lang.Object], java.lang.String), cast-from-var1093-to-var663=([jdk.nashorn.internal.objects.NativeJSAdapter], java.lang.Object), var1542_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var1093=jdk.nashorn.internal.objects.NativeJSAdapter, var1332=r0, var3650=jdk.internal.dynalink.CallSiteDescriptor, var1693=r4, var124=r1, var1915=null_type, var3929=z3, var3747=jdk.nashorn.internal.runtime.ScriptObject, var2396=$r2, var2254=jdk.nashorn.internal.runtime.FindProperty, var2676=r3, var1944=java.lang.invoke.MethodType, var1407=r5, var3707=b1, var1377=$i2, var66=$r6, var3653=$r7, var2644=jdk.nashorn.internal.runtime.ScriptRuntime, var663=java.lang.Object, var3812=$r8, var2555=jdk.nashorn.internal.runtime.ECMAException, var1542=jdk.nashorn.internal.runtime.ECMAErrors, var467=$r9}
; {jdk.nashorn.internal.objects.NativeJSAdapter=var1093, r0=var1332, jdk.internal.dynalink.CallSiteDescriptor=var3650, r4=var1693, r1=var124, null_type=var1915, z3=var3929, jdk.nashorn.internal.runtime.ScriptObject=var3747, $r2=var2396, jdk.nashorn.internal.runtime.FindProperty=var2254, r3=var2676, java.lang.invoke.MethodType=var1944, r5=var1407, b1=var3707, $i2=var1377, $r6=var66, $r7=var3653, jdk.nashorn.internal.runtime.ScriptRuntime=var2644, java.lang.Object=var663, $r8=var3812, jdk.nashorn.internal.runtime.ECMAException=var2555, jdk.nashorn.internal.runtime.ECMAErrors=var1542, $r9=var467}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeJSAdapter;	r4 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r1 := @parameter1: java.lang.String;	z3 := @parameter2: boolean;	$r2 = r0.<jdk.nashorn.internal.objects.NativeJSAdapter: jdk.nashorn.internal.runtime.ScriptObject adaptee>;	r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r1, 1);	r5 = interfaceinvoke r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	if r3 == null goto b1 = -1;	b1 = -1;	$i2 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i2) {     case -596047202: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__call__");     default: goto lookupswitch(b1) {     case 0: goto $r6 = newarray (java.lang.String)[2];     default: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__put__"); }; };	lookupswitch(b1) {     case 0: goto $r6 = newarray (java.lang.String)[2];     default: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("__put__"); };	$r6 = newarray (java.lang.String)[2];	$r7 = interfaceinvoke r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getNameToken(int)>(2);	$r6[0] = $r7;	$r8 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r0);	$r6[1] = $r8;	$r9 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("no.such.function", $r6);	throw $r9
;block_num 4