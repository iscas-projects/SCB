(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var1497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var1435) Int)
(declare-fun src/-2081171709 (var1435) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1497-init () var1497)
(declare-fun <init>/1302353489 (var1497 String String Int) void)
(declare-const null-var1435 var1435)
(declare-const null-Bool Bool)
(declare-const var1694 var1435) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var1694 null-var1435)))
(declare-const var3115 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3115 null-Bool)))
(declare-const var2472 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var2472 null-Bool)))
(declare-const var1766 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1766 null-Bool)))
(declare-const var3325 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var3325 null-Bool)))
(define-const var1711 Int (pos/-2081171709 var1694)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var1325 String (src/-2081171709 var1694)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var1807 Int (length/-134980193 var1325)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto (branch) 
(assert (>= var1711 var1807)) ; Cond: $i0 >= $i1 
 ; Statement: if z0 == 0 goto $r2 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (= (ite var3115 1 0) 0)) ; Cond: z0 == 0 
(define-const var1961 var1497 var1497-init) ; Statement: $r2 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var3187 String (src/-2081171709 var1694)) ; Statement: $r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var948 Int (pos/-2081171709 var1694)) ; Statement: $i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var1961 "value or name" var3187 var948)) ; Statement: specialinvoke $r2.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("value or name", $r3, $i2) 

(declare-const var1961!1 var1497)
(declare-const var65 String)
(declare-const var3187!1 String)
(declare-const var948!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var1497-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var1435=freemarker.core._ObjectBuilderSettingEvaluator, var1694=r0, var3115=z0, var2472=z2, var1766=z1, var3325=z3, var1711=$i0, var1325=$r1, var1807=$i1, var1497=freemarker.core._ObjectBuilderSettingEvaluationException, var1961=$r2, var3187=$r3, var948=$i2, var65="value or name"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1435, r0=var1694, z0=var3115, z2=var2472, z1=var1766, z3=var3325, $i0=var1711, $r1=var1325, $i1=var1807, freemarker.core._ObjectBuilderSettingEvaluationException=var1497, $r2=var1961, $r3=var3187, $i2=var948, "value or name"=var65}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	z2 := @parameter1: boolean;	z1 := @parameter2: boolean;	z3 := @parameter3: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto (branch);	if z0 == 0 goto $r2 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r2 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r2.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("value or name", $r3, $i2);	throw $r2
;block_num 3