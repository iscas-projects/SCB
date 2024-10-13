(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2846 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2846 null-String)))
(declare-const var3820 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3820 null-String)))
(declare-const var492 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var492 null-Bool)))
(assert true)
(define-const var397 (Array Int Int) (toCharArray/415275702 var2846)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var1 (Array Int Int) (toCharArray/415275702 var3820)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(define-const var150 Int 0) ; Statement: i18 = 0 
(define-const var3909 Int (getLength-Arr-Int-1 var397)) ; Statement: $i0 = lengthof r1 
(define-const var2449 Int (- var3909 1)) ; Statement: i19 = $i0 - 1 
(define-const var407 Int 0) ; Statement: i20 = 0 
(define-const var3947 Int (getLength-Arr-Int-1 var1)) ; Statement: $i1 = lengthof r3 
(define-const var514 Int (- var3947 1)) ; Statement: i21 = $i1 - 1 
(define-const var254 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var703 Int (getLength-Arr-Int-1 var397)) ; Statement: i22 = lengthof r1 
(define-const var2953 Int 0) ; Statement: i23 = 0 
(assert true) ; Non Conditional
 ; Statement: if i23 >= i22 goto (branch) 
(assert (>= var2953 var703)) ; Cond: i23 >= i22 
 ; Statement: if z8 != 0 goto (branch) 
(assert (not (= (ite var254 1 0) 0))) ; Cond: z8 != 0 
 ; Statement: if i19 != 0 goto $c15 = r1[i18] 
(assert (not (not (= var2449 0)))) ; Negate: Cond: i19 != 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var2846=r0, var1510=null_type, var3820=r2, var492=z1, var397=r1, var1=r3, var150=i18, var3909=$i0, var2449=i19, var407=i20, var3947=$i1, var514=i21, var254=z8, var703=i22, var2953=i23}
; {r0=var2846, null_type=var1510, r2=var3820, z1=var492, r1=var397, r3=var1, i18=var150, $i0=var3909, i19=var2449, i20=var407, $i1=var3947, i21=var514, z8=var254, i22=var703, i23=var2953}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	i18 = 0;	$i0 = lengthof r1;	i19 = $i0 - 1;	i20 = 0;	$i1 = lengthof r3;	i21 = $i1 - 1;	z8 = 0;	i22 = lengthof r1;	i23 = 0;	if i23 >= i22 goto (branch);	if z8 != 0 goto (branch);	if i19 != 0 goto $c15 = r1[i18];	return 1
;block_num 5