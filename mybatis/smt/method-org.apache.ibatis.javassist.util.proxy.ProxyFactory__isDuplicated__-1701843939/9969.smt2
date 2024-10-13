(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var610) String)
(declare-fun getLength-Arr-var610-1 ((Array Int var610)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var610__ (Array Int var610))
(declare-const var114 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var114 null-Int)))
(declare-const var3219 (Array Int var610)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var3219 null-__Array__Int__var610__)))
(define-const var2338 var610 (select var3219 var114)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var3060 String (getName/1227988463 var2338)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2002 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1097 Int (getLength-Arr-var610-1 var3219)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2002 var1097))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var2002 var114))) ; Negate: Cond: i2 == i0  
(define-const var1235 var610 (select var3219 var2002)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var829 String (getName/1227988463 var1235)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var63 Bool (= var3060 var829)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var63 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2002!1 Int (+ var2002 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1097!1 Int (getLength-Arr-var610-1 var3219)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2002!1 var1097!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var2002!1 var114))) ; Negate: Cond: i2 == i0  
(define-const var1235!1 var610 (select var3219 var2002!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var829!1 String (getName/1227988463 var1235!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var63!1 Bool (= var3060 var829!1)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var63!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2002!2 Int (+ var2002!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1097!2 Int (getLength-Arr-var610-1 var3219)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var2002!2 var1097!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var610-1=([java.lang.reflect.Method[]], int)}
; {var114=i0, var610=java.lang.reflect.Method, var3219=r0, var2338=$r1, var3060=r2, var2002=i2, var1097=$i1, var1235=$r3, var829=$r4, var63=$z0}
; {i0=var114, java.lang.reflect.Method=var610, r0=var3219, $r1=var2338, r2=var3060, i2=var2002, $i1=var1097, $r3=var1235, $r4=var829, $z0=var63}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 11