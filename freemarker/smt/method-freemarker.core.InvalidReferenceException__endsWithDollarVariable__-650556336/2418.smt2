(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var274 var274)
(declare-const var3447 var274) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var3447 null-var274)))
(define-const var3416 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.Identifier 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof freemarker.core.Dot 
(assert (= (ite var3416 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3600 Bool false) ; Statement: $z1 = r0 instanceof freemarker.core.Dot 
 ; Statement: if $z1 == 0 goto $z4 = 0 
(assert (= (ite var3600 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3223 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var274=freemarker.core.Expression, var3447=r0, var3416=$z0, var3600=$z1, var3223=$z4}
; {freemarker.core.Expression=var274, r0=var3447, $z0=var3416, $z1=var3600, $z4=var3223}
;seq 
;cnt {}
;stmts r0 := @parameter0: freemarker.core.Expression;	$z0 = r0 instanceof freemarker.core.Identifier;	if $z0 == 0 goto $z1 = r0 instanceof freemarker.core.Dot;	$z1 = r0 instanceof freemarker.core.Dot;	if $z1 == 0 goto $z4 = 0;	$z4 = 0;	return $z4
;block_num 4