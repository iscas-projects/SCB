(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var3840 0)
(declare-sort var2396 0)
(declare-sort var3356 0)
(declare-sort var336 0)
(declare-sort var1565 0)
(declare-sort var81 0)
(declare-sort var3599 0)
(declare-sort var3889 0)
(declare-sort var1859 0)
(declare-sort var3041 0)
(declare-sort var2548 0)
(declare-sort var3775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildingContext/-2108655688 (var1390) var2396)
(declare-fun var2396_getMetadataCollector/-129185252 (var2396) var3356)
(declare-fun fetchProfileName/-2108655688 (var1390) String)
(declare-fun var1565_getFetchProfile/-860010951 (var1565 String) var336)
(declare-fun cast-from-var3356-to-var1565 (var3356) var1565)
(declare-fun var336-init () var336)
(declare-fun <init>/-922780853 (var336 String var81) void)
(declare-fun var3356_addFetchProfile/-16206821 (var3356 var336) void)
(declare-fun fetch/-2108655688 (var1390) var3599)
(declare-fun var3599_entity/-1310534373 (var3599) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1565_getEntityBinding/-1652541374 (var1565 String) var3889)
(declare-fun var3599_association/1766046100 (var3599) String)
(declare-fun getProperty/-1090031273 (var3889 String) var3775)
(declare-fun var3599_mode/-368596252 (var3599) var1859)
(declare-fun toString/1761020461 (var3041) String)
(declare-fun cast-from-var1859-to-var3041 (var1859) var3041)
(declare-fun toLowerCase/1946809429 (String var2548) String)
(declare-fun addFetch/-1062074252 (var336 String String String) void)
(declare-const null-var1390 var1390)
(declare-const null-var3840 var3840)
(declare-const null-var336 var336)
(declare-const var81-ANNOTATIONS var81)
(declare-const var2548-ROOT var2548)
(declare-const var2845 var1390) ; Statement: r0 := @this: org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass 
(assert (not (= var2845 null-var1390)))
(declare-const var2591 var3840) ; Statement: r29 := @parameter0: java.util.Map 
(assert (not (= var2591 null-var3840)))
(define-const var3457 var2396 (buildingContext/-2108655688 var2845)) ; Statement: $r1 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var1524 var3356 (var2396_getMetadataCollector/-129185252 var3457)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var292 String (fetchProfileName/-2108655688 var2845)) ; Statement: $r2 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName> 
(define-const var3934 var336 (var1565_getFetchProfile/-860010951 (cast-from-var3356-to-var1565 var1524) var292)) ; Statement: r30 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.FetchProfile getFetchProfile(java.lang.String)>($r2) 
 ; Statement: if r30 == null goto $r4 = new org.hibernate.mapping.FetchProfile 
(assert (= var3934 null-var336)) ; Cond: r30 == null 
(define-const var3953 var336 var336-init) ; Statement: $r4 = new org.hibernate.mapping.FetchProfile 
(define-const var158 String (fetchProfileName/-2108655688 var2845)) ; Statement: $r6 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName> 
(define-const var3981 var81 var81-ANNOTATIONS) ; Statement: $r5 = <org.hibernate.mapping.MetadataSource: org.hibernate.mapping.MetadataSource ANNOTATIONS> 
(assert true)
;(assert (<init>/-922780853 var3953 var158 var3981)) ; Statement: specialinvoke $r4.<org.hibernate.mapping.FetchProfile: void <init>(java.lang.String,org.hibernate.mapping.MetadataSource)>($r6, $r5) 

(declare-const var3953!1 var336)
(declare-const var158!1 String)
(declare-const var3981!1 var81)
(define-const var3934!1 var336 var3953!1) ; Statement: r30 = $r4 
(define-const var1563 var2396 (buildingContext/-2108655688 var2845)) ; Statement: $r7 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3928 var3356 (var2396_getMetadataCollector/-129185252 var1563)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
;(assert (var3356_addFetchProfile/-16206821 var3928 var3953!1)) ; Statement: interfaceinvoke $r8.<org.hibernate.boot.spi.InFlightMetadataCollector: void addFetchProfile(org.hibernate.mapping.FetchProfile)>($r4) 

