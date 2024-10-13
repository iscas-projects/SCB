(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1616 0)
(declare-sort var313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun referencedEntityName/311090949 (var1616) String)
(declare-const null-var1616 var1616)
(declare-const null-String String)
(declare-const var1615 var1616) ; Statement: r0 := @this: org.hibernate.mapping.ToOne 
(assert (not (= var1615 null-var1616)))
(declare-const var3996 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3996 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var3996 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3593 String (intern/-1326102057 var3996)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var1615!1 var1616)
(assert (not (= var1615!1 null-var1616)))
(assert (= (referencedEntityName/311090949 var1615!1) var3593)) ; Statement: r0.<org.hibernate.mapping.ToOne: java.lang.String referencedEntityName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), referencedEntityName/311090949=([org.hibernate.mapping.ToOne], java.lang.String)}
; {var1616=org.hibernate.mapping.ToOne, var1615=r0, var3996=r1, var313=null_type, var3593=$r2}
; {org.hibernate.mapping.ToOne=var1616, r0=var1615, r1=var3996, null_type=var313, $r2=var3593}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.ToOne;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.ToOne: java.lang.String referencedEntityName> = $r2;	return
;block_num 3