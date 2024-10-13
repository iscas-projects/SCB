(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var695 0)
(declare-sort var3564 0)
(declare-sort var3928 0)
(declare-sort var1897 0)
(declare-sort var1200 0)
(declare-sort var88 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3928_getIdentifier/1578938541 (var3928 var3564 var88) var1897)
(declare-fun cast-from-var1200-to-var88 (var1200) var88)
(declare-const null-var695 var695)
(declare-const null-var3564 var3564)
(declare-const null-var3928 var3928)
(declare-const null-var1897 var1897)
(declare-const null-var1200 var1200)
(declare-const var3342 var695) ; Statement: r10 := @this: org.hibernate.event.internal.DefaultSaveOrUpdateEventListener 
(assert (not (= var3342 null-var695)))
(declare-const var2704 var3564) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2704 null-var3564)))
(declare-const var1983 var3928) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1983 null-var3928)))
(declare-const var302 var1897) ; Statement: r11 := @parameter2: java.io.Serializable 
(assert (not (= var302 null-var1897)))
(declare-const var1848 var1200) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var1848 null-var1200)))
(define-const var3977 var1897 (var3928_getIdentifier/1578938541 var1983 var2704 (cast-from-var1200-to-var88 var1848))) ; Statement: r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r1, r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3977 null-var1897))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3928_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable), cast-from-var1200-to-var88=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor)}
; {var695=org.hibernate.event.internal.DefaultSaveOrUpdateEventListener, var3342=r10, var3564=java.lang.Object, var2704=r1, var3928=org.hibernate.persister.entity.EntityPersister, var1983=r0, var1897=java.io.Serializable, var302=r11, var1200=org.hibernate.engine.spi.SessionImplementor, var1848=r2, var88=org.hibernate.engine.spi.SharedSessionContractImplementor, var3977=r3}
; {org.hibernate.event.internal.DefaultSaveOrUpdateEventListener=var695, r10=var3342, java.lang.Object=var3564, r1=var2704, org.hibernate.persister.entity.EntityPersister=var3928, r0=var1983, java.io.Serializable=var1897, r11=var302, org.hibernate.engine.spi.SessionImplementor=var1200, r2=var1848, org.hibernate.engine.spi.SharedSessionContractImplementor=var88, r3=var3977}
;seq 
;cnt {}
;stmts r10 := @this: org.hibernate.event.internal.DefaultSaveOrUpdateEventListener;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r11 := @parameter2: java.io.Serializable;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r1, r2);	if r3 != null goto return r3;	return r3
;block_num 2