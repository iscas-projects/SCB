(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2107 0)
(declare-sort var1627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun referencedEntityName/388954522 (var2107) String)
(declare-const null-var2107 var2107)
(declare-const null-String String)
(declare-const var3487 var2107) ; Statement: r0 := @this: org.hibernate.mapping.OneToMany 
(assert (not (= var3487 null-var2107)))
(declare-const var2922 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2922 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var2922 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3485 String (intern/-1326102057 var2922)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var3487!1 var2107)
(assert (not (= var3487!1 null-var2107)))
(assert (= (referencedEntityName/388954522 var3487!1) var3485)) ; Statement: r0.<org.hibernate.mapping.OneToMany: java.lang.String referencedEntityName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), referencedEntityName/388954522=([org.hibernate.mapping.OneToMany], java.lang.String)}
; {var2107=org.hibernate.mapping.OneToMany, var3487=r0, var2922=r1, var1627=null_type, var3485=$r2}
; {org.hibernate.mapping.OneToMany=var2107, r0=var3487, r1=var2922, null_type=var1627, $r2=var3485}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.OneToMany;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.OneToMany: java.lang.String referencedEntityName> = $r2;	return
;block_num 3