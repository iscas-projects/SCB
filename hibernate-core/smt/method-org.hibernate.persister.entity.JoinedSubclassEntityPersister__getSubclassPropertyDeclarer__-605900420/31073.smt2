(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var218 0)
(declare-sort var3405 0)
(declare-sort var302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var218 var218)
(declare-const null-String String)
(declare-const var302-SUBCLASS var302)
(declare-const var1475 var218) ; Statement: r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var1475 null-var218)))
(declare-const var2298 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2298 null-String)))
(define-const var1169 String "class") ; Statement: $r1 = "class" 
(assert true)
(define-const var2316 Bool (= var1169 var2298)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0) 
(assert (not (= (ite var2316 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2879 var302 var302-SUBCLASS) ; Statement: $r4 = <org.hibernate.persister.entity.Queryable$Declarer: org.hibernate.persister.entity.Queryable$Declarer SUBCLASS> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var218=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var1475=r2, var2298=r0, var3405=null_type, var1169=$r1, var2316=$z0, var302=org.hibernate.persister.entity.Queryable$Declarer, var2879=$r4}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var218, r2=var1475, r0=var2298, null_type=var3405, $r1=var1169, $z0=var2316, org.hibernate.persister.entity.Queryable$Declarer=var302, $r4=var2879}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r0 := @parameter0: java.lang.String;	$r1 = "class";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0);	$r4 = <org.hibernate.persister.entity.Queryable$Declarer: org.hibernate.persister.entity.Queryable$Declarer SUBCLASS>;	return $r4
;block_num 2