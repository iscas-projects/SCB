(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var3766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2713) String)
(declare-fun getLength-Arr-var2713-1 ((Array Int var2713)) Int)
(declare-fun var3766_areParametersSame/-1149448005 (var2713 var2713) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2713__ (Array Int var2713))
(declare-const var3744 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3744 null-Int)))
(declare-const var23 (Array Int var2713)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var23 null-__Array__Int__var2713__)))
(define-const var326 var2713 (select var23 var3744)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var3188 String (getName/1227988463 var326)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2165 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1646 Int (getLength-Arr-var2713-1 var23)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2165 var1646))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var2165 var3744))) ; Negate: Cond: i2 == i0  
(define-const var3512 var2713 (select var23 var2165)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var300 String (getName/1227988463 var3512)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var693 Bool (= var3188 var300)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var693 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3178 var2713 (select var23 var3744)) ; Statement: $r6 = r0[i0] 
(define-const var274 var2713 (select var23 var2165)) ; Statement: $r5 = r0[i2] 
(define-const var1298 Bool (var3766_areParametersSame/-1149448005 var3178 var274)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (= (ite var1298 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2165!1 Int (+ var2165 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1646!1 Int (getLength-Arr-var2713-1 var23)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2165!1 var1646!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var2165!1 var3744)) ; Cond: i2 == i0 
(define-const var2165!2 Int (+ var2165!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1646!2 Int (getLength-Arr-var2713-1 var23)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var2165!2 var1646!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var2713-1=([java.lang.reflect.Method[]], int), var3766_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var3744=i0, var2713=java.lang.reflect.Method, var23=r0, var326=$r1, var3188=r2, var2165=i2, var1646=$i1, var3512=$r3, var300=$r4, var693=$z0, var3178=$r6, var274=$r5, var3766=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1298=$z1}
; {i0=var3744, java.lang.reflect.Method=var2713, r0=var23, $r1=var326, r2=var3188, i2=var2165, $i1=var1646, $r3=var3512, $r4=var300, $z0=var693, $r6=var3178, $r5=var274, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var3766, $z1=var1298}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 11