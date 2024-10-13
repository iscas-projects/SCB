(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3441) Int)
(declare-fun src/-2081171709 (var3441) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun isIdentifierStart/-1359950271 (var3441 Int) Bool)
(declare-const null-var3441 var3441)
(declare-const null-Bool Bool)
(declare-const var181 var3441) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var181 null-var3441)))
(declare-const var1390 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1390 null-Bool)))
(define-const var3766 Int (pos/-2081171709 var181)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var1583 String (src/-2081171709 var181)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3302 Int (length/-134980193 var1583)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c13 = 0 
(assert (>= var3766 var3302)) ; Cond: $i0 >= $i1 
(define-const var364 Int 0) ; Statement: $c13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1743 Bool (isIdentifierStart/-1359950271 var181 var364)) ; Statement: $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13) 
 ; Statement: if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (not (not (= (ite var1743 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= (ite var1390 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), isIdentifierStart/-1359950271=([freemarker.core._ObjectBuilderSettingEvaluator, char], boolean)}
; {var3441=freemarker.core._ObjectBuilderSettingEvaluator, var181=r0, var1390=z2, var3766=$i0, var1583=$r1, var3302=$i1, var364=$c13, var1743=$z0}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3441, r0=var181, z2=var1390, $i0=var3766, $r1=var1583, $i1=var3302, $c13=var364, $z0=var1743}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z2 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c13 = 0;	$c13 = 0;	$z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13);	if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	return null
;block_num 5