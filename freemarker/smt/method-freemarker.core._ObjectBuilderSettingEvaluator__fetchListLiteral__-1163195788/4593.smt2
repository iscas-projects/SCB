(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var789 0)
(declare-sort var1810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var789) Int)
(declare-fun src/-2081171709 (var789) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1810-init () var1810)
(declare-fun <init>/1302353489 (var1810 String String Int) void)
(declare-const null-var789 var789)
(declare-const null-Bool Bool)
(declare-const var3951 var789) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3951 null-var789)))
(declare-const var3428 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3428 null-Bool)))
(define-const var1072 Int (pos/-2081171709 var3951)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var126 String (src/-2081171709 var3951)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3499 Int (length/-134980193 var126)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == $i1 goto (branch) 
(assert (= var1072 var3499)) ; Cond: $i0 == $i1 
 ; Statement: if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
(assert (not (not (= (ite var3428 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var1598 var1810 var1810-init) ; Statement: $r8 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var1705 String (src/-2081171709 var3951)) ; Statement: $r4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var1680 Int (pos/-2081171709 var3951)) ; Statement: $i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var1598 "[" var1705 var1680)) ; Statement: specialinvoke $r8.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("[", $r4, $i2) 

(declare-const var1598!1 var1810)
(declare-const var3186 String)
(declare-const var1705!1 String)
(declare-const var1680!1 Int)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), var1810-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var789=freemarker.core._ObjectBuilderSettingEvaluator, var3951=r0, var3428=z0, var1072=$i0, var126=$r1, var3499=$i1, var1810=freemarker.core._ObjectBuilderSettingEvaluationException, var1598=$r8, var1705=$r4, var1680=$i2, var3186="["}
; {freemarker.core._ObjectBuilderSettingEvaluator=var789, r0=var3951, z0=var3428, $i0=var1072, $r1=var126, $i1=var3499, freemarker.core._ObjectBuilderSettingEvaluationException=var1810, $r8=var1598, $r4=var1705, $i2=var1680, "["=var3186}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 == $i1 goto (branch);	if z0 != 0 goto $r2 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	$r8 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r4 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r8.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("[", $r4, $i2);	throw $r8
;block_num 3