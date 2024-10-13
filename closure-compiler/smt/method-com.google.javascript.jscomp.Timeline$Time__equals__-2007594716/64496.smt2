(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var828 0)
(declare-sort var1269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var828 var828)
(declare-const null-var1269 var1269)
(declare-const var3540 var828) ; Statement: r1 := @this: com.google.javascript.jscomp.Timeline$Time 
(assert (not (= var3540 null-var828)))
(declare-const var1863 var1269) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1863 null-var1269)))
(define-const var948 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.Timeline$Time 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var948 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var828=com.google.javascript.jscomp.Timeline$Time, var3540=r1, var1269=java.lang.Object, var1863=r0, var948=$z0}
; {com.google.javascript.jscomp.Timeline$Time=var828, r1=var3540, java.lang.Object=var1269, r0=var1863, $z0=var948}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.Timeline$Time;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof com.google.javascript.jscomp.Timeline$Time;	if $z0 == 0 goto return 0;	return 0
;block_num 2