(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var2164 0)
(declare-sort var1558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/705534411 (var3900) var2164)
(declare-fun equals/-851478670 (var2164 var1558) Bool)
(declare-fun cast-from-var2164-to-var1558 (var2164) var1558)
(declare-const null-var3900 var3900)
(declare-const null-var2164 var2164)
(declare-const var1563 var3900) ; Statement: r0 := @parameter0: java.lang.invoke.MethodHandle 
(assert (not (= var1563 null-var3900)))
(declare-const var330 var2164) ; Statement: r1 := @parameter1: java.lang.invoke.MethodType 
(assert (not (= var330 null-var2164)))
(assert true)
(define-const var217 var2164 (type/705534411 var1563)) ; Statement: $r2 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var3345 Bool (equals/-851478670 var217 (cast-from-var2164-to-var1558 var330))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.invoke.MethodType: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3345 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), equals/-851478670=([java.lang.invoke.MethodType, java.lang.Object], boolean), cast-from-var2164-to-var1558=([java.lang.invoke.MethodType], java.lang.Object)}
; {var3900=java.lang.invoke.MethodHandle, var1563=r0, var2164=java.lang.invoke.MethodType, var330=r1, var217=$r2, var1558=java.lang.Object, var3345=$z0}
; {java.lang.invoke.MethodHandle=var3900, r0=var1563, java.lang.invoke.MethodType=var2164, r1=var330, $r2=var217, java.lang.Object=var1558, $z0=var3345}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.invoke.MethodHandle;	r1 := @parameter1: java.lang.invoke.MethodType;	$r2 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$z0 = virtualinvoke $r2.<java.lang.invoke.MethodType: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2