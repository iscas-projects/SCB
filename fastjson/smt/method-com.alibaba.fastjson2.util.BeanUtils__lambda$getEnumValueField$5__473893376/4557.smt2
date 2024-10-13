(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var81 0)
(declare-sort var248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var248) String)
(declare-const null-String String)
(declare-const null-var81 var81)
(declare-const null-var248 var248)
(declare-const var3117 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3117 null-String)))
(declare-const var2693 var81) ; Statement: r3 := @parameter1: java.util.concurrent.atomic.AtomicReference 
(assert (not (= var2693 null-var81)))
(declare-const var682 var248) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var682 null-var248)))
(declare-const var1368 var248) ; Statement: r0 := @parameter3: java.lang.reflect.Method 
(assert (not (= var1368 null-var248)))
(assert true)
(define-const var1317 String (getName/1227988463 var1368)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var621 Bool (= var1317 var3117)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var621 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3117=r1, var872=null_type, var81=java.util.concurrent.atomic.AtomicReference, var2693=r3, var248=java.lang.reflect.Method, var682=r4, var1368=r0, var1317=$r2, var621=$z0}
; {r1=var3117, null_type=var872, java.util.concurrent.atomic.AtomicReference=var81, r3=var2693, java.lang.reflect.Method=var248, r4=var682, r0=var1368, $r2=var1317, $z0=var621}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.concurrent.atomic.AtomicReference;	r4 := @parameter2: java.lang.reflect.Method;	r0 := @parameter3: java.lang.reflect.Method;	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2