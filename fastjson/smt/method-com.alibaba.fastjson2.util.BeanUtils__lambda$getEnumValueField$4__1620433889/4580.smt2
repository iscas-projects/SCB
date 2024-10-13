(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var814 0)
(declare-sort var2757 0)
(declare-sort var1186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1186) String)
(declare-const null-String String)
(declare-const null-var2757 var2757)
(declare-const null-var1186 var1186)
(declare-const var2397 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2397 null-String)))
(declare-const var2571 var2757) ; Statement: r3 := @parameter1: java.util.concurrent.atomic.AtomicReference 
(assert (not (= var2571 null-var2757)))
(declare-const var2292 var1186) ; Statement: r4 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2292 null-var1186)))
(declare-const var3975 var1186) ; Statement: r0 := @parameter3: java.lang.reflect.Method 
(assert (not (= var3975 null-var1186)))
(assert true)
(define-const var65 String (getName/1227988463 var3975)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var141 Bool (= var65 var2397)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var141 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var2397=r1, var814=null_type, var2757=java.util.concurrent.atomic.AtomicReference, var2571=r3, var1186=java.lang.reflect.Method, var2292=r4, var3975=r0, var65=$r2, var141=$z0}
; {r1=var2397, null_type=var814, java.util.concurrent.atomic.AtomicReference=var2757, r3=var2571, java.lang.reflect.Method=var1186, r4=var2292, r0=var3975, $r2=var65, $z0=var141}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.concurrent.atomic.AtomicReference;	r4 := @parameter2: java.lang.reflect.Method;	r0 := @parameter3: java.lang.reflect.Method;	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2