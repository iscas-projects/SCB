(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1788 0)
(declare-sort var3195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3195) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3195__ (Array Int var3195))
(declare-const null-var3195 var3195)
(declare-const var3543 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3543 null-String)))
(declare-const var1899 (Array Int var3195)) ; Statement: r3 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var1899 null-__Array__Int__var3195__)))
(declare-const var1611 var3195) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var1611 null-var3195)))
(assert true)
(define-const var3316 String (getName/1227988463 var1611)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var594 Bool (= var3543 var3316)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto r3[0] = r1 
(assert (not (= (ite var594 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var1899!1 (Array Int var3195))
(assert (not (= var1899!1 null-__Array__Int__var3195__)))
(assert (= (select var1899!1 0) var1611)) ; Statement: r3[0] = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3543=r0, var1788=null_type, var3195=java.lang.reflect.Method, var1899=r3, var1611=r1, var3316=$r2, var594=$z0}
; {r0=var3543, null_type=var1788, java.lang.reflect.Method=var3195, r3=var1899, r1=var1611, $r2=var3316, $z0=var594}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.reflect.Method[];	r1 := @parameter2: java.lang.reflect.Method;	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto r3[0] = r1;	r3[0] = r1;	return
;block_num 2