(declare-const var3928!1 var3356)
(declare-const var3953!2 var336)
(assert true) ; Non Conditional
(define-const var2935 var2396 (buildingContext/-2108655688 var2845)) ; Statement: $r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var1454 var3356 (var2396_getMetadataCollector/-129185252 var2935)) ; Statement: $r13 = interfaceinvoke $r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3005 var3599 (fetch/-2108655688 var2845)) ; Statement: $r10 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var2901 ClassObject (var3599_entity/-1310534373 var3005)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>() 
(assert true)
(define-const var692 String (getName/-1958580599 var2901)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(define-const var1725 var3889 (var1565_getEntityBinding/-1652541374 (cast-from-var3356-to-var1565 var1454) var692)) ; Statement: $r28 = interfaceinvoke $r13.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r12) 
(define-const var3939 var3599 (fetch/-2108655688 var2845)) ; Statement: $r14 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var898 String (var3599_association/1766046100 var3939)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>() 
(assert true)
;(assert (getProperty/-1090031273 var1725 var898)) ; Statement: virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getProperty(java.lang.String)>($r15) 

(declare-const var1725!1 var3889)
(declare-const var898!1 String)
(define-const var2326 var3599 (fetch/-2108655688 var2845)) ; Statement: $r16 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var1347 ClassObject (var3599_entity/-1310534373 var2326)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>() 
(assert true)
(define-const var622 String (getName/-1958580599 var1347)) ; Statement: $r25 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>() 
(define-const var2840 var3599 (fetch/-2108655688 var2845)) ; Statement: $r18 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var2366 String (var3599_association/1766046100 var2840)) ; Statement: $r24 = interfaceinvoke $r18.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>() 
(define-const var3288 var3599 (fetch/-2108655688 var2845)) ; Statement: $r19 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var3400 var1859 (var3599_mode/-368596252 var3288)) ; Statement: $r20 = interfaceinvoke $r19.<org.hibernate.annotations.FetchProfile$FetchOverride: org.hibernate.annotations.FetchMode mode()>() 
(assert true)
(define-const var823 String (toString/1761020461 (cast-from-var1859-to-var3041 var3400))) ; Statement: $r22 = virtualinvoke $r20.<org.hibernate.annotations.FetchMode: java.lang.String toString()>() 
(define-const var1294 var2548 var2548-ROOT) ; Statement: $r21 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1119 String (toLowerCase/1946809429 var823 var1294)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r21) 
(assert true)
;(assert (addFetch/-1062074252 var3934!1 var622 var2366 var1119)) ; Statement: virtualinvoke r30.<org.hibernate.mapping.FetchProfile: void addFetch(java.lang.String,java.lang.String,java.lang.String)>($r25, $r24, $r23) 

