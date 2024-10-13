(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var2626) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var2626 var2626)
(declare-const var991 var2626) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var991 null-var2626)))
(declare-const var3255 var2626) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3255 null-var2626)))
(assert true)
(define-const var2135 (Array Int ClassObject) (getParameterTypes/827748249 var991)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var33 (Array Int ClassObject) (getParameterTypes/827748249 var3255)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2338 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i1 = lengthof r1 
(define-const var2334 Int (getLength-Arr-ClassObject-1 var33)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var2338 var2334)))) ; Negate: Cond: $i1 != $i0  
(define-const var578 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var125 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var578 var125))) ; Negate: Cond: i3 >= $i2  
(define-const var1418 ClassObject (select var2135 var578)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var129 String (getName/-1958580599 var1418)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1492 ClassObject (select var33 var578)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3590 String (getName/-1958580599 var1492)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2678 Bool (= var129 var3590)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2678 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var578!1 Int (+ var578 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var125!1 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var578!1 var125!1))) ; Negate: Cond: i3 >= $i2  
(define-const var1418!1 ClassObject (select var2135 var578!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var129!1 String (getName/-1958580599 var1418!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1492!1 ClassObject (select var33 var578!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3590!1 String (getName/-1958580599 var1492!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2678!1 Bool (= var129!1 var3590!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2678!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var578!2 Int (+ var578!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var125!2 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var578!2 var125!2))) ; Negate: Cond: i3 >= $i2  
(define-const var1418!2 ClassObject (select var2135 var578!2)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var129!2 String (getName/-1958580599 var1418!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1492!2 ClassObject (select var33 var578!2)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3590!2 String (getName/-1958580599 var1492!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2678!2 Bool (= var129!2 var3590!2)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2678!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var578!3 Int (+ var578!2 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var125!3 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var578!3 var125!3))) ; Negate: Cond: i3 >= $i2  
(define-const var1418!3 ClassObject (select var2135 var578!3)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var129!3 String (getName/-1958580599 var1418!3)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1492!3 ClassObject (select var33 var578!3)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3590!3 String (getName/-1958580599 var1492!3)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2678!3 Bool (= var129!3 var3590!3)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2678!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var578!4 Int (+ var578!3 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var125!4 Int (getLength-Arr-ClassObject-1 var2135)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var578!4 var125!4))) ; Negate: Cond: i3 >= $i2  
(define-const var1418!4 ClassObject (select var2135 var578!4)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var129!4 String (getName/-1958580599 var1418!4)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1492!4 ClassObject (select var33 var578!4)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3590!4 String (getName/-1958580599 var1492!4)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2678!4 Bool (= var129!4 var3590!4)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2678!4 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2626=java.lang.reflect.Method, var991=r0, var3255=r2, var2135=r1, var33=r3, var2338=$i1, var2334=$i0, var578=i3, var125=$i2, var1418=$r4, var129=$r7, var1492=$r5, var3590=$r6, var2678=$z0}
; {java.lang.reflect.Method=var2626, r0=var991, r2=var3255, r1=var2135, r3=var33, $i1=var2338, $i0=var2334, i3=var578, $i2=var125, $r4=var1418, $r7=var129, $r5=var1492, $r6=var3590, $z0=var2678}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 5}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	return 0
;block_num 21