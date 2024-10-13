(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2529 0)
(declare-sort var1959 0)
(declare-sort var923 0)
(declare-sort var1282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1959_run/395733135 (var1959) void)
(declare-fun isInstance/451912363 (ClassObject var1282) Bool)
(declare-fun cast-from-var923-to-var1282 (var923) var1282)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1959 var1959)
(declare-const null-var923 var923)
(declare-const var1008 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1008 null-String)))
(declare-const var3386 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var3386 null-ClassObject)))
(declare-const var2693 var1959) ; Statement: r0 := @parameter2: org.junit.function.ThrowingRunnable 
(assert (not (= var2693 null-var1959)))
(assert true) ; Non Conditional
;(assert (var1959_run/395733135 var2693)) ; Statement: interfaceinvoke r0.<org.junit.function.ThrowingRunnable: void run()>() 

(declare-const var2693!1 var1959)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2697 var923) ; Statement: $r11 := @caughtexception 
(assert (not (= var2697 null-var923)))
(assert true)
(define-const var3666 Bool (isInstance/451912363 var3386 (cast-from-var923-to-var1282 var2697))) ; Statement: $z0 = virtualinvoke r5.<java.lang.Class: boolean isInstance(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5) 
(assert (not (= (ite var3666 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1959_run/395733135=([org.junit.function.ThrowingRunnable], void), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var923-to-var1282=([java.lang.Throwable], java.lang.Object)}
; {var1008=r2, var2529=null_type, var3386=r5, var1959=org.junit.function.ThrowingRunnable, var2693=r0, var923=java.lang.Throwable, var2697=$r11, var1282=java.lang.Object, var3666=$z0}
; {r2=var1008, null_type=var2529, r5=var3386, org.junit.function.ThrowingRunnable=var1959, r0=var2693, java.lang.Throwable=var923, $r11=var2697, java.lang.Object=var1282, $z0=var3666}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Class;	r0 := @parameter2: org.junit.function.ThrowingRunnable;	interfaceinvoke r0.<org.junit.function.ThrowingRunnable: void run()>();	$r11 := @caughtexception;	$z0 = virtualinvoke r5.<java.lang.Class: boolean isInstance(java.lang.Object)>($r11);	if $z0 == 0 goto r30 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5);	return $r11
;block_num 4