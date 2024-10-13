(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1111 0)
(declare-sort var596 0)
(declare-sort var3575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputFormat/-1475596563 (var1111) var3575)
(declare-const null-var1111 var1111)
(declare-const null-var596 var596)
(declare-const var3433 var1111) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3433 null-var1111)))
(declare-const var3446 var596) ; Statement: r7 := @parameter0: freemarker.core.Token 
(assert (not (= var3446 null-var596)))
(define-const var2567 var3575 (outputFormat/-1475596563 var3433)) ; Statement: $r1 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(define-const var627 Bool false) ; Statement: $z0 = $r1 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var627 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat)}
; {var1111=freemarker.core.FMParser, var3433=r0, var596=freemarker.core.Token, var3446=r7, var3575=freemarker.core.OutputFormat, var2567=$r1, var627=$z0}
; {freemarker.core.FMParser=var1111, r0=var3433, freemarker.core.Token=var596, r7=var3446, freemarker.core.OutputFormat=var3575, $r1=var2567, $z0=var627}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r7 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$z0 = $r1 instanceof freemarker.core.MarkupOutputFormat;	if $z0 != 0 goto return;	return
;block_num 2