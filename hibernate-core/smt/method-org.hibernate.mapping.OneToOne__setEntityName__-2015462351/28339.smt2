(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3306 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityName/-1234376757 (var3306) String)
(declare-fun intern/-1326102057 (String) String)
(declare-const null-var3306 var3306)
(declare-const null-String String)
(declare-const var2759 var3306) ; Statement: r0 := @this: org.hibernate.mapping.OneToOne 
(assert (not (= var2759 null-var3306)))
(declare-const var2194 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2194 null-String)))
(define-const var1626 String (entityName/-1234376757 var2759)) ; Statement: $r1 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName> 
(assert (not (= var1626 null-String))) ; Cond: $r1 != null 
(define-const var1107 String (entityName/-1234376757 var2759)) ; Statement: $r2 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName> 
(assert true)
(define-const var432 String (intern/-1326102057 var1107)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var2759!1 var3306)
(assert (not (= var2759!1 null-var3306)))
(assert (= (entityName/-1234376757 var2759!1) var432)) ; Statement: r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {entityName/-1234376757=([org.hibernate.mapping.OneToOne], java.lang.String), intern/-1326102057=([java.lang.String], java.lang.String)}
; {var3306=org.hibernate.mapping.OneToOne, var2759=r0, var2194=r3, var813=null_type, var1626=$r1, var1107=$r2, var432=$r4}
; {org.hibernate.mapping.OneToOne=var3306, r0=var2759, r3=var2194, null_type=var813, $r1=var1626, $r2=var1107, $r4=var432}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.OneToOne;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName>;	if $r1 != null goto $r2 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName>;	$r2 = r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName>;	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.OneToOne: java.lang.String entityName> = $r4;	return
;block_num 3