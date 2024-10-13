(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1181 0)
(declare-sort var912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1181) String)
(declare-fun getLength-Arr-var1181-1 ((Array Int var1181)) Int)
(declare-fun var912_areParametersSame/-1149448005 (var1181 var1181) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1181__ (Array Int var1181))
(declare-const var278 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var278 null-Int)))
(declare-const var3341 (Array Int var1181)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var3341 null-__Array__Int__var1181__)))
(define-const var2442 var1181 (select var3341 var278)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var948 String (getName/1227988463 var2442)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var53 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2193 Int (getLength-Arr-var1181-1 var3341)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var53 var2193))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var53 var278))) ; Negate: Cond: i2 == i0  
(define-const var910 var1181 (select var3341 var53)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var2355 String (getName/1227988463 var910)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1109 Bool (= var948 var2355)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var1109 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1103 var1181 (select var3341 var278)) ; Statement: $r6 = r0[i0] 
(define-const var2281 var1181 (select var3341 var53)) ; Statement: $r5 = r0[i2] 
(define-const var2308 Bool (var912_areParametersSame/-1149448005 var1103 var2281)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var2308 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var1181-1=([java.lang.reflect.Method[]], int), var912_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var278=i0, var1181=java.lang.reflect.Method, var3341=r0, var2442=$r1, var948=r2, var53=i2, var2193=$i1, var910=$r3, var2355=$r4, var1109=$z0, var1103=$r6, var2281=$r5, var912=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2308=$z1}
; {i0=var278, java.lang.reflect.Method=var1181, r0=var3341, $r1=var2442, r2=var948, i2=var53, $i1=var2193, $r3=var910, $r4=var2355, $z0=var1109, $r6=var1103, $r5=var2281, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var912, $z1=var2308}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	return 1
;block_num 6