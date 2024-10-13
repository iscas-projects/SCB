(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3673 0)
(declare-sort var892 0)
(declare-sort var3684 0)
(declare-sort var1601 0)
(declare-sort var1522 0)
(declare-sort var1335 0)
(declare-sort var2204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var892_getAttributePath/1525721819 (var892) var3684)
(declare-fun transformAttributePath/1325372791 (var3673 var3684) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1522_getBuildingContext/-812955260 (var1522) var1601)
(declare-fun cast-from-var892-to-var1522 (var892) var1522)
(declare-fun var1601_getMappingDefaults/-1211680303 (var1601) var1335)
(declare-fun var1335_getImplicitDiscriminatorColumnName/1927786730 (var1335) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toIdentifier/-987167605 (var3673 String var1601) var2204)
(declare-const null-var3673 var3673)
(declare-const null-var892 var892)
(declare-const var2766 var3673) ; Statement: r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var2766 null-var3673)))
(declare-const var3653 var892) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource 
(assert (not (= var3653 null-var892)))
(define-const var460 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var460)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var460!1 String)
(assert (= var460!1 ""))
(define-const var1436 var3684 (var892_getAttributePath/1525721819 var3653)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getAttributePath()>() 
(assert true)
(define-const var2545 String (transformAttributePath/1325372791 var2766 var1436)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3) 
(assert true)
(define-const var3998 String (append/672562846 var460!1 var2545)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var460!2 String)
(assert (= var460!2 (str.++ var460!1 var2545)))
(assert true)
(define-const var1914 String (append/672562846 var3998 "_")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3998!1 String)
(assert (= var3998!1 (str.++ var3998 "_")))
(define-const var1474 var1601 (var1522_getBuildingContext/-812955260 (cast-from-var892-to-var1522 var3653))) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(define-const var32 var1335 (var1601_getMappingDefaults/-1211680303 var1474)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.MappingDefaults getMappingDefaults()>() 
(define-const var2811 String (var1335_getImplicitDiscriminatorColumnName/1927786730 var32)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MappingDefaults: java.lang.String getImplicitDiscriminatorColumnName()>() 
(assert true)
(define-const var1277 String (append/672562846 var1914 var2811)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1914!1 String)
(assert (= var1914!1 (str.++ var1914 var2811)))
(assert true)
(define-const var2534 String (toString/-2075883882 var1277)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var176 var1601 (var1522_getBuildingContext/-812955260 (cast-from-var892-to-var1522 var3653))) ; Statement: $r11 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var1614 var2204 (toIdentifier/-987167605 var2766 var2534 var176)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r12, $r11) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var892_getAttributePath/1525721819=([org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1522_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var892-to-var1522=([org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), var1601_getMappingDefaults/-1211680303=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.MappingDefaults), var1335_getImplicitDiscriminatorColumnName/1927786730=([org.hibernate.boot.spi.MappingDefaults], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var3673=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var2766=r0, var892=org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource, var3653=r2, var460=$r1, var3684=org.hibernate.boot.model.source.spi.AttributePath, var1436=$r3, var2545=$r4, var3998=$r5, var1914=$r9, var1601=org.hibernate.boot.spi.MetadataBuildingContext, var1522=org.hibernate.boot.model.naming.ImplicitNameSource, var1474=$r6, var1335=org.hibernate.boot.spi.MappingDefaults, var32=$r7, var2811=$r8, var1277=$r10, var2534=$r12, var176=$r11, var2204=org.hibernate.boot.model.naming.Identifier, var1614=$r13}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3673, r0=var2766, org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource=var892, r2=var3653, $r1=var460, org.hibernate.boot.model.source.spi.AttributePath=var3684, $r3=var1436, $r4=var2545, $r5=var3998, $r9=var1914, org.hibernate.boot.spi.MetadataBuildingContext=var1601, org.hibernate.boot.model.naming.ImplicitNameSource=var1522, $r6=var1474, org.hibernate.boot.spi.MappingDefaults=var1335, $r7=var32, $r8=var2811, $r10=var1277, $r12=var2534, $r11=var176, org.hibernate.boot.model.naming.Identifier=var2204, $r13=var1614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getAttributePath()>();	$r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.MappingDefaults getMappingDefaults()>();	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MappingDefaults: java.lang.String getImplicitDiscriminatorColumnName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitAnyDiscriminatorColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r12, $r11);	return $r13
;block_num 1