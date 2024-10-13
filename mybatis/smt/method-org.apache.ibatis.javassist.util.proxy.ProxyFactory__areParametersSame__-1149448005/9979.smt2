(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var940) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var940 var940)
(declare-const var3972 var940) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3972 null-var940)))
(declare-const var3156 var940) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3156 null-var940)))
(assert true)
(define-const var3655 (Array Int ClassObject) (getParameterTypes/827748249 var3972)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var1393 (Array Int ClassObject) (getParameterTypes/827748249 var3156)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2775 Int (getLength-Arr-ClassObject-1 var3655)) ; Statement: $i1 = lengthof r1 
(define-const var708 Int (getLength-Arr-ClassObject-1 var1393)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var2775 var708)))) ; Negate: Cond: $i1 != $i0  
(define-const var339 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3386 Int (getLength-Arr-ClassObject-1 var3655)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var339 var3386))) ; Negate: Cond: i3 >= $i2  
(define-const var1188 ClassObject (select var3655 var339)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3359 String (getName/-1958580599 var1188)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var210 ClassObject (select var1393 var339)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3903 String (getName/-1958580599 var210)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2482 Bool (= var3359 var3903)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2482 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var339!1 Int (+ var339 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3386!1 Int (getLength-Arr-ClassObject-1 var3655)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var339!1 var3386!1))) ; Negate: Cond: i3 >= $i2  
(define-const var1188!1 ClassObject (select var3655 var339!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3359!1 String (getName/-1958580599 var1188!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var210!1 ClassObject (select var1393 var339!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3903!1 String (getName/-1958580599 var210!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2482!1 Bool (= var3359!1 var3903!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2482!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var339!2 Int (+ var339!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3386!2 Int (getLength-Arr-ClassObject-1 var3655)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var339!2 var3386!2))) ; Negate: Cond: i3 >= $i2  
(define-const var1188!2 ClassObject (select var3655 var339!2)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3359!2 String (getName/-1958580599 var1188!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var210!2 ClassObject (select var1393 var339!2)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3903!2 String (getName/-1958580599 var210!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2482!2 Bool (= var3359!2 var3903!2)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2482!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var339!3 Int (+ var339!2 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3386!3 Int (getLength-Arr-ClassObject-1 var3655)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var339!3 var3386!3))) ; Negate: Cond: i3 >= $i2  
(define-const var1188!3 ClassObject (select var3655 var339!3)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3359!3 String (getName/-1958580599 var1188!3)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var210!3 ClassObject (select var1393 var339!3)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var3903!3 String (getName/-1958580599 var210!3)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2482!3 Bool (= var3359!3 var3903!3)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2482!3 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var940=java.lang.reflect.Method, var3972=r0, var3156=r2, var3655=r1, var1393=r3, var2775=$i1, var708=$i0, var339=i3, var3386=$i2, var1188=$r4, var3359=$r7, var210=$r5, var3903=$r6, var2482=$z0}
; {java.lang.reflect.Method=var940, r0=var3972, r2=var3156, r1=var3655, r3=var1393, $i1=var2775, $i0=var708, i3=var339, $i2=var3386, $r4=var1188, $r7=var3359, $r5=var210, $r6=var3903, $z0=var2482}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 4}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	return 0
;block_num 17