(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3523 0)
(declare-sort var3617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3617) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3617__ (Array Int var3617))
(declare-const null-var3617 var3617)
(declare-const var3870 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3870 null-String)))
(declare-const var2803 (Array Int var3617)) ; Statement: r3 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var2803 null-__Array__Int__var3617__)))
(declare-const var1365 var3617) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var1365 null-var3617)))
(assert true)
(define-const var1933 String (getName/1227988463 var1365)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var134 Bool (= var3870 var1933)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto r3[0] = r1 
(assert (not (not (= (ite var134 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3870=r0, var3523=null_type, var3617=java.lang.reflect.Method, var2803=r3, var1365=r1, var1933=$r2, var134=$z0}
; {r0=var3870, null_type=var3523, java.lang.reflect.Method=var3617, r3=var2803, r1=var1365, $r2=var1933, $z0=var134}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.reflect.Method[];	r1 := @parameter2: java.lang.reflect.Method;	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto r3[0] = r1;	return
;block_num 2