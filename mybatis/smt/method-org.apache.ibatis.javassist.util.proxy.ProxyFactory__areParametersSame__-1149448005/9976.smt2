(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var1536) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1536 var1536)
(declare-const var3030 var1536) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3030 null-var1536)))
(declare-const var961 var1536) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var961 null-var1536)))
(assert true)
(define-const var1485 (Array Int ClassObject) (getParameterTypes/827748249 var3030)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var2799 (Array Int ClassObject) (getParameterTypes/827748249 var961)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var1246 Int (getLength-Arr-ClassObject-1 var1485)) ; Statement: $i1 = lengthof r1 
(define-const var2033 Int (getLength-Arr-ClassObject-1 var2799)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var1246 var2033)))) ; Negate: Cond: $i1 != $i0  
(define-const var3555 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3466 Int (getLength-Arr-ClassObject-1 var1485)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3555 var3466))) ; Negate: Cond: i3 >= $i2  
(define-const var3569 ClassObject (select var1485 var3555)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3080 String (getName/-1958580599 var3569)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var657 ClassObject (select var2799 var3555)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var1470 String (getName/-1958580599 var657)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2326 Bool (= var3080 var1470)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2326 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3555!1 Int (+ var3555 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3466!1 Int (getLength-Arr-ClassObject-1 var1485)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var3555!1 var3466!1))) ; Negate: Cond: i3 >= $i2  
(define-const var3569!1 ClassObject (select var1485 var3555!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3080!1 String (getName/-1958580599 var3569!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var657!1 ClassObject (select var2799 var3555!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var1470!1 String (getName/-1958580599 var657!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2326!1 Bool (= var3080!1 var1470!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2326!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3555!2 Int (+ var3555!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3466!2 Int (getLength-Arr-ClassObject-1 var1485)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (>= var3555!2 var3466!2)) ; Cond: i3 >= $i2 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1536=java.lang.reflect.Method, var3030=r0, var961=r2, var1485=r1, var2799=r3, var1246=$i1, var2033=$i0, var3555=i3, var3466=$i2, var3569=$r4, var3080=$r7, var657=$r5, var1470=$r6, var2326=$z0}
; {java.lang.reflect.Method=var1536, r0=var3030, r2=var961, r1=var1485, r3=var2799, $i1=var1246, $i0=var2033, i3=var3555, $i2=var3466, $r4=var3569, $r7=var3080, $r5=var657, $r6=var1470, $z0=var2326}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	return 1
;block_num 12