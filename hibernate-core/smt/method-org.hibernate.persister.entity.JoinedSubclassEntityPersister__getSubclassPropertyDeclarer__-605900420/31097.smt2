(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2427 0)
(declare-sort var2779 0)
(declare-sort var2563 0)
(declare-sort var2215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubclassPropertyDeclarer/1924585499 (var2215 String) var2563)
(declare-fun cast-from-var2427-to-var2215 (var2427) var2215)
(declare-const null-var2427 var2427)
(declare-const null-String String)
(declare-const var1972 var2427) ; Statement: r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var1972 null-var2427)))
(declare-const var1387 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1387 null-String)))
(define-const var263 String "class") ; Statement: $r1 = "class" 
(assert true)
(define-const var3103 Bool (= var263 var1387)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0) 
(assert (= (ite var3103 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2541 var2563 (getSubclassPropertyDeclarer/1924585499 (cast-from-var2427-to-var2215 var1972) var1387)) ; Statement: $r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubclassPropertyDeclarer/1924585499=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], org.hibernate.persister.entity.Queryable$Declarer), cast-from-var2427-to-var2215=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister)}
; {var2427=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var1972=r2, var1387=r0, var2779=null_type, var263=$r1, var3103=$z0, var2563=org.hibernate.persister.entity.Queryable$Declarer, var2215=org.hibernate.persister.entity.AbstractEntityPersister, var2541=$r3}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var2427, r2=var1972, r0=var1387, null_type=var2779, $r1=var263, $z0=var3103, org.hibernate.persister.entity.Queryable$Declarer=var2563, org.hibernate.persister.entity.AbstractEntityPersister=var2215, $r3=var2541}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r0 := @parameter0: java.lang.String;	$r1 = "class";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0);	$r3 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.persister.entity.Queryable$Declarer getSubclassPropertyDeclarer(java.lang.String)>(r0);	return $r3
;block_num 2