(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var361) String)
(declare-const null-var3895 var3895)
(declare-const null-var361 var361)
(declare-const var2130 var3895) ; Statement: r11 := @this: org.junit.internal.runners.TestClass 
(assert (not (= var2130 null-var3895)))
(declare-const var673 var361) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var673 null-var361)))
(declare-const var1343 var361) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1343 null-var361)))
(assert true)
(define-const var3062 String (getName/1227988463 var1343)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var153 String (getName/1227988463 var673)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var908 Bool (= var3062 var153)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert (not (not (= (ite var908 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3895=org.junit.internal.runners.TestClass, var2130=r11, var361=java.lang.reflect.Method, var673=r1, var1343=r0, var3062=$r3, var153=$r2, var908=$z0}
; {org.junit.internal.runners.TestClass=var3895, r11=var2130, java.lang.reflect.Method=var361, r1=var673, r0=var1343, $r3=var3062, $r2=var153, $z0=var908}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r11 := @this: org.junit.internal.runners.TestClass;	r1 := @parameter0: java.lang.reflect.Method;	r0 := @parameter1: java.lang.reflect.Method;	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	return 0
;block_num 2