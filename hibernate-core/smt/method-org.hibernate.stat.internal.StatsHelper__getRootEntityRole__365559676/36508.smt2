(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var1353 0)
(declare-sort var2942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1353_getRootEntityName/775871466 (var1353) String)
(declare-fun var1353_getEntityName/-1914780628 (var1353) String)
(declare-fun var1353_getNavigableRole/482652230 (var1353) var2942)
(declare-const null-var2357 var2357)
(declare-const null-var1353 var1353)
(declare-const var3789 var2357) ; Statement: r8 := @this: org.hibernate.stat.internal.StatsHelper 
(assert (not (= var3789 null-var2357)))
(declare-const var2268 var1353) ; Statement: r0 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2268 null-var1353)))
(define-const var2092 String (var1353_getRootEntityName/775871466 var2268)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>() 
(define-const var1941 String (var1353_getEntityName/-1914780628 var2268)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var3942 Bool (= var1941 var2092)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (= (ite var3942 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3799 var2942 (var1353_getNavigableRole/482652230 var2268)) ; Statement: $r7 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1353_getRootEntityName/775871466=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var1353_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var1353_getNavigableRole/482652230=([org.hibernate.persister.entity.EntityPersister], org.hibernate.metamodel.model.domain.NavigableRole)}
; {var2357=org.hibernate.stat.internal.StatsHelper, var3789=r8, var1353=org.hibernate.persister.entity.EntityPersister, var2268=r0, var2092=r1, var1941=$r2, var3942=$z0, var2942=org.hibernate.metamodel.model.domain.NavigableRole, var3799=$r7}
; {org.hibernate.stat.internal.StatsHelper=var2357, r8=var3789, org.hibernate.persister.entity.EntityPersister=var1353, r0=var2268, r1=var2092, $r2=var1941, $z0=var3942, org.hibernate.metamodel.model.domain.NavigableRole=var2942, $r7=var3799}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.hibernate.stat.internal.StatsHelper;	r0 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>();	$r2 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r7 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>();	return $r7
;block_num 2