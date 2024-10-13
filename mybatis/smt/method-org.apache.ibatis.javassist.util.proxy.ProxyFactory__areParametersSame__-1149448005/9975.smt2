(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var3370) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var3370 var3370)
(declare-const var1459 var3370) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1459 null-var3370)))
(declare-const var3975 var3370) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3975 null-var3370)))
(assert true)
(define-const var1187 (Array Int ClassObject) (getParameterTypes/827748249 var1459)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var2481 (Array Int ClassObject) (getParameterTypes/827748249 var3975)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3254 Int (getLength-Arr-ClassObject-1 var1187)) ; Statement: $i1 = lengthof r1 
(define-const var2642 Int (getLength-Arr-ClassObject-1 var2481)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var3254 var2642)))) ; Negate: Cond: $i1 != $i0  
(define-const var3219 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1750 Int (getLength-Arr-ClassObject-1 var1187)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3219 var1750))) ; Negate: Cond: i3 >= $i2  
(define-const var1366 ClassObject (select var1187 var3219)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2229 String (getName/-1958580599 var1366)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var2884 ClassObject (select var2481 var3219)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2297 String (getName/-1958580599 var2884)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var340 Bool (= var2229 var2297)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var340 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3219!1 Int (+ var3219 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var1750!1 Int (getLength-Arr-ClassObject-1 var1187)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3219!1 var1750!1))) ; Negate: Cond: i3 >= $i2  
(define-const var1366!1 ClassObject (select var1187 var3219!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2229!1 String (getName/-1958580599 var1366!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var2884!1 ClassObject (select var2481 var3219!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2297!1 String (getName/-1958580599 var2884!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var340!1 Bool (= var2229!1 var2297!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var340!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3370=java.lang.reflect.Method, var1459=r0, var3975=r2, var1187=r1, var2481=r3, var3254=$i1, var2642=$i0, var3219=i3, var1750=$i2, var1366=$r4, var2229=$r7, var2884=$r5, var2297=$r6, var340=$z0}
; {java.lang.reflect.Method=var3370, r0=var1459, r2=var3975, r1=var1187, r3=var2481, $i1=var3254, $i0=var2642, i3=var3219, $i2=var1750, $r4=var1366, $r7=var2229, $r5=var2884, $r6=var2297, $z0=var340}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	return 0
;block_num 9