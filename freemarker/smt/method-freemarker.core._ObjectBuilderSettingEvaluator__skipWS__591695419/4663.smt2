(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var213) Int)
(declare-fun src/-2081171709 (var213) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var213 var213)
(declare-const var2624 var213) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var2624 null-var213)))
(assert true) ; Non Conditional
(define-const var79 Int (pos/-2081171709 var2624)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2137 String (src/-2081171709 var2624)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var2492 Int (length/-134980193 var2137)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != $i1 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var79 var2492)))) ; Negate: Cond: $i0 != $i1  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var213=freemarker.core._ObjectBuilderSettingEvaluator, var2624=r0, var79=$i0, var2137=$r1, var2492=$i1}
; {freemarker.core._ObjectBuilderSettingEvaluator=var213, r0=var2624, $i0=var79, $r1=var2137, $i1=var2492}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 != $i1 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	return
;block_num 3