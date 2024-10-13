(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var525 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var525 null-String)))
(declare-const var3215 (Array Int Int)) ; Statement: r2 := @parameter1: char[] 
(assert (not (= var3215 null-__Array__Int__Int__)))
(declare-const var387 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var387 null-Bool)))
(assert true)
(define-const var3883 (Array Int Int) (toCharArray/415275702 var525)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1072 Int 0) ; Statement: i17 = 0 
(define-const var3630 Int (getLength-Arr-Int-1 var3883)) ; Statement: $i0 = lengthof r1 
(define-const var1383 Int (- var3630 1)) ; Statement: i18 = $i0 - 1 
(define-const var937 Int 0) ; Statement: i19 = 0 
(define-const var2453 Int (getLength-Arr-Int-1 var3215)) ; Statement: $i1 = lengthof r2 
(define-const var204 Int (- var2453 1)) ; Statement: i20 = $i1 - 1 
(define-const var839 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2785 Int (getLength-Arr-Int-1 var3883)) ; Statement: i21 = lengthof r1 
(define-const var3203 Int 0) ; Statement: i22 = 0 
(assert true) ; Non Conditional
 ; Statement: if i22 >= i21 goto (branch) 
(assert (>= var3203 var2785)) ; Cond: i22 >= i21 
 ; Statement: if z8 != 0 goto (branch) 
(assert (not (= (ite var839 1 0) 0))) ; Cond: z8 != 0 
 ; Statement: if i18 != 0 goto $c14 = r1[i17] 
(assert (not (not (= var1383 0)))) ; Negate: Cond: i18 != 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var525=r0, var2893=null_type, var3215=r2, var387=z1, var3883=r1, var1072=i17, var3630=$i0, var1383=i18, var937=i19, var2453=$i1, var204=i20, var839=z8, var2785=i21, var3203=i22}
; {r0=var525, null_type=var2893, r2=var3215, z1=var387, r1=var3883, i17=var1072, $i0=var3630, i18=var1383, i19=var937, $i1=var2453, i20=var204, z8=var839, i21=var2785, i22=var3203}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: char[];	z1 := @parameter2: boolean;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i17 = 0;	$i0 = lengthof r1;	i18 = $i0 - 1;	i19 = 0;	$i1 = lengthof r2;	i20 = $i1 - 1;	z8 = 0;	i21 = lengthof r1;	i22 = 0;	if i22 >= i21 goto (branch);	if z8 != 0 goto (branch);	if i18 != 0 goto $c14 = r1[i17];	return 1
;block_num 5