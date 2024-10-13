(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var190) Int)
(declare-fun src/-2081171709 (var190) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var190 var190)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3776 var190) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var3776 null-var190)))
(declare-const var506 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var506 null-String)))
(declare-const var477 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var477 null-Bool)))
(define-const var3357 Int (pos/-2081171709 var3776)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2915 String (src/-2081171709 var3776)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var94 Int (length/-134980193 var2915)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $c9 = 0 
(assert (>= var3357 var94)) ; Cond: $i0 >= $i1 
(define-const var1175 Int 0) ; Statement: $c9 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var500 Int (indexOf/-1037706067 var506 var1175)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9) 
(define-const var3176 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if $i2 == $i12 goto (branch) 
(assert (not (= var500 var3176))) ; Negate: Cond: $i2 == $i12  
(define-const var1511 Int (pos/-2081171709 var3776)) ; Statement: $i6 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var2288 Int (+ var1511 1)) ; Statement: $i7 = $i6 + 1 
(declare-const var3776!1 var190)
(assert (not (= var3776!1 null-var190)))
(assert (= (pos/-2081171709 var3776!1) var2288)) ; Statement: r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = $i7 
 ; Statement: return $c9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var190=freemarker.core._ObjectBuilderSettingEvaluator, var3776=r0, var506=r2, var3380=null_type, var477=z0, var3357=$i0, var2915=$r1, var94=$i1, var1175=$c9, var500=$i2, var3176=$i12, var1511=$i6, var2288=$i7}
; {freemarker.core._ObjectBuilderSettingEvaluator=var190, r0=var3776, r2=var506, null_type=var3380, z0=var477, $i0=var3357, $r1=var2915, $i1=var94, $c9=var1175, $i2=var500, $i12=var3176, $i6=var1511, $i7=var2288}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $c9 = 0;	$c9 = 0;	$i2 = virtualinvoke r2.<java.lang.String: int indexOf(int)>($c9);	$i12 = (int) -1;	if $i2 == $i12 goto (branch);	$i6 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$i7 = $i6 + 1;	r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> = $i7;	return $c9
;block_num 4