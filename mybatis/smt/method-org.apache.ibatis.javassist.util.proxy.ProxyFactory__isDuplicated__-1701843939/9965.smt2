(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2985) String)
(declare-fun getLength-Arr-var2985-1 ((Array Int var2985)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2985__ (Array Int var2985))
(declare-const var1296 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1296 null-Int)))
(declare-const var2404 (Array Int var2985)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var2404 null-__Array__Int__var2985__)))
(define-const var1660 var2985 (select var2404 var1296)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var1084 String (getName/1227988463 var1660)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3261 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3528 Int (getLength-Arr-var2985-1 var2404)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var3261 var3528))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var3261 var1296))) ; Negate: Cond: i2 == i0  
(define-const var2850 var2985 (select var2404 var3261)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var1519 String (getName/1227988463 var2850)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2835 Bool (= var1084 var1519)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var2835 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3261!1 Int (+ var3261 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var3528!1 Int (getLength-Arr-var2985-1 var2404)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var3261!1 var3528!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var3261!1 var1296)) ; Cond: i2 == i0 
(define-const var3261!2 Int (+ var3261!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var3528!2 Int (getLength-Arr-var2985-1 var2404)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var3261!2 var3528!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var2985-1=([java.lang.reflect.Method[]], int)}
; {var1296=i0, var2985=java.lang.reflect.Method, var2404=r0, var1660=$r1, var1084=r2, var3261=i2, var3528=$i1, var2850=$r3, var1519=$r4, var2835=$z0}
; {i0=var1296, java.lang.reflect.Method=var2985, r0=var2404, $r1=var1660, r2=var1084, i2=var3261, $i1=var3528, $r3=var2850, $r4=var1519, $z0=var2835}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 10