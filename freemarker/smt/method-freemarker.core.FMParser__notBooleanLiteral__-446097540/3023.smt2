(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var351 0)
(declare-sort var1304 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var351 var351)
(declare-const null-var1304 var1304)
(declare-const null-String String)
(declare-const var2916 var351) ; Statement: r10 := @this: freemarker.core.FMParser 
(assert (not (= var2916 null-var351)))
(declare-const var2847 var1304) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var2847 null-var1304)))
(declare-const var3035 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3035 null-String)))
(define-const var2529 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.BooleanLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2529 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var351=freemarker.core.FMParser, var2916=r10, var1304=freemarker.core.Expression, var2847=r0, var3035=r6, var2478=null_type, var2529=$z0}
; {freemarker.core.FMParser=var351, r10=var2916, freemarker.core.Expression=var1304, r0=var2847, r6=var3035, null_type=var2478, $z0=var2529}
;seq 
;cnt {}
;stmts r10 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r6 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.BooleanLiteral;	if $z0 == 0 goto return;	return
;block_num 2