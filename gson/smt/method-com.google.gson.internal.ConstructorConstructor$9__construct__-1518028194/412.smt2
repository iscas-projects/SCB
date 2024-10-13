(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3482 0)
(declare-sort var1282 0)
(declare-sort var2004 0)
(declare-sort var3622 0)
(declare-sort var3339 0)
(declare-sort var2621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1758936235 (var3482) var1282)
(declare-fun arr-var2004-init () (Array Int var2004))
(declare-fun var2621_createExceptionForUnexpectedIllegalAccess/41780030 (var3622) var3339)
(declare-const null-var3482 var3482)
(declare-const null-var3622 var3622)
(declare-const var805 var3482) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var805 null-var3482)))
(define-const var36 var1282 (val$constructor/1758936235 var805)) ; Statement: $r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var3445 (Array Int var2004) arr-var2004-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var460 var3622) ; Statement: $r3 := @caughtexception 
(assert (not (= var460 null-var3622)))
(define-const var3929 var3339 (var2621_createExceptionForUnexpectedIllegalAccess/41780030 var460)) ; Statement: $r4 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.RuntimeException createExceptionForUnexpectedIllegalAccess(java.lang.IllegalAccessException)>($r3) 
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1758936235=([com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var2004-init=([], java.lang.Object[]), var2621_createExceptionForUnexpectedIllegalAccess/41780030=([java.lang.IllegalAccessException], java.lang.RuntimeException)}
; {var3482=com.google.gson.internal.ConstructorConstructor$9, var805=r0, var1282=java.lang.reflect.Constructor, var36=$r2, var2004=java.lang.Object, var3445=$r1, var3622=java.lang.IllegalAccessException, var460=$r3, var3339=java.lang.RuntimeException, var2621=com.google.gson.internal.reflect.ReflectionHelper, var3929=$r4}
; {com.google.gson.internal.ConstructorConstructor$9=var3482, r0=var805, java.lang.reflect.Constructor=var1282, $r2=var36, java.lang.Object=var2004, $r1=var3445, java.lang.IllegalAccessException=var3622, $r3=var460, java.lang.RuntimeException=var3339, com.google.gson.internal.reflect.ReflectionHelper=var2621, $r4=var3929}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r3 := @caughtexception;	$r4 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.RuntimeException createExceptionForUnexpectedIllegalAccess(java.lang.IllegalAccessException)>($r3);	throw $r4
;block_num 2