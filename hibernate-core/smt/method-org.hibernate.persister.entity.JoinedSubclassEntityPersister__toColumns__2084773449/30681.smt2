(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3849 0)
(declare-sort var3120 0)
(declare-sort var2442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toColumns/1277264104 (var2442 String String) (Array Int String))
(declare-fun cast-from-var3849-to-var2442 (var3849) var2442)
(declare-const null-var3849 var3849)
(declare-const null-String String)
(declare-const var90 var3849) ; Statement: r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var90 null-var3849)))
(declare-const var768 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var768 null-String)))
(declare-const var1613 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1613 null-String)))
(define-const var3356 String "class") ; Statement: $r1 = "class" 
(assert true)
(define-const var3525 Bool (= var3356 var1613)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0) 
(assert (= (ite var3525 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2747 (Array Int String) (toColumns/1277264104 (cast-from-var3849-to-var2442 var90) var768 var1613)) ; Statement: $r4 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toColumns/1277264104=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, java.lang.String], java.lang.String[]), cast-from-var3849-to-var2442=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister)}
; {var3849=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var90=r2, var768=r3, var3120=null_type, var1613=r0, var3356=$r1, var3525=$z0, var2442=org.hibernate.persister.entity.AbstractEntityPersister, var2747=$r4}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var3849, r2=var90, r3=var768, null_type=var3120, r0=var1613, $r1=var3356, $z0=var3525, org.hibernate.persister.entity.AbstractEntityPersister=var2442, $r4=var2747}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = "class";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0);	$r4 = specialinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0);	return $r4
;block_num 2