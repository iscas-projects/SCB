(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3375 0)
(declare-sort var2860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3375) String)
(declare-fun getLength-Arr-var3375-1 ((Array Int var3375)) Int)
(declare-fun var2860_areParametersSame/-1149448005 (var3375 var3375) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3375__ (Array Int var3375))
(declare-const var2248 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2248 null-Int)))
(declare-const var139 (Array Int var3375)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var139 null-__Array__Int__var3375__)))
(define-const var3342 var3375 (select var139 var2248)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var3977 String (getName/1227988463 var3342)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1461 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3303 Int (getLength-Arr-var3375-1 var139)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var1461 var3303))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var1461 var2248))) ; Negate: Cond: i2 == i0  
(define-const var2002 var3375 (select var139 var1461)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var1787 String (getName/1227988463 var2002)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3961 Bool (= var3977 var1787)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var3961 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3332 var3375 (select var139 var2248)) ; Statement: $r6 = r0[i0] 
(define-const var2876 var3375 (select var139 var1461)) ; Statement: $r5 = r0[i2] 
(define-const var1716 Bool (var2860_areParametersSame/-1149448005 var3332 var2876)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (= (ite var1716 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1461!1 Int (+ var1461 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var3303!1 Int (getLength-Arr-var3375-1 var139)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var1461!1 var3303!1)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var3375-1=([java.lang.reflect.Method[]], int), var2860_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var2248=i0, var3375=java.lang.reflect.Method, var139=r0, var3342=$r1, var3977=r2, var1461=i2, var3303=$i1, var2002=$r3, var1787=$r4, var3961=$z0, var3332=$r6, var2876=$r5, var2860=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1716=$z1}
; {i0=var2248, java.lang.reflect.Method=var3375, r0=var139, $r1=var3342, r2=var3977, i2=var1461, $i1=var3303, $r3=var2002, $r4=var1787, $z0=var3961, $r6=var3332, $r5=var2876, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2860, $z1=var1716}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 8