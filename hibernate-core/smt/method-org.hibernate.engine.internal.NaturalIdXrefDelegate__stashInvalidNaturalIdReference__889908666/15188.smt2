(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2799 0)
(declare-sort var1840 0)
(declare-sort var2645 0)
(declare-sort var960 0)
(declare-sort var1901 0)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locatePersisterForKey/1164658581 (var2799 var1840) var1840)
(declare-fun naturalIdResolutionCacheMap/-52556295 (var2799) var960)
(declare-fun get/791961573 (var960 var2645) var2645)
(declare-fun cast-from-var1840-to-var2645 (var1840) var2645)
(declare-fun cast-from-var2645-to-var1901 (var2645) var1901)
(declare-fun var3605-init () var3605)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1840_getEntityName/-1914780628 (var1840) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3605 String) void)
(declare-const null-var2799 var2799)
(declare-const null-var1840 var1840)
(declare-const null-__Array__Int__var2645__ (Array Int var2645))
(declare-const null-var1901 var1901)
(declare-const var3778 var2799) ; Statement: r0 := @this: org.hibernate.engine.internal.NaturalIdXrefDelegate 
(assert (not (= var3778 null-var2799)))
(declare-const var2143 var1840) ; Statement: r11 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2143 null-var1840)))
(declare-const var2131 (Array Int var2645)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var2131 null-__Array__Int__var2645__)))
(assert true)
(define-const var279 var1840 (locatePersisterForKey/1164658581 var3778 var2143)) ; Statement: r12 = virtualinvoke r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: org.hibernate.persister.entity.EntityPersister locatePersisterForKey(org.hibernate.persister.entity.EntityPersister)>(r11) 
(define-const var3090 var960 (naturalIdResolutionCacheMap/-52556295 var3778)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: java.util.concurrent.ConcurrentHashMap naturalIdResolutionCacheMap> 
(assert true)
(define-const var95 var2645 (get/791961573 var3090 (cast-from-var1840-to-var2645 var279))) ; Statement: $r2 = virtualinvoke $r1.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r12) 
(define-const var2253 var1901 (cast-from-var2645-to-var1901 var95)) ; Statement: r3 = (org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache) $r2 
 ; Statement: if r3 != null goto virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4) 
(assert (not (not (= var2253 null-var1901)))) ; Negate: Cond: r3 != null  
(define-const var1546 var3605 var3605-init) ; Statement: $r5 = new org.hibernate.AssertionFailure 
(define-const var60 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var3939 String (append/672562846 var60!1 "Expecting NaturalIdResolutionCache to exist already for entity ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting NaturalIdResolutionCache to exist already for entity ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "Expecting NaturalIdResolutionCache to exist already for entity ")))
(define-const var3029 String (var1840_getEntityName/-1914780628 var279)) ; Statement: $r7 = interfaceinvoke r12.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var309 String (append/672562846 var3939 var3029)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3939!1 String)
(assert (= var3939!1 (str.++ var3939 var3029)))
(assert true)
(define-const var3142 String (toString/-2075883882 var309)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1546 var3142)) ; Statement: specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var1546!1 var3605)
(declare-const var3142!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {locatePersisterForKey/1164658581=([org.hibernate.engine.internal.NaturalIdXrefDelegate, org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.EntityPersister), naturalIdResolutionCacheMap/-52556295=([org.hibernate.engine.internal.NaturalIdXrefDelegate], java.util.concurrent.ConcurrentHashMap), get/791961573=([java.util.concurrent.ConcurrentHashMap, java.lang.Object], java.lang.Object), cast-from-var1840-to-var2645=([org.hibernate.persister.entity.EntityPersister], java.lang.Object), cast-from-var2645-to-var1901=([java.lang.Object], org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache), var3605-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1840_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2799=org.hibernate.engine.internal.NaturalIdXrefDelegate, var3778=r0, var1840=org.hibernate.persister.entity.EntityPersister, var2143=r11, var2645=java.lang.Object, var2131=r4, var279=r12, var960=java.util.concurrent.ConcurrentHashMap, var3090=$r1, var95=$r2, var1901=org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache, var2253=r3, var3605=org.hibernate.AssertionFailure, var1546=$r5, var60=$r6, var3939=$r8, var3029=$r7, var309=$r9, var3142=$r10}
; {org.hibernate.engine.internal.NaturalIdXrefDelegate=var2799, r0=var3778, org.hibernate.persister.entity.EntityPersister=var1840, r11=var2143, java.lang.Object=var2645, r4=var2131, r12=var279, java.util.concurrent.ConcurrentHashMap=var960, $r1=var3090, $r2=var95, org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache=var1901, r3=var2253, org.hibernate.AssertionFailure=var3605, $r5=var1546, $r6=var60, $r8=var3939, $r7=var3029, $r9=var309, $r10=var3142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.NaturalIdXrefDelegate;	r11 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r4 := @parameter1: java.lang.Object[];	r12 = virtualinvoke r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: org.hibernate.persister.entity.EntityPersister locatePersisterForKey(org.hibernate.persister.entity.EntityPersister)>(r11);	$r1 = r0.<org.hibernate.engine.internal.NaturalIdXrefDelegate: java.util.concurrent.ConcurrentHashMap naturalIdResolutionCacheMap>;	$r2 = virtualinvoke $r1.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r12);	r3 = (org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache) $r2;	if r3 != null goto virtualinvoke r3.<org.hibernate.engine.internal.NaturalIdXrefDelegate$NaturalIdResolutionCache: void stashInvalidNaturalIdReference(java.lang.Object[])>(r4);	$r5 = new org.hibernate.AssertionFailure;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting NaturalIdResolutionCache to exist already for entity ");	$r7 = interfaceinvoke r12.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2