(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2652 0)
(declare-sort var885 0)
(declare-sort var2935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2652 var2652)
(declare-const null-var885 var885)
(declare-const null-String String)
(declare-const var670 var2652) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var670 null-var2652)))
(declare-const var2247 var885) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var2247 null-var885)))
(declare-const var1410 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1410 null-String)))
(define-const var1353 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.ListLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1353 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2652=freemarker.core.FMParser, var670=r10, var885=freemarker.core.Expression, var2247=r0, var1410=r6, var2935=null_type, var1353=$z0}
; {freemarker.core.FMParser=var2652, r10=var670, freemarker.core.Expression=var885, r0=var2247, r6=var1410, null_type=var2935, $z0=var1353}
;seq 
;cnt {}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.ListLiteral;	if $z0 == 0 goto return;	return
;block_num 2