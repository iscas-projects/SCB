(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var934 0)
(declare-sort var2519 0)
(declare-sort var1452 0)
(declare-sort var840 0)
(declare-sort var2737 0)
(declare-sort var2151 0)
(declare-sort var2112 0)
(declare-sort var3248 0)
(declare-sort var2540 0)
(declare-sort var2417 0)
(declare-sort var2454 0)
(declare-sort var2165 0)
(declare-sort var970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildingContext/-2108655688 (var934) var1452)
(declare-fun var1452_getMetadataCollector/-129185252 (var1452) var840)
(declare-fun fetchProfileName/-2108655688 (var934) String)
(declare-fun var2151_getFetchProfile/-860010951 (var2151 String) var2737)
(declare-fun cast-from-var840-to-var2151 (var840) var2151)
(declare-fun getSource/-1918756347 (var2737) var2112)
(declare-fun fetch/-2108655688 (var934) var3248)
(declare-fun var3248_entity/-1310534373 (var3248) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2151_getEntityBinding/-1652541374 (var2151 String) var2540)
(declare-fun var3248_association/1766046100 (var3248) String)
(declare-fun getProperty/-1090031273 (var2540 String) var970)
(declare-fun var3248_mode/-368596252 (var3248) var2417)
(declare-fun toString/1761020461 (var2454) String)
(declare-fun cast-from-var2417-to-var2454 (var2417) var2454)
(declare-fun toLowerCase/1946809429 (String var2165) String)
(declare-fun addFetch/-1062074252 (var2737 String String String) void)
(declare-const null-var934 var934)
(declare-const null-var2519 var2519)
(declare-const null-var2737 var2737)
(declare-const var2112-ANNOTATIONS var2112)
(declare-const var2165-ROOT var2165)
(declare-const var1925 var934) ; Statement: r0 := @this: org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass 
(assert (not (= var1925 null-var934)))
(declare-const var132 var2519) ; Statement: r29 := @parameter0: java.util.Map 
(assert (not (= var132 null-var2519)))
(define-const var1401 var1452 (buildingContext/-2108655688 var1925)) ; Statement: $r1 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3905 var840 (var1452_getMetadataCollector/-129185252 var1401)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var1832 String (fetchProfileName/-2108655688 var1925)) ; Statement: $r2 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName> 
(define-const var516 var2737 (var2151_getFetchProfile/-860010951 (cast-from-var840-to-var2151 var3905) var1832)) ; Statement: r30 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.FetchProfile getFetchProfile(java.lang.String)>($r2) 
 ; Statement: if r30 == null goto $r4 = new org.hibernate.mapping.FetchProfile 
(assert (not (= var516 null-var2737))) ; Negate: Cond: r30 == null  
(assert true)
(define-const var3781 var2112 (getSource/-1918756347 var516)) ; Statement: $r27 = virtualinvoke r30.<org.hibernate.mapping.FetchProfile: org.hibernate.mapping.MetadataSource getSource()>() 
(define-const var2719 var2112 var2112-ANNOTATIONS) ; Statement: $r26 = <org.hibernate.mapping.MetadataSource: org.hibernate.mapping.MetadataSource ANNOTATIONS> 
 ; Statement: if $r27 == $r26 goto $r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(assert (= var3781 var2719)) ; Cond: $r27 == $r26 
(define-const var3832 var1452 (buildingContext/-2108655688 var1925)) ; Statement: $r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3394 var840 (var1452_getMetadataCollector/-129185252 var3832)) ; Statement: $r13 = interfaceinvoke $r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var59 var3248 (fetch/-2108655688 var1925)) ; Statement: $r10 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var324 ClassObject (var3248_entity/-1310534373 var59)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>() 
(assert true)
(define-const var2896 String (getName/-1958580599 var324)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(define-const var2819 var2540 (var2151_getEntityBinding/-1652541374 (cast-from-var840-to-var2151 var3394) var2896)) ; Statement: $r28 = interfaceinvoke $r13.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r12) 
(define-const var2809 var3248 (fetch/-2108655688 var1925)) ; Statement: $r14 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var973 String (var3248_association/1766046100 var2809)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>() 
(assert true)
;(assert (getProperty/-1090031273 var2819 var973)) ; Statement: virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getProperty(java.lang.String)>($r15) 

(declare-const var2819!1 var2540)
(declare-const var973!1 String)
(define-const var103 var3248 (fetch/-2108655688 var1925)) ; Statement: $r16 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var1120 ClassObject (var3248_entity/-1310534373 var103)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>() 
(assert true)
(define-const var3154 String (getName/-1958580599 var1120)) ; Statement: $r25 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>() 
(define-const var195 var3248 (fetch/-2108655688 var1925)) ; Statement: $r18 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var1913 String (var3248_association/1766046100 var195)) ; Statement: $r24 = interfaceinvoke $r18.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>() 
(define-const var1474 var3248 (fetch/-2108655688 var1925)) ; Statement: $r19 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch> 
(define-const var426 var2417 (var3248_mode/-368596252 var1474)) ; Statement: $r20 = interfaceinvoke $r19.<org.hibernate.annotations.FetchProfile$FetchOverride: org.hibernate.annotations.FetchMode mode()>() 
(assert true)
(define-const var2287 String (toString/1761020461 (cast-from-var2417-to-var2454 var426))) ; Statement: $r22 = virtualinvoke $r20.<org.hibernate.annotations.FetchMode: java.lang.String toString()>() 
(define-const var2778 var2165 var2165-ROOT) ; Statement: $r21 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3346 String (toLowerCase/1946809429 var2287 var2778)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r21) 
(assert true)
;(assert (addFetch/-1062074252 var516 var3154 var1913 var3346)) ; Statement: virtualinvoke r30.<org.hibernate.mapping.FetchProfile: void addFetch(java.lang.String,java.lang.String,java.lang.String)>($r25, $r24, $r23) 

