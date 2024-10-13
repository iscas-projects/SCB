(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var686 0)
(declare-sort var1688 0)
(declare-sort var2063 0)
(declare-sort var1884 0)
(declare-sort var2413 0)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var686_getAttributePath/1355012024 (var686) var1688)
(declare-fun transformAttributePath/1325372791 (var2909 var1688) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1884_getBuildingContext/-812955260 (var1884) var2063)
(declare-fun cast-from-var686-to-var1884 (var686) var1884)
(declare-fun var2063_getMappingDefaults/-1211680303 (var2063) var2413)
(declare-fun var2413_getImplicitIdColumnName/-1868616649 (var2413) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toIdentifier/-987167605 (var2909 String var2063) var2038)
(declare-const null-var2909 var2909)
(declare-const null-var686 var686)
(declare-const var2701 var2909) ; Statement: r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var2701 null-var2909)))
(declare-const var2437 var686) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource 
(assert (not (= var2437 null-var686)))
(define-const var2886 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2886)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2886!1 String)
(assert (= var2886!1 ""))
(define-const var1075 var1688 (var686_getAttributePath/1355012024 var2437)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getAttributePath()>() 
(assert true)
(define-const var79 String (transformAttributePath/1325372791 var2701 var1075)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3) 
(assert true)
(define-const var1300 String (append/672562846 var2886!1 var79)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2886!2 String)
(assert (= var2886!2 (str.++ var2886!1 var79)))
(assert true)
(define-const var420 String (append/672562846 var1300 "_")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1300!1 String)
(assert (= var1300!1 (str.++ var1300 "_")))
(define-const var1697 var2063 (var1884_getBuildingContext/-812955260 (cast-from-var686-to-var1884 var2437))) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(define-const var3874 var2413 (var2063_getMappingDefaults/-1211680303 var1697)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.MappingDefaults getMappingDefaults()>() 
(define-const var2891 String (var2413_getImplicitIdColumnName/-1868616649 var3874)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MappingDefaults: java.lang.String getImplicitIdColumnName()>() 
(assert true)
(define-const var2502 String (append/672562846 var420 var2891)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var420!1 String)
(assert (= var420!1 (str.++ var420 var2891)))
(assert true)
(define-const var2377 String (toString/-2075883882 var2502)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var122 var2063 (var1884_getBuildingContext/-812955260 (cast-from-var686-to-var1884 var2437))) ; Statement: $r11 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var290 var2038 (toIdentifier/-987167605 var2701 var2377 var122)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r12, $r11) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var686_getAttributePath/1355012024=([org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1884_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var686-to-var1884=([org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), var2063_getMappingDefaults/-1211680303=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.MappingDefaults), var2413_getImplicitIdColumnName/-1868616649=([org.hibernate.boot.spi.MappingDefaults], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var2909=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var2701=r0, var686=org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource, var2437=r2, var2886=$r1, var1688=org.hibernate.boot.model.source.spi.AttributePath, var1075=$r3, var79=$r4, var1300=$r5, var420=$r9, var2063=org.hibernate.boot.spi.MetadataBuildingContext, var1884=org.hibernate.boot.model.naming.ImplicitNameSource, var1697=$r6, var2413=org.hibernate.boot.spi.MappingDefaults, var3874=$r7, var2891=$r8, var2502=$r10, var2377=$r12, var122=$r11, var2038=org.hibernate.boot.model.naming.Identifier, var290=$r13}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var2909, r0=var2701, org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource=var686, r2=var2437, $r1=var2886, org.hibernate.boot.model.source.spi.AttributePath=var1688, $r3=var1075, $r4=var79, $r5=var1300, $r9=var420, org.hibernate.boot.spi.MetadataBuildingContext=var2063, org.hibernate.boot.model.naming.ImplicitNameSource=var1884, $r6=var1697, org.hibernate.boot.spi.MappingDefaults=var2413, $r7=var3874, $r8=var2891, $r10=var2502, $r12=var2377, $r11=var122, org.hibernate.boot.model.naming.Identifier=var2038, $r13=var290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getAttributePath()>();	$r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.MappingDefaults getMappingDefaults()>();	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MappingDefaults: java.lang.String getImplicitIdColumnName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r12, $r11);	return $r13
;block_num 1