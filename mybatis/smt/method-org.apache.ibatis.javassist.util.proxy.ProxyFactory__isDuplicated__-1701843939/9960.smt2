(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1394) String)
(declare-fun getLength-Arr-var1394-1 ((Array Int var1394)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1394__ (Array Int var1394))
(declare-const var381 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var381 null-Int)))
(declare-const var21 (Array Int var1394)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var21 null-__Array__Int__var1394__)))
(define-const var2912 var1394 (select var21 var381)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var250 String (getName/1227988463 var2912)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2895 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2312 Int (getLength-Arr-var1394-1 var21)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2895 var2312))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var2895 var381))) ; Negate: Cond: i2 == i0  
(define-const var2280 var1394 (select var21 var2895)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var2404 String (getName/1227988463 var2280)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1743 Bool (= var250 var2404)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var1743 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2895!1 Int (+ var2895 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var2312!1 Int (getLength-Arr-var1394-1 var21)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var2895!1 var2312!1)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var1394-1=([java.lang.reflect.Method[]], int)}
; {var381=i0, var1394=java.lang.reflect.Method, var21=r0, var2912=$r1, var250=r2, var2895=i2, var2312=$i1, var2280=$r3, var2404=$r4, var1743=$z0}
; {i0=var381, java.lang.reflect.Method=var1394, r0=var21, $r1=var2912, r2=var250, i2=var2895, $i1=var2312, $r3=var2280, $r4=var2404, $z0=var1743}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 7