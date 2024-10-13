(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var46 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun entityName/1454253499 (var3092) String)
(declare-const null-var3092 var3092)
(declare-const null-String String)
(declare-const var3994 var3092) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var3994 null-var3092)))
(declare-const var2158 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2158 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var2158 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var829 String (intern/-1326102057 var2158)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var3994!1 var3092)
(assert (not (= var3994!1 null-var3092)))
(assert (= (entityName/1454253499 var3994!1) var829)) ; Statement: r0.<org.hibernate.mapping.PersistentClass: java.lang.String entityName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), entityName/1454253499=([org.hibernate.mapping.PersistentClass], java.lang.String)}
; {var3092=org.hibernate.mapping.PersistentClass, var3994=r0, var2158=r1, var46=null_type, var829=$r2}
; {org.hibernate.mapping.PersistentClass=var3092, r0=var3994, r1=var2158, null_type=var46, $r2=var829}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.PersistentClass: java.lang.String entityName> = $r2;	return
;block_num 3