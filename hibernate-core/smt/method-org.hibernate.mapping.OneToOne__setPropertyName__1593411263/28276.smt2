(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var3934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun propertyName/-1234376757 (var224) String)
(declare-const null-var224 var224)
(declare-const null-String String)
(declare-const var32 var224) ; Statement: r0 := @this: org.hibernate.mapping.OneToOne 
(assert (not (= var32 null-var224)))
(declare-const var123 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var123 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var123 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var556 String (intern/-1326102057 var123)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var32!1 var224)
(assert (not (= var32!1 null-var224)))
(assert (= (propertyName/-1234376757 var32!1) var556)) ; Statement: r0.<org.hibernate.mapping.OneToOne: java.lang.String propertyName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), propertyName/-1234376757=([org.hibernate.mapping.OneToOne], java.lang.String)}
; {var224=org.hibernate.mapping.OneToOne, var32=r0, var123=r1, var3934=null_type, var556=$r2}
; {org.hibernate.mapping.OneToOne=var224, r0=var32, r1=var123, null_type=var3934, $r2=var556}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.OneToOne;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.OneToOne: java.lang.String propertyName> = $r2;	return
;block_num 3