(declare-const var516!1 var2737)
(declare-const var3154!1 String)
(declare-const var1913!1 String)
(declare-const var3346!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buildingContext/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), var1452_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), fetchProfileName/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], java.lang.String), var2151_getFetchProfile/-860010951=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.FetchProfile), cast-from-var840-to-var2151=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), getSource/-1918756347=([org.hibernate.mapping.FetchProfile], org.hibernate.mapping.MetadataSource), fetch/-2108655688=([org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass], org.hibernate.annotations.FetchProfile$FetchOverride), var3248_entity/-1310534373=([org.hibernate.annotations.FetchProfile$FetchOverride], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var2151_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), var3248_association/1766046100=([org.hibernate.annotations.FetchProfile$FetchOverride], java.lang.String), getProperty/-1090031273=([org.hibernate.mapping.PersistentClass, java.lang.String], org.hibernate.mapping.Property), var3248_mode/-368596252=([org.hibernate.annotations.FetchProfile$FetchOverride], org.hibernate.annotations.FetchMode), toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var2417-to-var2454=([org.hibernate.annotations.FetchMode], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), addFetch/-1062074252=([org.hibernate.mapping.FetchProfile, java.lang.String, java.lang.String, java.lang.String], void)}
; {var934=org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass, var1925=r0, var2519=java.util.Map, var132=r29, var1452=org.hibernate.boot.spi.MetadataBuildingContext, var1401=$r1, var840=org.hibernate.boot.spi.InFlightMetadataCollector, var3905=$r3, var1832=$r2, var2737=org.hibernate.mapping.FetchProfile, var2151=org.hibernate.boot.Metadata, var516=r30, var2112=org.hibernate.mapping.MetadataSource, var3781=$r27, var2719=$r26, var3832=$r9, var3394=$r13, var3248=org.hibernate.annotations.FetchProfile$FetchOverride, var59=$r10, var324=$r11, var2896=$r12, var2540=org.hibernate.mapping.PersistentClass, var2819=$r28, var2809=$r14, var973=$r15, var103=$r16, var1120=$r17, var3154=$r25, var195=$r18, var1913=$r24, var1474=$r19, var2417=org.hibernate.annotations.FetchMode, var426=$r20, var2454=java.lang.Enum, var2287=$r22, var2165=java.util.Locale, var2778=$r21, var3346=$r23, var970=org.hibernate.mapping.Property}
; {org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass=var934, r0=var1925, java.util.Map=var2519, r29=var132, org.hibernate.boot.spi.MetadataBuildingContext=var1452, $r1=var1401, org.hibernate.boot.spi.InFlightMetadataCollector=var840, $r3=var3905, $r2=var1832, org.hibernate.mapping.FetchProfile=var2737, org.hibernate.boot.Metadata=var2151, r30=var516, org.hibernate.mapping.MetadataSource=var2112, $r27=var3781, $r26=var2719, $r9=var3832, $r13=var3394, org.hibernate.annotations.FetchProfile$FetchOverride=var3248, $r10=var59, $r11=var324, $r12=var2896, org.hibernate.mapping.PersistentClass=var2540, $r28=var2819, $r14=var2809, $r15=var973, $r16=var103, $r17=var1120, $r25=var3154, $r18=var195, $r24=var1913, $r19=var1474, org.hibernate.annotations.FetchMode=var2417, $r20=var426, java.lang.Enum=var2454, $r22=var2287, java.util.Locale=var2165, $r21=var2778, $r23=var3346, org.hibernate.mapping.Property=var970}
;seq <java.lang.Enum: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass;	r29 := @parameter0: java.util.Map;	$r1 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r3 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r2 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: java.lang.String fetchProfileName>;	r30 = interfaceinvoke $r3.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.FetchProfile getFetchProfile(java.lang.String)>($r2);	if r30 == null goto $r4 = new org.hibernate.mapping.FetchProfile;	$r27 = virtualinvoke r30.<org.hibernate.mapping.FetchProfile: org.hibernate.mapping.MetadataSource getSource()>();	$r26 = <org.hibernate.mapping.MetadataSource: org.hibernate.mapping.MetadataSource ANNOTATIONS>;	if $r27 == $r26 goto $r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r9 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r13 = interfaceinvoke $r9.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r10 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r11 = interfaceinvoke $r10.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r28 = interfaceinvoke $r13.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r12);	$r14 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r15 = interfaceinvoke $r14.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>();	virtualinvoke $r28.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getProperty(java.lang.String)>($r15);	$r16 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r17 = interfaceinvoke $r16.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.Class entity()>();	$r25 = virtualinvoke $r17.<java.lang.Class: java.lang.String getName()>();	$r18 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r24 = interfaceinvoke $r18.<org.hibernate.annotations.FetchProfile$FetchOverride: java.lang.String association()>();	$r19 = r0.<org.hibernate.cfg.VerifyFetchProfileReferenceSecondPass: org.hibernate.annotations.FetchProfile$FetchOverride fetch>;	$r20 = interfaceinvoke $r19.<org.hibernate.annotations.FetchProfile$FetchOverride: org.hibernate.annotations.FetchMode mode()>();	$r22 = virtualinvoke $r20.<org.hibernate.annotations.FetchMode: java.lang.String toString()>();	$r21 = <java.util.Locale: java.util.Locale ROOT>;	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r21);	virtualinvoke r30.<org.hibernate.mapping.FetchProfile: void addFetch(java.lang.String,java.lang.String,java.lang.String)>($r25, $r24, $r23);	return
;block_num 3