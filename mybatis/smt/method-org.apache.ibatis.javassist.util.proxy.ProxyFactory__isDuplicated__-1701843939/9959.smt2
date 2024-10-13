(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1841) String)
(declare-fun getLength-Arr-var1841-1 ((Array Int var1841)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1841__ (Array Int var1841))
(declare-const var2616 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2616 null-Int)))
(declare-const var3656 (Array Int var1841)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var3656 null-__Array__Int__var1841__)))
(define-const var2656 var1841 (select var3656 var2616)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var3210 String (getName/1227988463 var2656)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var774 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3946 Int (getLength-Arr-var1841-1 var3656)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var774 var3946))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var774 var2616)) ; Cond: i2 == i0 
(define-const var774!1 Int (+ var774 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var3946!1 Int (getLength-Arr-var1841-1 var3656)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var774!1 var3946!1)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var1841-1=([java.lang.reflect.Method[]], int)}
; {var2616=i0, var1841=java.lang.reflect.Method, var3656=r0, var2656=$r1, var3210=r2, var774=i2, var3946=$i1}
; {i0=var2616, java.lang.reflect.Method=var1841, r0=var3656, $r1=var2656, r2=var3210, i2=var774, $i1=var3946}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 6