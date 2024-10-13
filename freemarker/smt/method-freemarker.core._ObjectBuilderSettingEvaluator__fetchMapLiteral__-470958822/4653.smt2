(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var1766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3309) Int)
(declare-fun src/-2081171709 (var3309) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3309 var3309)
(declare-const null-Bool Bool)
(declare-const var3309-VOID var1766)
(declare-const var219 var3309) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var219 null-var3309)))
(declare-const var2942 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2942 null-Bool)))
(define-const var1203 Int (pos/-2081171709 var219)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var3439 String (src/-2081171709 var219)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var2249 Int (length/-134980193 var3439)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == $i1 goto (branch) 
(assert (= var1203 var2249)) ; Cond: $i0 == $i1 
 ; Statement: if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
(assert (not (= (ite var2942 1 0) 0))) ; Cond: z0 != 0 
(define-const var18 var1766 var3309-VOID) ; Statement: $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3309=freemarker.core._ObjectBuilderSettingEvaluator, var219=r0, var2942=z0, var1203=$i0, var3439=$r1, var2249=$i1, var1766=java.lang.Object, var18=$r2}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3309, r0=var219, z0=var2942, $i0=var1203, $r1=var3439, $i1=var2249, java.lang.Object=var1766, $r2=var18}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 == $i1 goto (branch);	if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	$r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	return $r2
;block_num 3