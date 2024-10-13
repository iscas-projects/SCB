(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var3765 0)
(declare-sort var2914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var746 var746)
(declare-const null-var3765 var3765)
(declare-const null-String String)
(declare-const var1657 var746) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var1657 null-var746)))
(declare-const var2162 var3765) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var2162 null-var3765)))
(declare-const var3393 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3393 null-String)))
(define-const var1559 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.NumberLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1559 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var746=freemarker.core.FMParser, var1657=r10, var3765=freemarker.core.Expression, var2162=r0, var3393=r6, var2914=null_type, var1559=$z0}
; {freemarker.core.FMParser=var746, r10=var1657, freemarker.core.Expression=var3765, r0=var2162, r6=var3393, null_type=var2914, $z0=var1559}
;seq 
;cnt {}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.NumberLiteral;	if $z0 == 0 goto return;	return
;block_num 2