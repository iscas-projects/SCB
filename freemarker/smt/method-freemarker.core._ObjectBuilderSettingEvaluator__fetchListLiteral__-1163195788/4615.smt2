(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2068 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var2068) Int)
(declare-fun src/-2081171709 (var2068) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2068 var2068)
(declare-const null-Bool Bool)
(declare-const var2068-VOID var1330)
(declare-const var3100 var2068) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3100 null-var2068)))
(declare-const var2197 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2197 null-Bool)))
(define-const var1158 Int (pos/-2081171709 var3100)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var831 String (src/-2081171709 var3100)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3904 Int (length/-134980193 var831)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == $i1 goto (branch) 
(assert (= var1158 var3904)) ; Cond: $i0 == $i1 
 ; Statement: if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
(assert (not (= (ite var2197 1 0) 0))) ; Cond: z0 != 0 
(define-const var3414 var1330 var2068-VOID) ; Statement: $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2068=freemarker.core._ObjectBuilderSettingEvaluator, var3100=r0, var2197=z0, var1158=$i0, var831=$r1, var3904=$i1, var1330=java.lang.Object, var3414=$r2}
; {freemarker.core._ObjectBuilderSettingEvaluator=var2068, r0=var3100, z0=var2197, $i0=var1158, $r1=var831, $i1=var3904, java.lang.Object=var1330, $r2=var3414}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 == $i1 goto (branch);	if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	$r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	return $r2
;block_num 3