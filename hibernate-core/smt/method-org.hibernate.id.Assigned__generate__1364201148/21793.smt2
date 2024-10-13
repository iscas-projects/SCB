(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var2449 0)
(declare-sort var2952 0)
(declare-sort var3327 0)
(declare-sort var1743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityName/-1055556037 (var1678) String)
(declare-fun var2449_getEntityPersister/-556085740 (var2449 String var2952) var3327)
(declare-fun var3327_getIdentifier/1578938541 (var3327 var2952 var2449) var1743)
(declare-const null-var1678 var1678)
(declare-const null-var2449 var2449)
(declare-const null-var2952 var2952)
(declare-const null-var1743 var1743)
(declare-const var24 var1678) ; Statement: r1 := @this: org.hibernate.id.Assigned 
(assert (not (= var24 null-var1678)))
(declare-const var2483 var2449) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2483 null-var2449)))
(declare-const var787 var2952) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var787 null-var2952)))
(define-const var1115 String (entityName/-1055556037 var24)) ; Statement: $r3 = r1.<org.hibernate.id.Assigned: java.lang.String entityName> 
(define-const var1032 var3327 (var2449_getEntityPersister/-556085740 var2483 var1115 var787)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>($r3, r2) 
(define-const var1970 var1743 (var3327_getIdentifier/1578938541 var1032 var787 var2483)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0) 
 ; Statement: if r5 != null goto return r5 
(assert (not (= var1970 null-var1743))) ; Cond: r5 != null 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {entityName/-1055556037=([org.hibernate.id.Assigned], java.lang.String), var2449_getEntityPersister/-556085740=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.String, java.lang.Object], org.hibernate.persister.entity.EntityPersister), var3327_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable)}
; {var1678=org.hibernate.id.Assigned, var24=r1, var2449=org.hibernate.engine.spi.SharedSessionContractImplementor, var2483=r0, var2952=java.lang.Object, var787=r2, var1115=$r3, var3327=org.hibernate.persister.entity.EntityPersister, var1032=$r4, var1743=java.io.Serializable, var1970=r5}
; {org.hibernate.id.Assigned=var1678, r1=var24, org.hibernate.engine.spi.SharedSessionContractImplementor=var2449, r0=var2483, java.lang.Object=var2952, r2=var787, $r3=var1115, org.hibernate.persister.entity.EntityPersister=var3327, $r4=var1032, java.io.Serializable=var1743, r5=var1970}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.id.Assigned;	r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r2 := @parameter1: java.lang.Object;	$r3 = r1.<org.hibernate.id.Assigned: java.lang.String entityName>;	$r4 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>($r3, r2);	r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0);	if r5 != null goto return r5;	return r5
;block_num 2