(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3030) Int)
(declare-fun src/-2081171709 (var3030) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3030 var3030)
(declare-const null-Bool Bool)
(declare-const var3030-VOID var3669)
(declare-const var1518 var3030) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var1518 null-var3030)))
(declare-const var2585 Bool) ; Statement: z12 := @parameter0: boolean 
(assert (not (= var2585 null-Bool)))
(declare-const var3250 Bool) ; Statement: z11 := @parameter1: boolean 
(assert (not (= var3250 null-Bool)))
(define-const var1691 Int (pos/-2081171709 var1518)) ; Statement: i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var397 Bool (ite (= 1 0) true false)) ; Statement: z13 = 0 
(define-const var2422 Bool (ite (= 1 0) true false)) ; Statement: z14 = 0 
(assert true) ; Non Conditional
(define-const var3706 Int (pos/-2081171709 var1518)) ; Statement: $i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2823 String (src/-2081171709 var1518)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var2839 Int (length/-134980193 var2823)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var3706 var2839)))) ; Negate: Cond: $i1 != $i2  
 ; Statement: goto [?= $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>] 
(assert true) ; Non Conditional
(define-const var831 Int (pos/-2081171709 var1518)) ; Statement: $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
 ; Statement: if i0 != $i4 goto $r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var1691 var831)))) ; Negate: Cond: i0 != $i4  
 ; Statement: if z12 == 0 goto $r44 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= (ite var2585 1 0) 0))) ; Negate: Cond: z12 == 0  
(define-const var3003 var3669 var3030-VOID) ; Statement: $r28 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3030=freemarker.core._ObjectBuilderSettingEvaluator, var1518=r0, var2585=z12, var3250=z11, var1691=i0, var397=z13, var2422=z14, var3706=$i1, var2823=$r1, var2839=$i2, var831=$i4, var3669=java.lang.Object, var3003=$r28}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3030, r0=var1518, z12=var2585, z11=var3250, i0=var1691, z13=var397, z14=var2422, $i1=var3706, $r1=var2823, $i2=var2839, $i4=var831, java.lang.Object=var3669, $r28=var3003}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z12 := @parameter0: boolean;	z11 := @parameter1: boolean;	i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	z13 = 0;	z14 = 0;	$i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	goto [?= $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>];	$i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if i0 != $i4 goto $r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	if z12 == 0 goto $r44 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r28 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	return $r28
;block_num 6