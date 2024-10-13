(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2916 0)
(declare-sort var1442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2916) String)
(declare-fun getLength-Arr-var2916-1 ((Array Int var2916)) Int)
(declare-fun var1442_areParametersSame/-1149448005 (var2916 var2916) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2916__ (Array Int var2916))
(declare-const var1411 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1411 null-Int)))
(declare-const var3449 (Array Int var2916)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var3449 null-__Array__Int__var2916__)))
(define-const var113 var2916 (select var3449 var1411)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var834 String (getName/1227988463 var113)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1187 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1912 Int (getLength-Arr-var2916-1 var3449)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var1187 var1912))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var1187 var1411)) ; Cond: i2 == i0 
(define-const var1187!1 Int (+ var1187 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1912!1 Int (getLength-Arr-var2916-1 var3449)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var1187!1 var1912!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var1187!1 var1411))) ; Negate: Cond: i2 == i0  
(define-const var3716 var2916 (select var3449 var1187!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var2394 String (getName/1227988463 var3716)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3767 Bool (= var834 var2394)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var3767 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var329 var2916 (select var3449 var1411)) ; Statement: $r6 = r0[i0] 
(define-const var9 var2916 (select var3449 var1187!1)) ; Statement: $r5 = r0[i2] 
(define-const var2470 Bool (var1442_areParametersSame/-1149448005 var329 var9)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var2470 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var2916-1=([java.lang.reflect.Method[]], int), var1442_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var1411=i0, var2916=java.lang.reflect.Method, var3449=r0, var113=$r1, var834=r2, var1187=i2, var1912=$i1, var3716=$r3, var2394=$r4, var3767=$z0, var329=$r6, var9=$r5, var1442=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2470=$z1}
; {i0=var1411, java.lang.reflect.Method=var2916, r0=var3449, $r1=var113, r2=var834, i2=var1187, $i1=var1912, $r3=var3716, $r4=var2394, $z0=var3767, $r6=var329, $r5=var9, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1442, $z1=var2470}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	return 1
;block_num 9