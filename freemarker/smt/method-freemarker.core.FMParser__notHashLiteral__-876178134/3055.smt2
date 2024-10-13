(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort var350 0)
(declare-sort var1063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var825 var825)
(declare-const null-var350 var350)
(declare-const null-String String)
(declare-const var2414 var825) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var2414 null-var825)))
(declare-const var708 var350) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var708 null-var350)))
(declare-const var482 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var482 null-String)))
(define-const var1026 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.HashLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1026 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var825=freemarker.core.FMParser, var2414=r10, var350=freemarker.core.Expression, var708=r0, var482=r6, var1063=null_type, var1026=$z0}
; {freemarker.core.FMParser=var825, r10=var2414, freemarker.core.Expression=var350, r0=var708, r6=var482, null_type=var1063, $z0=var1026}
;seq 
;cnt {}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.HashLiteral;	if $z0 == 0 goto return;	return
;block_num 2