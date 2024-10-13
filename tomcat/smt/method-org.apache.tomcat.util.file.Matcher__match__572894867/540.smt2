(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var3019 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3019 null-String)))
(declare-const var1994 (Array Int Int)) ; Statement: r2 := @parameter1: char[] 
(assert (not (= var1994 null-__Array__Int__Int__)))
(declare-const var2480 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2480 null-Bool)))
(assert true)
(define-const var2699 (Array Int Int) (toCharArray/415275702 var3019)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2730 Int 0) ; Statement: i17 = 0 
(define-const var2459 Int (getLength-Arr-Int-1 var2699)) ; Statement: $i0 = lengthof r1 
(define-const var3906 Int (- var2459 1)) ; Statement: i18 = $i0 - 1 
(define-const var2753 Int 0) ; Statement: i19 = 0 
(define-const var2096 Int (getLength-Arr-Int-1 var1994)) ; Statement: $i1 = lengthof r2 
(define-const var1940 Int (- var2096 1)) ; Statement: i20 = $i1 - 1 
(define-const var215 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var161 Int (getLength-Arr-Int-1 var2699)) ; Statement: i21 = lengthof r1 
(define-const var359 Int 0) ; Statement: i22 = 0 
(assert true) ; Non Conditional
 ; Statement: if i22 >= i21 goto (branch) 
(assert (>= var359 var161)) ; Cond: i22 >= i21 
 ; Statement: if z8 != 0 goto (branch) 
(assert (not (not (= (ite var215 1 0) 0)))) ; Negate: Cond: z8 != 0  
 ; Statement: if i18 == i20 goto i24 = 0 
(assert (not (= var3906 var1940))) ; Negate: Cond: i18 == i20  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var3019=r0, var696=null_type, var1994=r2, var2480=z1, var2699=r1, var2730=i17, var2459=$i0, var3906=i18, var2753=i19, var2096=$i1, var1940=i20, var215=z8, var161=i21, var359=i22}
; {r0=var3019, null_type=var696, r2=var1994, z1=var2480, r1=var2699, i17=var2730, $i0=var2459, i18=var3906, i19=var2753, $i1=var2096, i20=var1940, z8=var215, i21=var161, i22=var359}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: char[];	z1 := @parameter2: boolean;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i17 = 0;	$i0 = lengthof r1;	i18 = $i0 - 1;	i19 = 0;	$i1 = lengthof r2;	i20 = $i1 - 1;	z8 = 0;	i21 = lengthof r1;	i22 = 0;	if i22 >= i21 goto (branch);	if z8 != 0 goto (branch);	if i18 == i20 goto i24 = 0;	return 0
;block_num 5