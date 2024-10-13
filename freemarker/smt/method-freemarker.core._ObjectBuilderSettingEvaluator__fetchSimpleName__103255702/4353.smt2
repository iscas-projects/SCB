(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var1693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3570) Int)
(declare-fun src/-2081171709 (var3570) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun isIdentifierStart/-1359950271 (var3570 Int) Bool)
(declare-fun var1693-init () var1693)
(declare-fun <init>/1302353489 (var1693 String String Int) void)
(declare-const null-var3570 var3570)
(declare-const null-Bool Bool)
(declare-const var3915 var3570) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3915 null-var3570)))
(declare-const var2614 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var2614 null-Bool)))
(define-const var700 Int (pos/-2081171709 var3915)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var658 String (src/-2081171709 var3915)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var990 Int (length/-134980193 var658)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c13 = 0 
(assert (>= var700 var990)) ; Cond: $i0 >= $i1 
(define-const var889 Int 0) ; Statement: $c13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var642 Bool (isIdentifierStart/-1359950271 var3915 var889)) ; Statement: $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13) 
 ; Statement: if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (not (not (= (ite var642 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (= (ite var2614 1 0) 0)) ; Cond: z2 == 0 
(define-const var1724 var1693 var1693-init) ; Statement: $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(define-const var3831 String (src/-2081171709 var3915)) ; Statement: $r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var2058 Int (pos/-2081171709 var3915)) ; Statement: $i11 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert true)
;(assert (<init>/1302353489 var1724 "class name" var3831 var2058)) ; Statement: specialinvoke $r6.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("class name", $r7, $i11) 

(declare-const var1724!1 var1693)
(declare-const var817 String)
(declare-const var3831!1 String)
(declare-const var2058!1 Int)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), isIdentifierStart/-1359950271=([freemarker.core._ObjectBuilderSettingEvaluator, char], boolean), var1693-init=([], freemarker.core._ObjectBuilderSettingEvaluationException), <init>/1302353489=([freemarker.core._ObjectBuilderSettingEvaluationException, java.lang.String, java.lang.String, int], void)}
; {var3570=freemarker.core._ObjectBuilderSettingEvaluator, var3915=r0, var2614=z2, var700=$i0, var658=$r1, var990=$i1, var889=$c13, var642=$z0, var1693=freemarker.core._ObjectBuilderSettingEvaluationException, var1724=$r6, var3831=$r7, var2058=$i11, var817="class name"}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3570, r0=var3915, z2=var2614, $i0=var700, $r1=var658, $i1=var990, $c13=var889, $z0=var642, freemarker.core._ObjectBuilderSettingEvaluationException=var1693, $r6=var1724, $r7=var3831, $i11=var2058, "class name"=var817}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z2 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c13 = 0;	$c13 = 0;	$z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13);	if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	$r7 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i11 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	specialinvoke $r6.<freemarker.core._ObjectBuilderSettingEvaluationException: void <init>(java.lang.String,java.lang.String,int)>("class name", $r7, $i11);	throw $r6
;block_num 5