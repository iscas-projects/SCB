(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var644 0)
(declare-sort var134 0)
(declare-sort var725 0)
(declare-sort var2728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locatePersisterForKey/1164658581 (var1234 var644) var644)
(declare-fun naturalIdResolutionCacheMap/-52556295 (var1234) var725)
(declare-fun get/791961573 (var725 var134) var134)
(declare-fun cast-from-var644-to-var134 (var644) var134)
(declare-fun cast-from-var134-to-var2728 (var134) var2728)
(declare-fun stashInvalidNaturalIdReference/-613543812 (var2728 (Array Int var134)) void)
(declare-const null-var1234 var1234)
(declare-const null-var644 var644)
(declare-const null-__Array__Int__var134__ (Array Int var134))
(declare-const null-var2728 var2728)
(declare-const var3143 var1234) ; Statement: r0 := @this: org.hibernate.engine.internal.NaturalIdXrefDelegate 
(assert (not (= var3143 null-var1234)))
(declare-const var2496 var644) ; Statement: r11 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2496 null-var644)))
(declare-const var1583 (Array Int var134)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var1583 null-__Array__Int__var134__)))
(assert true)
(define-const var3605 var644 (locatePersisterForKey/1164658581 var3143 var2496)) ; Statement: r12 = virtualinvoke r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: org.hibernate.persister.entity.EntityPersister locatePersisterForKey(org.hibernate.persister.entity.EntityPersister)>(r11) 
(define-const var1695 var725 (naturalIdResolutionCacheMap/-52556295 var3143)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: java.util.concurrent.ConcurrentHashMap naturalIdResolutionCacheMap> 
(assert true)
(define-const var2197 var134 (get/791961573 var1695 (cast-from-var644-to-var134 var3605))) ; Statement: $r2 = virtualinvoke $r1.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r12) 
(define-const var3738 var2728 (cast-from-var134-to-var2728 var2197)) ; Statement: r3 = (org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache) $r2 
 ; Statement: if r3 != null goto virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4) 
(assert (not (= var3738 null-var2728))) ; Cond: r3 != null 
(assert true)
;(assert (stashInvalidNaturalIdReference/-613543812 var3738 var1583)) ; Statement: virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4) 

(declare-const var3738!1 var2728)
(declare-const var1583!1 (Array Int var134))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {locatePersisterForKey/1164658581=([org.hibernate.engine.internal.NaturalIdXrefDelegate, org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.EntityPersister), naturalIdResolutionCacheMap/-52556295=([org.hibernate.engine.internal.NaturalIdXrefDelegate], java.util.concurrent.ConcurrentHashMap), get/791961573=([java.util.concurrent.ConcurrentHashMap, java.lang.Object], java.lang.Object), cast-from-var644-to-var134=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), cast-from-var134-to-var2728=([java.lang.Object], org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache), stashInvalidNaturalIdReference/-613543812=([org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache, java.lang.Object[]], void)}
; {var1234=org.hibernate.engine.internal.NaturalIdXrefDelegate, var3143=r0, var644=org.hibernate.persister.entity.EntityPersister, var2496=r11, var134=java.lang.Object, var1583=r4, var3605=r12, var725=java.util.concurrent.ConcurrentHashMap, var1695=$r1, var2197=$r2, var2728=org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache, var3738=r3}
; {org.hibernate.engine.internal.NaturalIdXrefDelegate=var1234, r0=var3143, org.hibernate.persister.entity.EntityPersister=var644, r11=var2496, java.lang.Object=var134, r4=var1583, r12=var3605, java.util.concurrent.ConcurrentHashMap=var725, $r1=var1695, $r2=var2197, org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache=var2728, r3=var3738}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.internal.NaturalIdXrefDelegate;	r11 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r4 := @parameter1: java.lang.Object[];	r12 = virtualinvoke r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: org.hibernate.persister.entity.EntityPersister locatePersisterForKey(org.hibernate.persister.entity.EntityPersister)>(r11);	$r1 = r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: java.util.concurrent.ConcurrentHashMap naturalIdResolutionCacheMap>;	$r2 = virtualinvoke $r1.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r12);	r3 = (org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache) $r2;	if r3 != null goto virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4);	virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4);	return
;block_num 2