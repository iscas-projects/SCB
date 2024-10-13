(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3605 0)
(declare-sort var1753 0)
(declare-sort var3517 0)
(declare-sort var606 0)
(declare-sort var2691 0)
(declare-sort var1787 0)
(declare-sort var3375 0)
(declare-sort var1446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2691_getPersistenceContextInternal/1368680823 (var2691) var606)
(declare-fun cast-from-var3517-to-var2691 (var3517) var2691)
(declare-fun var606_getEntry/-487705827 (var606 var1753) var1787)
(declare-fun var1787_getStatus/-2071887356 (var1787) var3375)
(declare-fun var1446-init () var1446)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1753) String)
(declare-fun cast-from-var1787-to-var1753 (var1787) var1753)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1446 String) void)
(declare-const null-var3605 var3605)
(declare-const null-var1753 var1753)
(declare-const null-var3517 var3517)
(declare-const var3375-MANAGED var3375)
(declare-const var3375-READ_ONLY var3375)
(declare-const var2107 var3605) ; Statement: r7 := @this: org.hibernate.action.internal.UnresolvedEntityInsertActions 
(assert (not (= var2107 null-var3605)))
(declare-const var2596 var1753) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2596 null-var1753)))
(declare-const var661 var3517) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var661 null-var3517)))
(define-const var3890 var606 (var2691_getPersistenceContextInternal/1368680823 (cast-from-var3517-to-var2691 var661))) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(define-const var1741 var1787 (var606_getEntry/-487705827 var3890 var2596)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r1) 
(define-const var2287 var3375 (var1787_getStatus/-2071887356 var1741)) ; Statement: $r5 = interfaceinvoke r3.<org.hibernate.engine.spi.EntityEntry: org.hibernate.engine.spi.Status getStatus()>() 
(define-const var3058 var3375 var3375-MANAGED) ; Statement: $r4 = <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status MANAGED> 
 ; Statement: if $r5 == $r4 goto $r6 = <org.hibernate.action.internal.UnresolvedEntityInsertActions: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (not (= var2287 var3058))) ; Negate: Cond: $r5 == $r4  
(define-const var2382 var3375 (var1787_getStatus/-2071887356 var1741)) ; Statement: $r45 = interfaceinvoke r3.<org.hibernate.engine.spi.EntityEntry: org.hibernate.engine.spi.Status getStatus()>() 
(define-const var3177 var3375 var3375-READ_ONLY) ; Statement: $r44 = <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status READ_ONLY> 
 ; Statement: if $r45 == $r44 goto $r6 = <org.hibernate.action.internal.UnresolvedEntityInsertActions: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (not (= var2382 var3177))) ; Negate: Cond: $r45 == $r44  
(define-const var1630 var1446 var1446-init) ; Statement: $r47 = new java.lang.IllegalArgumentException 
(define-const var189 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var189)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var189!1 String)
(assert (= var189!1 ""))
(assert true)
(define-const var882 String (append/672562846 var189!1 "EntityEntry did not have status MANAGED or READ_ONLY: ")) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityEntry did not have status MANAGED or READ_ONLY: ") 
(declare-const var189!2 String)
(assert (= var189!2 (str.++ var189!1 "EntityEntry did not have status MANAGED or READ_ONLY: ")))
(assert true)
(define-const var560 String (append/-1031950772 var882 (cast-from-var1787-to-var1753 var1741))) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var882!1 String)
(assert (str.prefixof var882 var882!1))
(assert true)
(define-const var82 String (toString/-2075883882 var560)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1630 var82)) ; Statement: specialinvoke $r47.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r51) 

(declare-const var1630!1 var1446)
(declare-const var82!1 String)
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {var2691_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), cast-from-var3517-to-var2691=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var606_getEntry/-487705827=([org.hibernate.engine.spi.PersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), var1787_getStatus/-2071887356=([org.hibernate.engine.spi.EntityEntry], org.hibernate.engine.spi.Status), var1446-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1787-to-var1753=([org.hibernate.engine.spi.EntityEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3605=org.hibernate.action.internal.UnresolvedEntityInsertActions, var2107=r7, var1753=java.lang.Object, var2596=r1, var3517=org.hibernate.engine.spi.SessionImplementor, var661=r0, var606=org.hibernate.engine.spi.PersistenceContext, var2691=org.hibernate.engine.spi.SharedSessionContractImplementor, var3890=$r2, var1787=org.hibernate.engine.spi.EntityEntry, var1741=r3, var3375=org.hibernate.engine.spi.Status, var2287=$r5, var3058=$r4, var2382=$r45, var3177=$r44, var1446=java.lang.IllegalArgumentException, var1630=$r47, var189=$r48, var882=$r49, var560=$r50, var82=$r51}
; {org.hibernate.action.internal.UnresolvedEntityInsertActions=var3605, r7=var2107, java.lang.Object=var1753, r1=var2596, org.hibernate.engine.spi.SessionImplementor=var3517, r0=var661, org.hibernate.engine.spi.PersistenceContext=var606, org.hibernate.engine.spi.SharedSessionContractImplementor=var2691, $r2=var3890, org.hibernate.engine.spi.EntityEntry=var1787, r3=var1741, org.hibernate.engine.spi.Status=var3375, $r5=var2287, $r4=var3058, $r45=var2382, $r44=var3177, java.lang.IllegalArgumentException=var1446, $r47=var1630, $r48=var189, $r49=var882, $r50=var560, $r51=var82}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.action.internal.UnresolvedEntityInsertActions;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.engine.spi.SessionImplementor;	$r2 = interfaceinvoke r0.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r1);	$r5 = interfaceinvoke r3.<org.hibernate.engine.spi.EntityEntry: org.hibernate.engine.spi.Status getStatus()>();	$r4 = <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status MANAGED>;	if $r5 == $r4 goto $r6 = <org.hibernate.action.internal.UnresolvedEntityInsertActions: org.hibernate.internal.CoreMessageLogger LOG>;	$r45 = interfaceinvoke r3.<org.hibernate.engine.spi.EntityEntry: org.hibernate.engine.spi.Status getStatus()>();	$r44 = <org.hibernate.engine.spi.Status: org.hibernate.engine.spi.Status READ_ONLY>;	if $r45 == $r44 goto $r6 = <org.hibernate.action.internal.UnresolvedEntityInsertActions: org.hibernate.internal.CoreMessageLogger LOG>;	$r47 = new java.lang.IllegalArgumentException;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityEntry did not have status MANAGED or READ_ONLY: ");	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r47.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r51);	throw $r47
;block_num 3