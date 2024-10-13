(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3730 0)
(declare-sort var382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3730) Int)
(declare-fun src/-2081171709 (var3730) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3730 var3730)
(declare-const null-Bool Bool)
(declare-const var3730-VOID var382)
(declare-const var2550 var3730) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var2550 null-var3730)))
(declare-const var1897 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1897 null-Bool)))
(declare-const var3573 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var3573 null-Bool)))
(declare-const var3811 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3811 null-Bool)))
(declare-const var449 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var449 null-Bool)))
(define-const var175 Int (pos/-2081171709 var2550)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var463 String (src/-2081171709 var2550)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var1854 Int (length/-134980193 var463)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto (branch) 
(assert (>= var175 var1854)) ; Cond: $i0 >= $i1 
 ; Statement: if z0 == 0 goto $r2 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= (ite var1897 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var923 var382 var3730-VOID) ; Statement: $r4 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3730=freemarker.core._ObjectBuilderSettingEvaluator, var2550=r0, var1897=z0, var3573=z2, var3811=z1, var449=z3, var175=$i0, var463=$r1, var1854=$i1, var382=java.lang.Object, var923=$r4}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3730, r0=var2550, z0=var1897, z2=var3573, z1=var3811, z3=var449, $i0=var175, $r1=var463, $i1=var1854, java.lang.Object=var382, $r4=var923}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	z2 := @parameter1: boolean;	z1 := @parameter2: boolean;	z3 := @parameter3: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto (branch);	if z0 == 0 goto $r2 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r4 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	return $r4
;block_num 3