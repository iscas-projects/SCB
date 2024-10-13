(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var602 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var602 null-String)))
(declare-const var2794 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2794 null-String)))
(declare-const var197 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var197 null-Bool)))
(assert true)
(define-const var840 (Array Int Int) (toCharArray/415275702 var602)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var3168 (Array Int Int) (toCharArray/415275702 var2794)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(define-const var347 Int 0) ; Statement: i18 = 0 
(define-const var1198 Int (getLength-Arr-Int-1 var840)) ; Statement: $i0 = lengthof r1 
(define-const var2082 Int (- var1198 1)) ; Statement: i19 = $i0 - 1 
(define-const var3747 Int 0) ; Statement: i20 = 0 
(define-const var1822 Int (getLength-Arr-Int-1 var3168)) ; Statement: $i1 = lengthof r3 
(define-const var395 Int (- var1822 1)) ; Statement: i21 = $i1 - 1 
(define-const var609 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var945 Int (getLength-Arr-Int-1 var840)) ; Statement: i22 = lengthof r1 
(define-const var2358 Int 0) ; Statement: i23 = 0 
(assert true) ; Non Conditional
 ; Statement: if i23 >= i22 goto (branch) 
(assert (>= var2358 var945)) ; Cond: i23 >= i22 
 ; Statement: if z8 != 0 goto (branch) 
(assert (not (not (= (ite var609 1 0) 0)))) ; Negate: Cond: z8 != 0  
 ; Statement: if i19 == i21 goto i25 = 0 
(assert (not (= var2082 var395))) ; Negate: Cond: i19 == i21  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var602=r0, var1417=null_type, var2794=r2, var197=z1, var840=r1, var3168=r3, var347=i18, var1198=$i0, var2082=i19, var3747=i20, var1822=$i1, var395=i21, var609=z8, var945=i22, var2358=i23}
; {r0=var602, null_type=var1417, r2=var2794, z1=var197, r1=var840, r3=var3168, i18=var347, $i0=var1198, i19=var2082, i20=var3747, $i1=var1822, i21=var395, z8=var609, i22=var945, i23=var2358}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	i18 = 0;	$i0 = lengthof r1;	i19 = $i0 - 1;	i20 = 0;	$i1 = lengthof r3;	i21 = $i1 - 1;	z8 = 0;	i22 = lengthof r1;	i23 = 0;	if i23 >= i22 goto (branch);	if z8 != 0 goto (branch);	if i19 == i21 goto i25 = 0;	return 0
;block_num 5