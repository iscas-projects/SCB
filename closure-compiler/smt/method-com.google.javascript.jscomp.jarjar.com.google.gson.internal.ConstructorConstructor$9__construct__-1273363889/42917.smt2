(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var3132 0)
(declare-sort var2025 0)
(declare-sort var2475 0)
(declare-sort var2767 0)
(declare-sort var3143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1099874522 (var3546) var3132)
(declare-fun arr-var2025-init () (Array Int var2025))
(declare-fun var3143_createExceptionForUnexpectedIllegalAccess/1738820079 (var2475) var2767)
(declare-const null-var3546 var3546)
(declare-const null-var2475 var2475)
(declare-const var1052 var3546) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var1052 null-var3546)))
(define-const var2635 var3132 (val$constructor/1099874522 var1052)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var1074 (Array Int var2025) arr-var2025-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var975 var2475) ; Statement: $r3 := @caughtexception 
(assert (not (= var975 null-var2475)))
(define-const var1747 var2767 (var3143_createExceptionForUnexpectedIllegalAccess/1738820079 var975)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper: java.lang.RuntimeException createExceptionForUnexpectedIllegalAccess(java.lang.IllegalAccessException)>($r3) 
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1099874522=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var2025-init=([], java.lang.Object[]), var3143_createExceptionForUnexpectedIllegalAccess/1738820079=([java.lang.IllegalAccessException], java.lang.RuntimeException)}
; {var3546=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9, var1052=r0, var3132=java.lang.reflect.Constructor, var2635=$r2, var2025=java.lang.Object, var1074=$r1, var2475=java.lang.IllegalAccessException, var975=$r3, var2767=java.lang.RuntimeException, var3143=com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper, var1747=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9=var3546, r0=var1052, java.lang.reflect.Constructor=var3132, $r2=var2635, java.lang.Object=var2025, $r1=var1074, java.lang.IllegalAccessException=var2475, $r3=var975, java.lang.RuntimeException=var2767, com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper=var3143, $r4=var1747}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r3 := @caughtexception;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper: java.lang.RuntimeException createExceptionForUnexpectedIllegalAccess(java.lang.IllegalAccessException)>($r3);	throw $r4
;block_num 2