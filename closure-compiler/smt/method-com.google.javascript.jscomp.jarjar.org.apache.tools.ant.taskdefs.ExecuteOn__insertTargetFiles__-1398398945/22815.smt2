(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3865 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var3865 null-__Array__Int__String__)))
(declare-const var1813 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var1813 null-__Array__Int__String__)))
(declare-const var2372 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2372 null-Int)))
(declare-const var646 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var646 null-String)))
(declare-const var1384 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var1384 null-String)))
(assert true)
(define-const var1287 Bool (isEmpty/-1285796103 var646)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto i3 = 0 
(assert (= (ite var1287 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2788 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3842 Int (getLength-Arr-String-1 var3865)) ; Statement: $i4 = lengthof r1 
 ; Statement: if i3 >= $i4 goto return 
(assert (>= var2788 var3842)) ; Cond: i3 >= $i4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3865=r1, var1813=r2, var2372=i0, var646=r0, var523=null_type, var1384=r6, var1287=$z0, var2788=i3, var3842=$i4}
; {r1=var3865, r2=var1813, i0=var2372, r0=var646, null_type=var523, r6=var1384, $z0=var1287, i3=var2788, $i4=var3842}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r6 := @parameter4: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto i3 = 0;	i3 = 0;	$i4 = lengthof r1;	if i3 >= $i4 goto return;	return
;block_num 4