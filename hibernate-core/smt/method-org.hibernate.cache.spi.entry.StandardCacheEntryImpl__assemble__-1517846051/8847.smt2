(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var832 0)
(declare-sort var2098 0)
(declare-sort var2081 0)
(declare-sort var2154 0)
(declare-sort var2395 0)
(declare-sort var1385 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2154_getEntityName/-1914780628 (var2154) String)
(declare-fun subclass/2131935837 (var832) String)
(declare-fun var1874-init () var1874)
(declare-fun <init>/1590914260 (var1874 String) void)
(declare-const null-var832 var832)
(declare-const null-var2098 var2098)
(declare-const null-var2081 var2081)
(declare-const null-var2154 var2154)
(declare-const null-var2395 var2395)
(declare-const null-var1385 var1385)
(declare-const var1059 var832) ; Statement: r1 := @this: org.hibernate.cache.spi.entry.StandardCacheEntryImpl 
(assert (not (= var1059 null-var832)))
(declare-const var2264 var2098) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var2264 null-var2098)))
(declare-const var3998 var2081) ; Statement: r11 := @parameter1: java.io.Serializable 
(assert (not (= var3998 null-var2081)))
(declare-const var3782 var2154) ; Statement: r0 := @parameter2: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3782 null-var2154)))
(declare-const var499 var2395) ; Statement: r26 := @parameter3: org.hibernate.Interceptor 
(assert (not (= var499 null-var2395)))
(declare-const var1786 var1385) ; Statement: r5 := @parameter4: org.hibernate.event.spi.EventSource 
(assert (not (= var1786 null-var1385)))
(define-const var708 String (var2154_getEntityName/-1914780628 var3782)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(define-const var2232 String (subclass/2131935837 var1059)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.lang.String subclass> 
(assert true)
(define-const var994 Bool (= var708 var2232)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.io.Serializable[] disassembledState> 
(assert (not (not (= (ite var994 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2850 var1874 var1874-init) ; Statement: $r25 = new org.hibernate.AssertionFailure 
(assert true)
;(assert (<init>/1590914260 var2850 "Tried to assemble a different subclass instance")) ; Statement: specialinvoke $r25.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("Tried to assemble a different subclass instance") 

(declare-const var2850!1 var1874)
(declare-const var3262 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var2154_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), subclass/2131935837=([org.hibernate.cache.spi.entry.StandardCacheEntryImpl], java.lang.String), var1874-init=([], org.hibernate.AssertionFailure), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var832=org.hibernate.cache.spi.entry.StandardCacheEntryImpl, var1059=r1, var2098=java.lang.Object, var2264=r6, var2081=java.io.Serializable, var3998=r11, var2154=org.hibernate.persister.entity.EntityPersister, var3782=r0, var2395=org.hibernate.Interceptor, var499=r26, var1385=org.hibernate.event.spi.EventSource, var1786=r5, var708=$r3, var2232=$r2, var994=$z0, var1874=org.hibernate.AssertionFailure, var2850=$r25, var3262="Tried to assemble a different subclass instance"}
; {org.hibernate.cache.spi.entry.StandardCacheEntryImpl=var832, r1=var1059, java.lang.Object=var2098, r6=var2264, java.io.Serializable=var2081, r11=var3998, org.hibernate.persister.entity.EntityPersister=var2154, r0=var3782, org.hibernate.Interceptor=var2395, r26=var499, org.hibernate.event.spi.EventSource=var1385, r5=var1786, $r3=var708, $r2=var2232, $z0=var994, org.hibernate.AssertionFailure=var1874, $r25=var2850, "Tried to assemble a different subclass instance"=var3262}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.entry.StandardCacheEntryImpl;	r6 := @parameter0: java.lang.Object;	r11 := @parameter1: java.io.Serializable;	r0 := @parameter2: org.hibernate.persister.entity.EntityPersister;	r26 := @parameter3: org.hibernate.Interceptor;	r5 := @parameter4: org.hibernate.event.spi.EventSource;	$r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r2 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.lang.String subclass>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = r1.<org.hibernate.cache.spi.entry.StandardCacheEntryImpl: java.io.Serializable[] disassembledState>;	$r25 = new org.hibernate.AssertionFailure;	specialinvoke $r25.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("Tried to assemble a different subclass instance");	throw $r25
;block_num 2