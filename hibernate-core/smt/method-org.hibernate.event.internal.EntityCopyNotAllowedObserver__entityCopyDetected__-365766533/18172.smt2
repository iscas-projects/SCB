(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var589 0)
(declare-sort var2367 0)
(declare-sort var2345 0)
(declare-sort var3324 0)
(declare-sort var2281 0)
(declare-sort var1684 0)
(declare-sort var891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3324_getEntityName/678863501 (var3324 var2367) String)
(declare-fun cast-from-var2345-to-var3324 (var2345) var3324)
(declare-fun var3324_getIdentifier/613441564 (var3324 var2367) var2281)
(declare-fun var1684_infoString/1203698788 (String var2281) String)
(declare-fun var891-init () var891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getManagedOrDetachedEntityString/583611682 (var589 var2367 var2367) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var891 String) void)
(declare-const null-var589 var589)
(declare-const null-var2367 var2367)
(declare-const null-var2345 var2345)
(declare-const var800 var589) ; Statement: r9 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver 
(assert (not (= var800 null-var589)))
(declare-const var1548 var2367) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1548 null-var2367)))
(declare-const var2001 var2367) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2001 null-var2367)))
(declare-const var580 var2367) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var580 null-var2367)))
(declare-const var2175 var2345) ; Statement: r2 := @parameter3: org.hibernate.event.spi.EventSource 
(assert (not (= var2175 null-var2345)))
 ; Statement: if r0 != r1 goto $r4 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1) 
(assert (not (= var2001 var1548))) ; Cond: r0 != r1 
(define-const var933 String (var3324_getEntityName/678863501 (cast-from-var2345-to-var3324 var2175) var1548)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1) 
(define-const var807 var2281 (var3324_getIdentifier/613441564 (cast-from-var2345-to-var3324 var2175) var1548)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1) 
(define-const var2732 String (var1684_infoString/1203698788 var933 var807)) ; Statement: $r18 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r4, $r3) 
(define-const var2360 var891 var891-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var511 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var511)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var511!1 String)
(assert (= var511!1 ""))
(assert true)
(define-const var607 String (append/672562846 var511!1 "Multiple representations of the same entity ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple representations of the same entity ") 
(declare-const var511!2 String)
(assert (= var511!2 (str.++ var511!1 "Multiple representations of the same entity ")))
(assert true)
(define-const var1118 String (append/672562846 var607 var2732)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var607!1 String)
(assert (= var607!1 (str.++ var607 var2732)))
(assert true)
(define-const var2858 String (append/672562846 var1118 " are being merged. ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" are being merged. ") 
(declare-const var1118!1 String)
(assert (= var1118!1 (str.++ var1118 " are being merged. ")))
(assert true)
(define-const var3786 String (getManagedOrDetachedEntityString/583611682 var800 var1548 var2001)) ; Statement: $r10 = specialinvoke r9.<org.hibernate.event.internal.EntityCopyNotAllowedObserver: java.lang.String getManagedOrDetachedEntityString(java.lang.Object,java.lang.Object)>(r1, r0) 
(assert true)
(define-const var432 String (append/672562846 var2858 var3786)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2858!1 String)
(assert (= var2858!1 (str.++ var2858 var3786)))
(assert true)
(define-const var605 String (append/672562846 var432 "; ")) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ") 
(declare-const var432!1 String)
(assert (= var432!1 (str.++ var432 "; ")))
(assert true)
(define-const var998 String (getManagedOrDetachedEntityString/583611682 var800 var1548 var580)) ; Statement: $r14 = specialinvoke r9.<org.hibernate.event.internal.EntityCopyNotAllowedObserver: java.lang.String getManagedOrDetachedEntityString(java.lang.Object,java.lang.Object)>(r1, r13) 
(assert true)
(define-const var2317 String (append/672562846 var605 var998)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var605!1 String)
(assert (= var605!1 (str.++ var605 var998)))
(assert true)
(define-const var956 String (toString/-2075883882 var2317)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2360 var956)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17) 

(declare-const var2360!1 var891)
(declare-const var956!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3324_getEntityName/678863501=([org.hibernate.Session, java.lang.Object], java.lang.String), cast-from-var2345-to-var3324=([org.hibernate.event.spi.EventSource], org.hibernate.Session), var3324_getIdentifier/613441564=([org.hibernate.Session, java.lang.Object], java.io.Serializable), var1684_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), var891-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getManagedOrDetachedEntityString/583611682=([org.hibernate.event.internal.EntityCopyNotAllowedObserver, java.lang.Object, java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var589=org.hibernate.event.internal.EntityCopyNotAllowedObserver, var800=r9, var2367=java.lang.Object, var1548=r1, var2001=r0, var580=r13, var2345=org.hibernate.event.spi.EventSource, var2175=r2, var3324=org.hibernate.Session, var933=$r4, var2281=java.io.Serializable, var807=$r3, var1684=org.hibernate.pretty.MessageHelper, var2732=$r18, var891=java.lang.IllegalStateException, var2360=$r5, var511=$r6, var607=$r7, var1118=$r8, var2858=$r11, var3786=$r10, var432=$r12, var605=$r15, var998=$r14, var2317=$r16, var956=$r17}
; {org.hibernate.event.internal.EntityCopyNotAllowedObserver=var589, r9=var800, java.lang.Object=var2367, r1=var1548, r0=var2001, r13=var580, org.hibernate.event.spi.EventSource=var2345, r2=var2175, org.hibernate.Session=var3324, $r4=var933, java.io.Serializable=var2281, $r3=var807, org.hibernate.pretty.MessageHelper=var1684, $r18=var2732, java.lang.IllegalStateException=var891, $r5=var2360, $r6=var511, $r7=var607, $r8=var1118, $r11=var2858, $r10=var3786, $r12=var432, $r15=var605, $r14=var998, $r16=var2317, $r17=var956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r13 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.event.spi.EventSource;	if r0 != r1 goto $r4 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1);	$r4 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.lang.String getEntityName(java.lang.Object)>(r1);	$r3 = interfaceinvoke r2.<org.hibernate.event.spi.EventSource: java.io.Serializable getIdentifier(java.lang.Object)>(r1);	$r18 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r4, $r3);	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple representations of the same entity ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" are being merged. ");	$r10 = specialinvoke r9.<org.hibernate.event.internal.EntityCopyNotAllowedObserver: java.lang.String getManagedOrDetachedEntityString(java.lang.Object,java.lang.Object)>(r1, r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ");	$r14 = specialinvoke r9.<org.hibernate.event.internal.EntityCopyNotAllowedObserver: java.lang.String getManagedOrDetachedEntityString(java.lang.Object,java.lang.Object)>(r1, r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r17);	throw $r5
;block_num 2