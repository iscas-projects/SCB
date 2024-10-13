(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1533 var1533)
(declare-const var1490 var1533) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var1490 null-var1533)))
(define-const var1011 Bool true) ; Statement: $z0 = r0 instanceof java.util.concurrent.ScheduledFuture 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1011 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1533=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var1490=r0, var1011=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var1533, r0=var1490, $z0=var1011}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	$z0 = r0 instanceof java.util.concurrent.ScheduledFuture;	if $z0 == 0 goto return null;	return null
;block_num 2