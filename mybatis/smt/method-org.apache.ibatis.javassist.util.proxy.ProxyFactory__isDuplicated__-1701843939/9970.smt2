(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var52) String)
(declare-fun getLength-Arr-var52-1 ((Array Int var52)) Int)
(declare-fun var1271_areParametersSame/-1149448005 (var52 var52) Bool)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var52__ (Array Int var52))
(declare-const var270 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var270 null-Int)))
(declare-const var2848 (Array Int var52)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var2848 null-__Array__Int__var52__)))
(define-const var828 var52 (select var2848 var270)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var2631 String (getName/1227988463 var828)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2566 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1803 Int (getLength-Arr-var52-1 var2848)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2566 var1803))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var2566 var270)) ; Cond: i2 == i0 
(define-const var2566!1 Int (+ var2566 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1803!1 Int (getLength-Arr-var52-1 var2848)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var2566!1 var1803!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var2566!1 var270))) ; Negate: Cond: i2 == i0  
(define-const var3610 var52 (select var2848 var2566!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var587 String (getName/1227988463 var3610)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3607 Bool (= var2631 var587)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (not (= (ite var3607 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3258 var52 (select var2848 var270)) ; Statement: $r6 = r0[i0] 
(define-const var90 var52 (select var2848 var2566!1)) ; Statement: $r5 = r0[i2] 
(define-const var2730 Bool (var1271_areParametersSame/-1149448005 var3258 var90)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5) 
 ; Statement: if $z1 == 0 goto i2 = i2 + 1 
(assert (= (ite var2730 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2566!2 Int (+ var2566!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1803!2 Int (getLength-Arr-var52-1 var2848)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var2566!2 var1803!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var52-1=([java.lang.reflect.Method[]], int), var1271_areParametersSame/-1149448005=([java.lang.reflect.Method, java.lang.reflect.Method], boolean)}
; {var270=i0, var52=java.lang.reflect.Method, var2848=r0, var828=$r1, var2631=r2, var2566=i2, var1803=$i1, var3610=$r3, var587=$r4, var3607=$z0, var3258=$r6, var90=$r5, var1271=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2730=$z1}
; {i0=var270, java.lang.reflect.Method=var52, r0=var2848, $r1=var828, r2=var2631, i2=var2566, $i1=var1803, $r3=var3610, $r4=var587, $z0=var3607, $r6=var3258, $r5=var90, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1271, $z1=var2730}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	$r6 = r0[i0];	$r5 = r0[i2];	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean areParametersSame(java.lang.reflect.Method,java.lang.reflect.Method)>($r6, $r5);	if $z1 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 11