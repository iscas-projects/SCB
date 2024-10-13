(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var3895) Int)
(declare-fun src/-2081171709 (var3895) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun isIdentifierStart/-1359950271 (var3895 Int) Bool)
(declare-const null-var3895 var3895)
(declare-const null-Bool Bool)
(declare-const var1628 var3895) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var1628 null-var3895)))
(declare-const var3256 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var3256 null-Bool)))
(define-const var2629 Int (pos/-2081171709 var1628)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var147 String (src/-2081171709 var1628)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var3817 Int (length/-134980193 var147)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c13 = 0 
(assert (not (>= var2629 var3817))) ; Negate: Cond: $i0 >= $i1  
(define-const var2500 String (src/-2081171709 var1628)) ; Statement: $r8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var3510 Int (pos/-2081171709 var1628)) ; Statement: $i12 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (and true (and (> (str.len var2500) var3510) (<= 0 var3510))))
(define-const var1449 Int (charAt/698050440 var2500 var3510)) ; Statement: $c13 = virtualinvoke $r8.<java.lang.String: char charAt(int)>($i12) 
 ; Statement: goto [?= $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1424 Bool (isIdentifierStart/-1359950271 var1628 var1449)) ; Statement: $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13) 
 ; Statement: if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (not (not (= (ite var1424 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= (ite var3256 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), isIdentifierStart/-1359950271=([freemarker.core._ObjectBuilderSettingEvaluator, char], boolean)}
; {var3895=freemarker.core._ObjectBuilderSettingEvaluator, var1628=r0, var3256=z2, var2629=$i0, var147=$r1, var3817=$i1, var2500=$r8, var3510=$i12, var1449=$c13, var1424=$z0}
; {freemarker.core._ObjectBuilderSettingEvaluator=var3895, r0=var1628, z2=var3256, $i0=var2629, $r1=var147, $i1=var3817, $r8=var2500, $i12=var3510, $c13=var1449, $z0=var1424}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z2 := @parameter0: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c13 = 0;	$r8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i12 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$c13 = virtualinvoke $r8.<java.lang.String: char charAt(int)>($i12);	goto [?= $z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13)];	$z0 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: boolean isIdentifierStart(char)>($c13);	if $z0 != 0 goto i2 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	if z2 == 0 goto $r6 = new freemarker.core._ObjectBuilderSettingEvaluationException;	return null
;block_num 5