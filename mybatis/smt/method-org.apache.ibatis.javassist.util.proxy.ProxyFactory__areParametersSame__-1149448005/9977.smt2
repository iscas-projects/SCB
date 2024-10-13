(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var3822) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var3822 var3822)
(declare-const var903 var3822) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var903 null-var3822)))
(declare-const var1028 var3822) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1028 null-var3822)))
(assert true)
(define-const var2417 (Array Int ClassObject) (getParameterTypes/827748249 var903)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert true)
(define-const var2887 (Array Int ClassObject) (getParameterTypes/827748249 var1028)) ; Statement: r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3998 Int (getLength-Arr-ClassObject-1 var2417)) ; Statement: $i1 = lengthof r1 
(define-const var1830 Int (getLength-Arr-ClassObject-1 var2887)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (not (= var3998 var1830)))) ; Negate: Cond: $i1 != $i0  
(define-const var1690 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var175 Int (getLength-Arr-ClassObject-1 var2417)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1690 var175))) ; Negate: Cond: i3 >= $i2  
(define-const var833 ClassObject (select var2417 var1690)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var1515 String (getName/-1958580599 var833)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var423 ClassObject (select var2887 var1690)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var650 String (getName/-1958580599 var423)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1131 Bool (= var1515 var650)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1131 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1690!1 Int (+ var1690 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var175!1 Int (getLength-Arr-ClassObject-1 var2417)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1690!1 var175!1))) ; Negate: Cond: i3 >= $i2  
(define-const var833!1 ClassObject (select var2417 var1690!1)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var1515!1 String (getName/-1958580599 var833!1)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var423!1 ClassObject (select var2887 var1690!1)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var650!1 String (getName/-1958580599 var423!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1131!1 Bool (= var1515!1 var650!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1131!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var1690!2 Int (+ var1690!1 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= $i2 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var175!2 Int (getLength-Arr-ClassObject-1 var2417)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return 1 
(assert (not (>= var1690!2 var175!2))) ; Negate: Cond: i3 >= $i2  
(define-const var833!2 ClassObject (select var2417 var1690!2)) ; Statement: $r4 = r1[i3] 
(assert true)
(define-const var1515!2 String (getName/-1958580599 var833!2)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var423!2 ClassObject (select var2887 var1690!2)) ; Statement: $r5 = r3[i3] 
(assert true)
(define-const var650!2 String (getName/-1958580599 var423!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1131!2 Bool (= var1515!2 var650!2)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1131!2 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3822=java.lang.reflect.Method, var903=r0, var1028=r2, var2417=r1, var2887=r3, var3998=$i1, var1830=$i0, var1690=i3, var175=$i2, var833=$r4, var1515=$r7, var423=$r5, var650=$r6, var1131=$z0}
; {java.lang.reflect.Method=var3822, r0=var903, r2=var1028, r1=var2417, r3=var2887, $i1=var3998, $i0=var1830, i3=var1690, $i2=var175, $r4=var833, $r7=var1515, $r5=var423, $r6=var650, $z0=var1131}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	i3 = 0;	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i3 >= $i2 goto return 1;	$r4 = r1[i3];	$r7 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r3[i3];	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto return 0;	return 0
;block_num 13