(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2228 0)
(declare-sort var3934 0)
(declare-sort var1175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2228 var2228)
(declare-const null-var3934 var3934)
(declare-const null-String String)
(declare-const var2879 var2228) ; Statement: r9 := @this: freemarker.core.FMParser 
(assert (not (= var2879 null-var2228)))
(declare-const var3794 var3934) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var3794 null-var3934)))
(declare-const var3700 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3700 null-String)))
(define-const var2956 Bool false) ; Statement: $z0 = r0 instanceof freemarker.core.StringLiteral 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2956 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2228=freemarker.core.FMParser, var2879=r9, var3934=freemarker.core.Expression, var3794=r0, var3700=r5, var1175=null_type, var2956=$z0}
; {freemarker.core.FMParser=var2228, r9=var2879, freemarker.core.Expression=var3934, r0=var3794, r5=var3700, null_type=var1175, $z0=var2956}
;seq 
;cnt {}
;stmts r9 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	r5 := @parameter1: java.lang.String;	$z0 = r0 instanceof freemarker.core.StringLiteral;	if $z0 == 0 goto return;	return
;block_num 2