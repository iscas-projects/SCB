(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2151 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2151 null-String)))
(define-const var611 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var1006 Int 0) ; Statement: l9 = 0L 
(define-const var2745 Int 0) ; Statement: i10 = 0 
(define-const var1736 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var758 Int (length/-134980193 var2151)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i11 >= $i0 goto (branch) 
(assert (>= var1736 var758)) ; Cond: i11 >= $i0 
 ; Statement: if z0 == 0 goto l17 = -3750763034362895579L 
(assert (= (ite var611 1 0) 0)) ; Cond: z0 == 0 
(define-const var1571 Int (- 3750763034362895579)) ; Statement: l17 = -3750763034362895579L 
(define-const var2524 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1467 Int (length/-134980193 var2151)) ; Statement: $i19 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i18 >= $i19 goto return l17 
(assert (>= var2524 var1467)) ; Cond: i18 >= $i19 
 ; Statement: return l17 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2151=r0, var1975=null_type, var611=z0, var1006=l9, var2745=i10, var1736=i11, var758=$i0, var1571=l17, var2524=i18, var1467=$i19}
; {r0=var2151, null_type=var1975, z0=var611, l9=var1006, i10=var2745, i11=var1736, $i0=var758, l17=var1571, i18=var2524, $i19=var1467}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	z0 = 1;	l9 = 0L;	i10 = 0;	i11 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i11 >= $i0 goto (branch);	if z0 == 0 goto l17 = -3750763034362895579L;	l17 = -3750763034362895579L;	i18 = 0;	$i19 = virtualinvoke r0.<java.lang.String: int length()>();	if i18 >= $i19 goto return l17;	return l17
;block_num 6