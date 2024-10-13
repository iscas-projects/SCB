(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2738 0)
(declare-sort var3738 0)
(declare-sort var3073 0)
(declare-sort var2746 0)
(declare-sort var3178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReference/-219040944 (var3738) var3178)
(declare-fun makeEntityCircularReferenceSafe/-1000426948 (var2738 var3738 var3073 var3178 var2746) void)
(declare-const null-var2738 var2738)
(declare-const null-var3738 var3738)
(declare-const null-var3073 var3073)
(declare-const null-var2746 var2746)
(declare-const null-var3178 var3178)
(declare-const var38 var2738) ; Statement: r2 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var38 null-var2738)))
(declare-const var3126 var3738) ; Statement: r0 := @parameter0: org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl 
(assert (not (= var3126 null-var3738)))
(declare-const var2867 var3073) ; Statement: r3 := @parameter1: org.hibernate.event.spi.EventSource 
(assert (not (= var2867 null-var3073)))
(declare-const var490 var2746) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.EntityKey 
(assert (not (= var490 null-var2746)))
(assert true)
(define-const var3195 var3178 (getReference/-219040944 var3126)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl: java.lang.Object getReference()>() 
 ; Statement: if r1 != null goto specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4) 
(assert (not (= var3195 null-var3178))) ; Cond: r1 != null 
(assert true)
;(assert (makeEntityCircularReferenceSafe/-1000426948 var38 var3126 var2867 var3195 var490)) ; Statement: specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4) 

(declare-const var38!1 var2738)
(declare-const var3126!1 var3738)
(declare-const var2867!1 var3073)
(declare-const var3195!1 var3178)
(declare-const var490!1 var2746)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getReference/-219040944=([org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl], java.lang.Object), makeEntityCircularReferenceSafe/-1000426948=([org.hibernate.loader.entity.CacheEntityLoaderHelper, org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl, org.hibernate.event.spi.EventSource, java.lang.Object, org.hibernate.engine.spi.EntityKey], void)}
; {var2738=org.hibernate.loader.entity.CacheEntityLoaderHelper, var38=r2, var3738=org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl, var3126=r0, var3073=org.hibernate.event.spi.EventSource, var2867=r3, var2746=org.hibernate.engine.spi.EntityKey, var490=r4, var3178=java.lang.Object, var3195=r1}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var2738, r2=var38, org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl=var3738, r0=var3126, org.hibernate.event.spi.EventSource=var3073, r3=var2867, org.hibernate.engine.spi.EntityKey=var2746, r4=var490, java.lang.Object=var3178, r1=var3195}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r0 := @parameter0: org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl;	r3 := @parameter1: org.hibernate.event.spi.EventSource;	r4 := @parameter2: org.hibernate.engine.spi.EntityKey;	r1 = virtualinvoke r0.<org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl: java.lang.Object getReference()>();	if r1 != null goto specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4);	specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4);	return r1
;block_num 2