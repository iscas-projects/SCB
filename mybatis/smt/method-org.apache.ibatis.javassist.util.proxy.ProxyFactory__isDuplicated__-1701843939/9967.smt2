(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3149 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3149) String)
(declare-fun getLength-Arr-var3149-1 ((Array Int var3149)) Int)
(declare-fun var1898_areParametersSame/-1149448005 (var3149 var3149) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3149__ (Array Int var3149))
(declare-const var1283 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1283 null-Int)))
(declare-const var610 (Array Int var3149)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var610 null-__Array__Int__var3149__)))
(define-const var3204 var3149 (select var610 var1283)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var465 String (getName/1227988463 var3204)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1056 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3132 Int (getLength-Arr-var3149-1 var610)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var1056 var3132))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var1056 var1283))) ; Negate: Cond: i2 == i0  
(define-const var3031 var3149 (select var610 var1056)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var341 String (getName/1227988463 var3031)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1536 Bool (= var465 var341)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var1536 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2584 var3149 (select var610 var1283)) ; Statement: $r6 = r0[i0] 
(define-const var2291 var3149 (select var610 var1056)) ; Statement: $r5 = r0[i2] 
(define-const var865 Bool (var1898_areParametersSame/-1149448005 var2584 var2291)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (= (ite var865 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1056!1 Int (+ var1056 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var3132!1 Int (getLength-Arr-var3149-1 var610)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var1056!1 var3132!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var1056!1 var1283))) ; Negate: Cond: i2 == i0  
(define-const var3031!1 var3149 (select var610 var1056!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var341!1 String (getName/1227988463 var3031!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1536!1 Bool (= var465 var341!1)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var1536!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2584!1 var3149 (select var610 var1283)) ; Statement: $r6 = r0[i0] 
(define-const var2291!1 var3149 (select var610 var1056!1)) ; Statement: $r5 = r0[i2] 
(define-const var865!1 Bool (var1898_areParametersSame/-1149448005 var2584!1 var2291!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var865!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var3149-1=([java.lang.reflect.Method[]], int), var1898_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var1283=i0, var3149=java.lang.reflect.Method, var610=r0, var3204=$r1, var465=r2, var1056=i2, var3132=$i1, var3031=$r3, var341=$r4, var1536=$z0, var2584=$r6, var2291=$r5, var1898=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var865=$z1}
; {i0=var1283, java.lang.reflect.Method=var3149, r0=var610, $r1=var3204, r2=var465, i2=var1056, $i1=var3132, $r3=var3031, $r4=var341, $z0=var1536, $r6=var2584, $r5=var2291, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1898, $z1=var865}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	return 1
;block_num 11