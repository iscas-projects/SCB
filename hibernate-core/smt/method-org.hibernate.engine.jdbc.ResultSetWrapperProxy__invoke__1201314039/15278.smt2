(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort var2985 0)
(declare-sort var3671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3671) String)
(declare-fun cast-from-var2985-to-String (var2985) String)
(declare-fun findColumn/674025280 (var6 String) Int)
(declare-const null-var6 var6)
(declare-const null-var2985 var2985)
(declare-const null-var3671 var3671)
(declare-const null-__Array__Int__var2985__ (Array Int var2985))
(declare-const var2083 var6) ; Statement: r3 := @this: org.hibernate.engine.jdbc.ResultSetWrapperProxy 
(assert (not (= var2083 null-var6)))
(declare-const var2670 var2985) ; Statement: r31 := @parameter0: java.lang.Object 
(assert (not (= var2670 null-var2985)))
(declare-const var2168 var3671) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2168 null-var3671)))
(declare-const var1741 (Array Int var2985)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1741 null-__Array__Int__var2985__)))
(define-const var3189 String "findColumn") ; Statement: $r2 = "findColumn" 
(assert true)
(define-const var105 String (getName/1227988463 var2168)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2103 Bool (= var3189 var105)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.hibernate.engine.jdbc.ResultSetWrapperProxy: boolean isFirstArgColumnLabel(java.lang.reflect.Method)>(r0) 
(assert (not (= (ite var2103 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var776 var2985 (select var1741 0)) ; Statement: $r15 = r4[0] 
(define-const var740 String (cast-from-var2985-to-String var776)) ; Statement: $r16 = (java.lang.String) $r15 
(assert true)
(define-const var3803 Int (findColumn/674025280 var2083 var740)) ; Statement: $r17 = specialinvoke r3.<org.hibernate.engine.jdbc.ResultSetWrapperProxy: java.lang.Integer findColumn(java.lang.String)>($r16) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), cast-from-var2985-to-String=([java.lang.Object], java.lang.String), findColumn/674025280=([org.hibernate.engine.jdbc.ResultSetWrapperProxy, java.lang.String], java.lang.Integer)}
; {var6=org.hibernate.engine.jdbc.ResultSetWrapperProxy, var2083=r3, var2985=java.lang.Object, var2670=r31, var3671=java.lang.reflect.Method, var2168=r0, var1741=r4, var3189=$r2, var105=$r1, var2103=$z0, var776=$r15, var740=$r16, var3803=$r17}
; {org.hibernate.engine.jdbc.ResultSetWrapperProxy=var6, r3=var2083, java.lang.Object=var2985, r31=var2670, java.lang.reflect.Method=var3671, r0=var2168, r4=var1741, $r2=var3189, $r1=var105, $z0=var2103, $r15=var776, $r16=var740, $r17=var3803}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.ResultSetWrapperProxy;	r31 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "findColumn";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z1 = staticinvoke <org.hibernate.engine.jdbc.ResultSetWrapperProxy: boolean isFirstArgColumnLabel(java.lang.reflect.Method)>(r0);	$r15 = r4[0];	$r16 = (java.lang.String) $r15;	$r17 = specialinvoke r3.<org.hibernate.engine.jdbc.ResultSetWrapperProxy: java.lang.Integer findColumn(java.lang.String)>($r16);	return $r17
;block_num 2