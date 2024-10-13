(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var3449) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var3449 var3449)
(declare-const var499 var3449) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var499 null-var3449)))
(declare-const var2563 var3449) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2563 null-var3449)))
(assert true)
(define-const var256 (Array Int ClassObject) (getParameterTypes/827748249 var499)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var3076 (Array Int ClassObject) (getParameterTypes/827748249 var2563)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var478 Int (getLength-Arr-ClassObject-1 var256)) ; Statement: $i1 = lengthof r1 
(define-const var1417 Int (getLength-Arr-ClassObject-1 var3076)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var478 var1417)))) ; Negate: Cond: $i1 != $i0  
(define-const var3563 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2490 Int (getLength-Arr-ClassObject-1 var256)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3563 var2490))) ; Negate: Cond: i3 >= $i2  
(define-const var2607 ClassObject (select var256 var3563)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2448 String (getName/-1958580599 var2607)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var3973 ClassObject (select var3076 var3563)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2384 String (getName/-1958580599 var3973)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1670 Bool (= var2448 var2384)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1670 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3563!1 Int (+ var3563 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2490!1 Int (getLength-Arr-ClassObject-1 var256)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3563!1 var2490!1))) ; Negate: Cond: i3 >= $i2  
(define-const var2607!1 ClassObject (select var256 var3563!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2448!1 String (getName/-1958580599 var2607!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var3973!1 ClassObject (select var3076 var3563!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2384!1 String (getName/-1958580599 var3973!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1670!1 Bool (= var2448!1 var2384!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1670!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3563!2 Int (+ var3563!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2490!2 Int (getLength-Arr-ClassObject-1 var256)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3563!2 var2490!2))) ; Negate: Cond: i3 >= $i2  
(define-const var2607!2 ClassObject (select var256 var3563!2)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2448!2 String (getName/-1958580599 var2607!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var3973!2 ClassObject (select var3076 var3563!2)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2384!2 String (getName/-1958580599 var3973!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1670!2 Bool (= var2448!2 var2384!2)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1670!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3563!3 Int (+ var3563!2 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2490!3 Int (getLength-Arr-ClassObject-1 var256)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (>= var3563!3 var2490!3)) ; Cond: i3 >= $i2 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3449=java.lang.reflect.Method, var499=r0, var2563=r2, var256=r1, var3076=r3, var478=$i1, var1417=$i0, var3563=i3, var2490=$i2, var2607=$r4, var2448=$r7, var3973=$r5, var2384=$r6, var1670=$z0}
; {java.lang.reflect.Method=var3449, r0=var499, r2=var2563, r1=var256, r3=var3076, $i1=var478, $i0=var1417, i3=var3563, $i2=var2490, $r4=var2607, $r7=var2448, $r5=var3973, $r6=var2384, $z0=var1670}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	return 1
;block_num 16