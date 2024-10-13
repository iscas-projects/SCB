(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var3933) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var3933 var3933)
(declare-const var2120 var3933) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2120 null-var3933)))
(declare-const var306 var3933) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var306 null-var3933)))
(assert true)
(define-const var1683 (Array Int ClassObject) (getParameterTypes/827748249 var2120)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var392 (Array Int ClassObject) (getParameterTypes/827748249 var306)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3730 Int (getLength-Arr-ClassObject-1 var1683)) ; Statement: $i1 = lengthof r1 
(define-const var2071 Int (getLength-Arr-ClassObject-1 var392)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var3730 var2071)))) ; Negate: Cond: $i1 != $i0  
(define-const var684 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3079 Int (getLength-Arr-ClassObject-1 var1683)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var684 var3079))) ; Negate: Cond: i3 >= $i2  
(define-const var1902 ClassObject (select var1683 var684)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var2679 String (getName/-1958580599 var1902)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var164 ClassObject (select var392 var684)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var959 String (getName/-1958580599 var164)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1900 Bool (= var2679 var959)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1900 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3933=java.lang.reflect.Method, var2120=r0, var306=r2, var1683=r1, var392=r3, var3730=$i1, var2071=$i0, var684=i3, var3079=$i2, var1902=$r4, var2679=$r7, var164=$r5, var959=$r6, var1900=$z0}
; {java.lang.reflect.Method=var3933, r0=var2120, r2=var306, r1=var1683, r3=var392, $i1=var3730, $i0=var2071, i3=var684, $i2=var3079, $r4=var1902, $r7=var2679, $r5=var164, $r6=var959, $z0=var1900}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	return 0
;block_num 5