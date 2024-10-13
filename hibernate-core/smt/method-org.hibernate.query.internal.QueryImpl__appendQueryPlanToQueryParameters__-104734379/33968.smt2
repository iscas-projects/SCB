(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var979 0)
(declare-sort var391 0)
(declare-sort var2211 0)
(declare-sort var1431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getQueryString/552229988 (var979) String)
(declare-const null-var979 var979)
(declare-const null-String String)
(declare-const null-var2211 var2211)
(declare-const null-var1431 var1431)
(declare-const var2061 var979) ; Statement: r2 := @this: org.hibernate.query.internal.QueryImpl 
(assert (not (= var2061 null-var979)))
(declare-const var3282 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3282 null-String)))
(declare-const var1899 var2211) ; Statement: r10 := @parameter1: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var1899 null-var2211)))
(declare-const var2257 var1431) ; Statement: r0 := @parameter2: org.hibernate.engine.query.spi.HQLQueryPlan 
(assert (not (= var2257 null-var1431)))
 ; Statement: if r0 == null goto $r3 = virtualinvoke r2.<org.hibernate.query.internal.QueryImpl: java.lang.String getQueryString()>() 
(assert (= var2257 null-var1431)) ; Cond: r0 == null 
(assert true)
(define-const var2570 String (getQueryString/552229988 var2061)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.internal.QueryImpl: java.lang.String getQueryString()>() 
(assert true)
(define-const var293 Bool (= var3282 var2570)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var293 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getQueryString/552229988=([org.hibernate.query.internal.QueryImpl], java.lang.String)}
; {var979=org.hibernate.query.internal.QueryImpl, var2061=r2, var3282=r1, var391=null_type, var2211=org.hibernate.engine.spi.QueryParameters, var1899=r10, var1431=org.hibernate.engine.query.spi.HQLQueryPlan, var2257=r0, var2570=$r3, var293=$z0}
; {org.hibernate.query.internal.QueryImpl=var979, r2=var2061, r1=var3282, null_type=var391, org.hibernate.engine.spi.QueryParameters=var2211, r10=var1899, org.hibernate.engine.query.spi.HQLQueryPlan=var1431, r0=var2257, $r3=var2570, $z0=var293}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.query.internal.QueryImpl;	r1 := @parameter0: java.lang.String;	r10 := @parameter1: org.hibernate.engine.spi.QueryParameters;	r0 := @parameter2: org.hibernate.engine.query.spi.HQLQueryPlan;	if r0 == null goto $r3 = virtualinvoke r2.<org.hibernate.query.internal.QueryImpl: java.lang.String getQueryString()>();	$r3 = virtualinvoke r2.<org.hibernate.query.internal.QueryImpl: java.lang.String getQueryString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto return;	return
;block_num 3