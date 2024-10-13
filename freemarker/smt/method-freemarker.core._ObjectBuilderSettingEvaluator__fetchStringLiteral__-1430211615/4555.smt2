(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var1865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3469) Int)
(declare-fun src/-2081171709 (var3469) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1865-init () var1865)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun <init>/1302353489 (var1865 String String Int) void)
(declare-const null-var3469 var3469)
(declare-const null-Bool Bool)
(declare-const var2381 var3469) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var2381 null-var3469)))
(declare-const var425 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var425 null-Bool)))
(define-const var2622 Int (pos/-2081171709 var2381)) ; Statement: i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var615 Int 0) ; Statement: b19 = 0 
(define-const var1141 Int 0) ; Statement: c29 = 0 
(define-const var373 Int 0) ; Statement: b28 = 0 
(define-const var3062 Int 0) ; Statement: b27 = 0 
(define-const var2905 Int 0) ; Statement: b26 = 0 
(define-const var1438 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3673 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2854 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1224 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3993 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var545 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true) ; Non Conditional
(define-const var2690 Int (pos/-2081171709 var2381)) ; Statement: $i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var1983 String (src/-2081171709 var2381)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3328 Int (length/-134980193 var1983)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert (not (not (= var2690 var3328)))) ; Negate: Cond: $i1 != $i2  
 ; Statement: if b26 == 0 goto $i24 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (not (= var2905 0))) ; Negate: Cond: b26 == 0  
(define-const var3054 var1865 var1865-init) ; Statement: $r22 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var1396 String (String_valueOf/-371898945 var1141)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c29) 
(define-const var862 String (src/-2081171709 var2381)) ; Statement: $r13 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var1466 Int (pos/-2081171709 var2381)) ; Statement: $i18 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var3054 var1396 var862 var1466)) ; Statement: specialinvoke $r22.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>($r14, $r13, $i18) 

(declare-const var3054!1 var1865)
(declare-const var1396!1 String)
(declare-const var862!1 String)
(declare-const var1466!1 Int)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var1865-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), String_valueOf/-371898945=([char], java.lang.String), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var3469=freemarker.core._ObjectBuilderSettingEvaluator, var2381=r0, var425=z0, var2622=i0, var615=b19, var1141=c29, var373=b28, var3062=b27, var2905=b26, var1438=z1, var3673=z2, var2854=z6, var1224=z5, var3993=z4, var545=z3, var2690=$i1, var1983=$r1, var3328=$i2, var1865=freemarker.core._ObjectBuilderSettingEvaluationException, var3054=$r22, var1396=$r14, var862=$r13, var1466=$i18}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3469, r0=var2381, z0=var425, i0=var2622, b19=var615, c29=var1141, b28=var373, b27=var3062, b26=var2905, z1=var1438, z2=var3673, z6=var2854, z5=var1224, z4=var3993, z3=var545, $i1=var2690, $r1=var1983, $i2=var3328, freemarker.core._ObjectBuilderSettingEvaluationException=var1865, $r22=var3054, $r14=var1396, $r13=var862, $i18=var1466}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	b19 = 0;	c29 = 0;	b28 = 0;	b27 = 0;	b26 = 0;	z1 = 0;	z2 = 0;	z6 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	$i1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i1 != $i2 goto $r2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	if b26 == 0 goto $i24 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r22 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r14 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c29);	$r13 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i18 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r22.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>($r14, $r13, $i18);	throw $r22
;block_num 4