(declare-const var3934!2 var336)
(declare-const var622!1 String)
(declare-const var2366!1 String)
(declare-const var1119!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buildingContext/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), var2396_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), fetchProfileName/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], java.lang.String), var1565_getFetchProfile/-860010951=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.FetchProfile), cast-from-var3356-to-var1565=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var336-init=([], org.hibernate.mapping.FetchProfile), <init>/-922780853=([org.hibernate.mapping.FetchProfile, java.lang.String, org.hibernate.mapping.MetadataSource], void), var3356_addFetchProfile/-16206821=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.mapping.FetchProfile], void), fetch/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], org.hibernate.annotations.FetchProfile$FetchOverride), var3599_entity/-1310534373=([org.hibernate.annotations.FetchProfile$FetchOverride], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var1565_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), var3599_association/1766046100=([org.hibernate.annotations.FetchProfile$FetchOverride], java.lang.String), getProperty/-1090031273=([org.hibernate.mapping.PersistentClass, java.lang.String], org.hibernate.mapping.Property), var3599_mode/-368596252=([org.hibernate.annotations.FetchProfile$FetchOverride], org.hibernate.annotations.FetchMode), toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var1859-to-var3041=([org.hibernate.annotations.FetchMode], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), addFetch/-1062074252=([org.hibernate.mapping.FetchProfile, java.lang.String, java.lang.String, java.lang.String], void)}
; {var1390=org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass, var2845=r0, var3840=java.util.Map, var2591=r29, var2396=org.hibernate.boot.spi.MetadataBuildingContext, var3457=$r1, var3356=org.hibernate.boot.spi.InFlightMetadataCollector, var1524=$r3, var292=$r2, var336=org.hibernate.mapping.FetchProfile, var1565=org.hibernate.boot.Metadata, var3934=r30, var3953=$r4, var158=$r6, var81=org.hibernate.mapping.MetadataSource, var3981=$r5, var1563=$r7, var3928=$r8, var2935=$r9, var1454=$r13, var3599=org.hibernate.annotations.FetchProfile$FetchOverride, var3005=$r10, var2901=$r11, var692=$r12, var3889=org.hibernate.mapping.PersistentClass, var1725=$r28, var3939=$r14, var898=$r15, var2326=$r16, var1347=$r17, var622=$r25, var2840=$r18, var2366=$r24, var3288=$r19, var1859=org.hibernate.annotations.FetchMode, var3400=$r20, var3041=java.lang.Enum, var823=$r22, var2548=java.util.Locale, var1294=$r21, var1119=$r23, var3775=org.hibernate.mapping.Property}
; {org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass=var1390, r0=var2845, java.util.Map=var3840, r29=var2591, org.hibernate.boot.spi.MetadataBuildingContext=var2396, $r1=var3457, org.hibernate.boot.spi.InFlightMetadataCollector=var3356, $r3=var1524, $r2=var292, org.hibernate.mapping.FetchProfile=var336, org.hibernate.boot.Metadata=var1565, r30=var3934, $r4=var3953, $r6=var158, org.hibernate.mapping.MetadataSource=var81, $r5=var3981, $r7=var1563, $r8=var3928, $r9=var2935, $r13=var1454, org.hibernate.annotations.FetchProfile$FetchOverride=var3599, $r10=var3005, $r11=var2901, $r12=var692, org.hibernate.mapping.PersistentClass=var3889, $r28=var1725, $r14=var3939, $r15=var898, $r16=var2326, $r17=var1347, $r25=var622, $r18=var2840, $r24=var2366, $r19=var3288, org.hibernate.annotations.FetchMode=var1859, $r20=var3400, java.lang.Enum=var3041, $r22=var823, java.util.Locale=var2548, $r21=var1294, $r23=var1119, org.hibernate.mapping.Property=var3775}
;seq <java.lang.Enum: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass;	r29 := @parameter0: java.util.Map;	$r1 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r3 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r2 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName>;	r30 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.FetchProfile getFetchProfile(java.lang.String)>($r2);	if r30 == null goto $r4 = new org.hibernate.mapping.FetchProfile;	$r4 = new org.hibernate.mapping.FetchProfile;	$r6 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName>;	$r5 = <org.hibernate.mapping.MetadataSource: org.hibernate.mapping.MetadataSource ANNOTATIONS>;	specialinvoke $r4.<org.hibernate.mapping.FetchProfile: void <init>(java.lang.String,org.hibernate.mapping.MetadataSource)>($r6, $r5);	r30 = $r4;	$r7 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	interfaceinvoke $r8.<org.hibernate.boot.spi.InFlightMetadataCollector: void addFetchProfile(org.hibernate.mapping.FetchProfile)>($r4);	$r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r13 = interfaceinvoke $r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r10 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r11 = interfaceinvoke $r10.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r28 = interfaceinvoke $r13.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r12);	$r14 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r15 = interfaceinvoke $r14.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>();	virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getProperty(java.lang.String)>($r15);	$r16 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r17 = interfaceinvoke $r16.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>();	$r25 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>();	$r18 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r24 = interfaceinvoke $r18.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>();	$r19 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r20 = interfaceinvoke $r19.<org.hibernate.annotations.FetchProfile$FetchOverride: org.hibernate.annotations.FetchMode mode()>();	$r22 = virtualinvoke $r20.<org.hibernate.annotations.FetchMode: java.lang.String toString()>();	$r21 = <java.util.Locale: java.util.Locale ROOT>;	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r21);	virtualinvoke r30.<org.hibernate.mapping.FetchProfile: void addFetch(java.lang.String,java.lang.String,java.lang.String)>($r25, $r24, $r23);	return
;block_num 3