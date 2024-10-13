(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var279) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var279 var279)
(declare-const var2539 var279) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2539 null-var279)))
(declare-const var971 var279) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var971 null-var279)))
(assert true)
(define-const var3612 (Array Int ClassObject) (getParameterTypes/827748249 var2539)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var3006 (Array Int ClassObject) (getParameterTypes/827748249 var971)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3938 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i1 = lengthof r1 
(define-const var3639 Int (getLength-Arr-ClassObject-1 var3006)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var3938 var3639)))) ; Negate: Cond: $i1 != $i0  
(define-const var1191 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3837 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1191 var3837))) ; Negate: Cond: i3 >= $i2  
(define-const var1434 ClassObject (select var3612 var1191)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2654 String (getName/-1958580599 var1434)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var852 ClassObject (select var3006 var1191)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var281 String (getName/-1958580599 var852)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2841 Bool (= var2654 var281)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2841 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1191!1 Int (+ var1191 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3837!1 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1191!1 var3837!1))) ; Negate: Cond: i3 >= $i2  
(define-const var1434!1 ClassObject (select var3612 var1191!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2654!1 String (getName/-1958580599 var1434!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var852!1 ClassObject (select var3006 var1191!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var281!1 String (getName/-1958580599 var852!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2841!1 Bool (= var2654!1 var281!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2841!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1191!2 Int (+ var1191!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3837!2 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1191!2 var3837!2))) ; Negate: Cond: i3 >= $i2  
(define-const var1434!2 ClassObject (select var3612 var1191!2)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2654!2 String (getName/-1958580599 var1434!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var852!2 ClassObject (select var3006 var1191!2)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var281!2 String (getName/-1958580599 var852!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2841!2 Bool (= var2654!2 var281!2)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2841!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1191!3 Int (+ var1191!2 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3837!3 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1191!3 var3837!3))) ; Negate: Cond: i3 >= $i2  
(define-const var1434!3 ClassObject (select var3612 var1191!3)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2654!3 String (getName/-1958580599 var1434!3)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var852!3 ClassObject (select var3006 var1191!3)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var281!3 String (getName/-1958580599 var852!3)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2841!3 Bool (= var2654!3 var281!3)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2841!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1191!4 Int (+ var1191!3 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3837!4 Int (getLength-Arr-ClassObject-1 var3612)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (>= var1191!4 var3837!4)) ; Cond: i3 >= $i2 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var279=java.lang.reflect.Method, var2539=r0, var971=r2, var3612=r1, var3006=r3, var3938=$i1, var3639=$i0, var1191=i3, var3837=$i2, var1434=$r4, var2654=$r7, var852=$r5, var281=$r6, var2841=$z0}
; {java.lang.reflect.Method=var279, r0=var2539, r2=var971, r1=var3612, r3=var3006, $i1=var3938, $i0=var3639, i3=var1191, $i2=var3837, $r4=var1434, $r7=var2654, $r5=var852, $r6=var281, $z0=var2841}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 4}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	return 1
;block_num 20