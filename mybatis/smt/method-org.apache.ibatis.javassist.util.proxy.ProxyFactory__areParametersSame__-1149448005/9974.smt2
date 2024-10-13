(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var2254) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var2254 var2254)
(declare-const var2442 var2254) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2442 null-var2254)))
(declare-const var1467 var2254) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1467 null-var2254)))
(assert true)
(define-const var305 (Array Int ClassObject) (getParameterTypes/827748249 var2442)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var2593 (Array Int ClassObject) (getParameterTypes/827748249 var1467)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3676 Int (getLength-Arr-ClassObject-1 var305)) ; Statement: $i1 = lengthof r1 
(define-const var3018 Int (getLength-Arr-ClassObject-1 var2593)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var3676 var3018)))) ; Negate: Cond: $i1 != $i0  
(define-const var365 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2942 Int (getLength-Arr-ClassObject-1 var305)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var365 var2942))) ; Negate: Cond: i3 >= $i2  
(define-const var2504 ClassObject (select var305 var365)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var3052 String (getName/-1958580599 var2504)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1863 ClassObject (select var2593 var365)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var2353 String (getName/-1958580599 var1863)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3910 Bool (= var3052 var2353)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var3910 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var365!1 Int (+ var365 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2942!1 Int (getLength-Arr-ClassObject-1 var305)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (>= var365!1 var2942!1)) ; Cond: i3 >= $i2 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2254=java.lang.reflect.Method, var2442=r0, var1467=r2, var305=r1, var2593=r3, var3676=$i1, var3018=$i0, var365=i3, var2942=$i2, var2504=$r4, var3052=$r7, var1863=$r5, var2353=$r6, var3910=$z0}
; {java.lang.reflect.Method=var2254, r0=var2442, r2=var1467, r1=var305, r3=var2593, $i1=var3676, $i0=var3018, i3=var365, $i2=var2942, $r4=var2504, $r7=var3052, $r5=var1863, $r6=var2353, $z0=var3910}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	return 1
;block_num 8