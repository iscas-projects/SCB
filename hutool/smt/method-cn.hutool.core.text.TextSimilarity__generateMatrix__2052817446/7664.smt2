(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var39 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-2-init () (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var580 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var580 null-String)))
(declare-const var1829 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1829 null-String)))
(assert true)
(define-const var2955 Int (length/-134980193 var580)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1660 Int (length/-134980193 var1829)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2481 Int (+ var2955 1)) ; Statement: $i3 = i0 + 1 
(define-const var1973 Int (+ var1660 1)) ; Statement: $i2 = i1 + 1 
(define-const var878 (Array Int (Array Int Int)) arr-Int-2-init) ; Statement: r2 = newmultiarray (int)[$i3][$i2] 
(define-const var740 Int 1) ; Statement: i17 = 1 
(assert true) ; Non Conditional
 ; Statement: if i17 > i0 goto return r2 
(assert (> var740 var2955)) ; Cond: i17 > i0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-2-init=([], int[][])}
; {var580=r0, var39=null_type, var1829=r1, var2955=i0, var1660=i1, var2481=$i3, var1973=$i2, var878=r2, var740=i17}
; {r0=var580, null_type=var39, r1=var1829, i0=var2955, i1=var1660, $i3=var2481, $i2=var1973, r2=var878, i17=var740}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = i0 + 1;	$i2 = i1 + 1;	r2 = newmultiarray (int)[$i3][$i2];	i17 = 1;	if i17 > i0 goto return r2;	return r2
;block_num 3