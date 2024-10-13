(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1994 0)
(declare-sort var2917 0)
(declare-sort var1126 0)
(declare-sort var1599 0)
(declare-sort var2096 0)
(declare-sort var789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/-442556786 (var1994) var1126)
(declare-fun var2096_getPersistenceContextInternal/1368680823 (var2096) var1599)
(declare-fun cast-from-var1126-to-var2096 (var1126) var2096)
(declare-fun var1599_getEntry/-487705827 (var1599 var2917) var789)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2917) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1994 var1994)
(declare-const null-var2917 var2917)
(declare-const null-var789 var789)
(declare-const var3260 var1994) ; Statement: r0 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var3260 null-var1994)))
(declare-const var939 var2917) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var939 null-var2917)))
(define-const var862 var1126 (session/-442556786 var3260)) ; Statement: $r1 = r0.<org.hibernate.event.internal.MergeContext: org.hibernate.event.spi.EventSource session> 
(define-const var3227 var1599 (var2096_getPersistenceContextInternal/1368680823 (cast-from-var1126-to-var2096 var862))) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(define-const var3646 var789 (var1599_getEntry/-487705827 var3227 var939)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r2) 
 ; Statement: if $r4 == null goto $r5 = new java.lang.StringBuilder 
(assert (= var3646 null-var789)) ; Cond: $r4 == null 
(define-const var3921 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3921)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3921!1 String)
(assert (= var3921!1 ""))
(assert true)
(define-const var3558 String (append/672562846 var3921!1 "[")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3921!2 String)
(assert (= var3921!2 (str.++ var3921!1 "[")))
(assert true)
(define-const var2714 String (append/-1031950772 var3558 var939)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3558!1 String)
(assert (str.prefixof var3558 var3558!1))
(assert true)
(define-const var2026 String (append/672562846 var2714 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2714!1 String)
(assert (= var2714!1 (str.++ var2714 "]")))
(assert true)
(define-const var2479 String (toString/-2075883882 var2026)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {session/-442556786=([org.hibernate.event.internal.MergeContext], org.hibernate.event.spi.EventSource), var2096_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), cast-from-var1126-to-var2096=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.SharedSessionContractImplementor), var1599_getEntry/-487705827=([org.hibernate.engine.spi.PersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1994=org.hibernate.event.internal.MergeContext, var3260=r0, var2917=java.lang.Object, var939=r2, var1126=org.hibernate.event.spi.EventSource, var862=$r1, var1599=org.hibernate.engine.spi.PersistenceContext, var2096=org.hibernate.engine.spi.SharedSessionContractImplementor, var3227=$r3, var789=org.hibernate.engine.spi.EntityEntry, var3646=$r4, var3921=$r5, var3558=$r6, var2714=$r7, var2026=$r8, var2479=$r9}
; {org.hibernate.event.internal.MergeContext=var1994, r0=var3260, java.lang.Object=var2917, r2=var939, org.hibernate.event.spi.EventSource=var1126, $r1=var862, org.hibernate.engine.spi.PersistenceContext=var1599, org.hibernate.engine.spi.SharedSessionContractImplementor=var2096, $r3=var3227, org.hibernate.engine.spi.EntityEntry=var789, $r4=var3646, $r5=var3921, $r6=var3558, $r7=var2714, $r8=var2026, $r9=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.internal.MergeContext;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.event.internal.MergeContext: org.hibernate.event.spi.EventSource session>;	$r3 = interfaceinvoke $r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r2);	if $r4 == null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2