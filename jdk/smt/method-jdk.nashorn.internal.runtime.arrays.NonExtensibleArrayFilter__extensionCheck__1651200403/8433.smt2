(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var492 0)
(declare-sort var1546 0)
(declare-sort var1393 0)
(declare-sort var82 0)
(declare-sort var905 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1546_instance/-1028431714 () var1546)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1393_safeToString/1863739852 (var82) String)
(declare-fun cast-from-var492-to-var82 (var492) var82)
(declare-fun var1190_typeError/-937377465 (var1546 String (Array Int String)) var905)
(declare-const null-var492 var492)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var535 var492) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.arrays.NonExtensibleArrayFilter 
(assert (not (= var535 null-var492)))
(declare-const var2621 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2621 null-Bool)))
(declare-const var3406 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3406 null-Int)))
 ; Statement: if z0 != 0 goto $r4 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(assert (not (= (ite var2621 1 0) 0))) ; Cond: z0 != 0 
(define-const var1679 var1546 var1546_instance/-1028431714) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(define-const var3036 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[2] 
(define-const var1416 String (String_valueOf/1240665136 var3406)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(declare-const var3036!1 (Array Int String))
(assert (not (= var3036!1 null-__Array__Int__String__)))
(assert (= (select var3036!1 0) var1416)) ; Statement: $r0[0] = $r1 
(define-const var378 String (var1393_safeToString/1863739852 (cast-from-var492-to-var82 var535))) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r2) 
(declare-const var3036!2 (Array Int String))
(assert (not (= var3036!2 null-__Array__Int__String__)))
(assert (= (select var3036!2 1) var378)) ; Statement: $r0[1] = $r3 
(define-const var554 var905 (var1190_typeError/-937377465 var1679 "object.non.extensible" var3036!2)) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(jdk.nashorn.internal.objects.Global,java.lang.String,java.lang.String[])>($r4, "object.non.extensible", $r0) 
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1546_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), arr-String-init=([], java.lang.String[]), String_valueOf/1240665136=([int], java.lang.String), var1393_safeToString/1863739852=([java.lang.Object], java.lang.String), cast-from-var492-to-var82=([jdk.nashorn.internal.runtime.arrays.NonExtensibleArrayFilter], java.lang.Object), var1190_typeError/-937377465=([jdk.nashorn.internal.objects.Global, java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var492=jdk.nashorn.internal.runtime.arrays.NonExtensibleArrayFilter, var535=r2, var2621=z0, var3406=i0, var1546=jdk.nashorn.internal.objects.Global, var1679=$r4, var3036=$r0, var1416=$r1, var1393=jdk.nashorn.internal.runtime.ScriptRuntime, var82=java.lang.Object, var378=$r3, var905=jdk.nashorn.internal.runtime.ECMAException, var1190=jdk.nashorn.internal.runtime.ECMAErrors, var554=$r5}
; {jdk.nashorn.internal.runtime.arrays.NonExtensibleArrayFilter=var492, r2=var535, z0=var2621, i0=var3406, jdk.nashorn.internal.objects.Global=var1546, $r4=var1679, $r0=var3036, $r1=var1416, jdk.nashorn.internal.runtime.ScriptRuntime=var1393, java.lang.Object=var82, $r3=var378, jdk.nashorn.internal.runtime.ECMAException=var905, jdk.nashorn.internal.runtime.ECMAErrors=var1190, $r5=var554}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.arrays.NonExtensibleArrayFilter;	z0 := @parameter0: boolean;	i0 := @parameter1: int;	if z0 != 0 goto $r4 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	$r4 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	$r0 = newarray (java.lang.String)[2];	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r0[0] = $r1;	$r3 = staticinvoke <jdk.nashorn.internal.runtime.ScriptRuntime: java.lang.String safeToString(java.lang.Object)>(r2);	$r0[1] = $r3;	$r5 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(jdk.nashorn.internal.objects.Global,java.lang.String,java.lang.String[])>($r4, "object.non.extensible", $r0);	throw $r5
;block_num 2