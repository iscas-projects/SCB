(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1793 0)
(declare-sort var839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var1793) Int)
(declare-fun src/-2081171709 (var1793) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1793 var1793)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1813 var1793) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var1813 null-var1793)))
(declare-const var1309 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1309 null-String)))
(declare-const var2329 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2329 null-Bool)))
(define-const var989 Int (pos/-2081171709 var1813)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var3616 String (src/-2081171709 var1813)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var996 Int (length/-134980193 var3616)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c9 = 0 
(assert (not (>= var989 var996))) ; Negate: Cond: $i0 >= $i1  
(define-const var1269 String (src/-2081171709 var1813)) ; Statement: $r9 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(define-const var381 Int (pos/-2081171709 var1813)) ; Statement: $i8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(assert (and true (and (> (str.len var1269) var381) (<= 0 var381))))
(define-const var3840 Int (charAt/698050440 var1269 var381)) ; Statement: $c9 = virtualinvoke $r9.<java.lang.String: char charAt(int)>($i8) 
 ; Statement: goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2348 Int (indexOf/-1037706067 var1309 var3840)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9) 
(define-const var2368 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if $i2 == $i12 goto (branch) 
(assert (not (= var2348 var2368))) ; Negate: Cond: $i2 == $i12  
(define-const var3428 Int (pos/-2081171709 var1813)) ; Statement: $i6 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var1403 Int (+ var3428 1)) ; Statement: $i7 = $i6 + 1 
(declare-const var1813!1 var1793)
(assert (not (= var1813!1 null-var1793)))
(assert (= (pos/-2081171709 var1813!1) var1403)) ; Statement: r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = $i7 
 ; Statement: return $c9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1793=freemarker.core._ObjectBuilderSettingEvaluator, var1813=r0, var1309=r2, var839=null_type, var2329=z0, var989=$i0, var3616=$r1, var996=$i1, var1269=$r9, var381=$i8, var3840=$c9, var2348=$i2, var2368=$i12, var3428=$i6, var1403=$i7}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1793, r0=var1813, r2=var1309, null_type=var839, z0=var2329, $i0=var989, $r1=var3616, $i1=var996, $r9=var1269, $i8=var381, $c9=var3840, $i2=var2348, $i12=var2368, $i6=var3428, $i7=var1403}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c9 = 0;	$r9 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i8 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$c9 = virtualinvoke $r9.<java.lang.String: char charAt(int)>($i8);	goto [?= $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9)];	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9);	$i12 = (int) -1;	if $i2 == $i12 goto (branch);	$i6 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$i7 = $i6 + 1;	r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = $i7;	return $c9
;block_num 4