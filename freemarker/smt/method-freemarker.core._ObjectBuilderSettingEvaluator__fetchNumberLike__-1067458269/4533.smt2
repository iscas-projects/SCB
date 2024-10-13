(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var609) Int)
(declare-fun src/-2081171709 (var609) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2038-init () var2038)
(declare-fun <init>/1302353489 (var2038 String String Int) void)
(declare-const null-var609 var609)
(declare-const null-Bool Bool)
(declare-const var3554 var609) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3554 null-var609)))
(declare-const var2981 Bool) ; Statement: z12 := @parameter0: boolean 
(assert (not (= var2981 null-Bool)))
(declare-const var2944 Bool) ; Statement: z11 := @parameter1: boolean 
(assert (not (= var2944 null-Bool)))
(define-const var2667 Int (pos/-2081171709 var3554)) ; Statement: i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2969 Bool (ite (= 1 0) true false)) ; Statement: z13 = 0 
(define-const var219 Bool (ite (= 1 0) true false)) ; Statement: z14 = 0 
(assert true) ; Non Conditional
(define-const var2248 Int (pos/-2081171709 var3554)) ; Statement: $i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2599 String (src/-2081171709 var3554)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3441 Int (length/-134980193 var2599)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var2248 var3441)))) ; Negate: Cond: $i1 != $i2  
 ; Statement: goto [?= $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>] 
(assert true) ; Non Conditional
(define-const var2905 Int (pos/-2081171709 var3554)) ; Statement: $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
 ; Statement: if i0 != $i4 goto $r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var2667 var2905)))) ; Negate: Cond: i0 != $i4  
 ; Statement: if z12 == 0 goto $r44 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (= (ite var2981 1 0) 0)) ; Cond: z12 == 0 
(define-const var2265 var2038 var2038-init) ; Statement: $r44 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var3044 String (src/-2081171709 var3554)) ; Statement: $r27 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var1542 Int (pos/-2081171709 var3554)) ; Statement: $i15 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var2265 "number-like" var3044 var1542)) ; Statement: specialinvoke $r44.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("number-like", $r27, $i15) 

(declare-const var2265!1 var2038)
(declare-const var3591 String)
(declare-const var3044!1 String)
(declare-const var1542!1 Int)
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var2038-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var609=freemarker.core._ObjectBuilderSettingEvaluator, var3554=r0, var2981=z12, var2944=z11, var2667=i0, var2969=z13, var219=z14, var2248=$i1, var2599=$r1, var3441=$i2, var2905=$i4, var2038=freemarker.core._ObjectBuilderSettingEvaluationException, var2265=$r44, var3044=$r27, var1542=$i15, var3591="number-like"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var609, r0=var3554, z12=var2981, z11=var2944, i0=var2667, z13=var2969, z14=var219, $i1=var2248, $r1=var2599, $i2=var3441, $i4=var2905, freemarker.core._ObjectBuilderSettingEvaluationException=var2038, $r44=var2265, $r27=var3044, $i15=var1542, "number-like"=var3591}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z12 := @parameter0: boolean;	z11 := @parameter1: boolean;	i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	z13 = 0;	z14 = 0;	$i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	goto [?= $i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>];	$i4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if i0 != $i4 goto $r3 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	if z12 == 0 goto $r44 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r44 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r27 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i15 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r44.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("number-like", $r27, $i15);	throw $r44
;block_num 6