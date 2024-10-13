(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3318 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3318 null-String)))
(declare-const var3346 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3346 null-Bool)))
(declare-const var3386 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var3386 null-Bool)))
(declare-const var3601 (Array Int Int)) ; Statement: r4 := @parameter3: char[] 
(assert (not (= var3601 null-__Array__Int__Int__)))
(assert true)
(define-const var3973 Int (length/-134980193 var3318)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3947 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i24 = (int) -1 
(define-const var669 Int var3947) ; Statement: i15 = $i24 
(define-const var1514 Int 0) ; Statement: i16 = 0 
(define-const var2474 Int 0) ; Statement: i17 = 0 
(define-const var615 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto $i29 = (int) -1 
(assert (>= var615 var3973)) ; Cond: i18 >= i0 
(define-const var3585 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i29 = (int) -1 
 ; Statement: if i15 != $i29 goto $i1 = i0 + i17 
(assert (not (not (= var669 var3585)))) ; Negate: Cond: i15 != $i29  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3318=r0, var3387=null_type, var3346=z0, var3386=z2, var3601=r4, var3973=i0, var3947=$i24, var669=i15, var1514=i16, var2474=i17, var615=i18, var3585=$i29}
; {r0=var3318, null_type=var3387, z0=var3346, z2=var3386, r4=var3601, i0=var3973, $i24=var3947, i15=var669, i16=var1514, i17=var2474, i18=var615, $i29=var3585}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	z2 := @parameter2: boolean;	r4 := @parameter3: char[];	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i24 = (int) -1;	i15 = $i24;	i16 = 0;	i17 = 0;	i18 = 0;	if i18 >= i0 goto $i29 = (int) -1;	$i29 = (int) -1;	if i15 != $i29 goto $i1 = i0 + i17;	return r0
;block_num 4