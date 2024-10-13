(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3429 0)
(declare-sort var2418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3429) String)
(declare-fun getLength-Arr-var3429-1 ((Array Int var3429)) Int)
(declare-fun var2418_areParametersSame/-1149448005 (var3429 var3429) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3429__ (Array Int var3429))
(declare-const var375 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var375 null-Int)))
(declare-const var1425 (Array Int var3429)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var1425 null-__Array__Int__var3429__)))
(define-const var2109 var3429 (select var1425 var375)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var1953 String (getName/1227988463 var2109)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var651 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2270 Int (getLength-Arr-var3429-1 var1425)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var651 var2270))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var651 var375))) ; Negate: Cond: i2 == i0  
(define-const var2022 var3429 (select var1425 var651)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var2655 String (getName/1227988463 var2022)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2280 Bool (= var1953 var2655)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var2280 1 0) 0)) ; Cond: $z0 == 0 
(define-const var651!1 Int (+ var651 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var2270!1 Int (getLength-Arr-var3429-1 var1425)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var651!1 var2270!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var651!1 var375))) ; Negate: Cond: i2 == i0  
(define-const var2022!1 var3429 (select var1425 var651!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var2655!1 String (getName/1227988463 var2022!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2280!1 Bool (= var1953 var2655!1)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var2280!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var101 var3429 (select var1425 var375)) ; Statement: $r6 = r0[i0] 
(define-const var733 var3429 (select var1425 var651!1)) ; Statement: $r5 = r0[i2] 
(define-const var792 Bool (var2418_areParametersSame/-1149448005 var101 var733)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var792 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var3429-1=([java.lang.reflect.Method[]], int), var2418_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var375=i0, var3429=java.lang.reflect.Method, var1425=r0, var2109=$r1, var1953=r2, var651=i2, var2270=$i1, var2022=$r3, var2655=$r4, var2280=$z0, var101=$r6, var733=$r5, var2418=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var792=$z1}
; {i0=var375, java.lang.reflect.Method=var3429, r0=var1425, $r1=var2109, r2=var1953, i2=var651, $i1=var2270, $r3=var2022, $r4=var2655, $z0=var2280, $r6=var101, $r5=var733, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2418, $z1=var792}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	return 1
;block_num 10