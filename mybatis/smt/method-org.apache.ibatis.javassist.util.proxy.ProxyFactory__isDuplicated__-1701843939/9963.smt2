(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var889) String)
(declare-fun getLength-Arr-var889-1 ((Array Int var889)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var889__ (Array Int var889))
(declare-const var2816 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2816 null-Int)))
(declare-const var3244 (Array Int var889)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var3244 null-__Array__Int__var889__)))
(define-const var3746 var889 (select var3244 var2816)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var3209 String (getName/1227988463 var3746)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2765 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1379 Int (getLength-Arr-var889-1 var3244)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2765 var1379))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var2765 var2816)) ; Cond: i2 == i0 
(define-const var2765!1 Int (+ var2765 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1379!1 Int (getLength-Arr-var889-1 var3244)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2765!1 var1379!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var2765!1 var2816)) ; Cond: i2 == i0 
(define-const var2765!2 Int (+ var2765!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1379!2 Int (getLength-Arr-var889-1 var3244)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var2765!2 var1379!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var889-1=([java.lang.reflect.Method[]], int)}
; {var2816=i0, var889=java.lang.reflect.Method, var3244=r0, var3746=$r1, var3209=r2, var2765=i2, var1379=$i1}
; {i0=var2816, java.lang.reflect.Method=var889, r0=var3244, $r1=var3746, r2=var3209, i2=var2765, $i1=var1379}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 9