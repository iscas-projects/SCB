(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1931 0)
(declare-sort var3867 0)
(declare-sort var163 0)
(declare-sort var2252 0)
(declare-sort var3108 0)
(declare-sort var3261 0)
(declare-sort var351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3867_getOwningPhysicalTableName/-680420975 (var3867) var163)
(declare-fun getText/-467579009 (var163) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3867_getOwningAttributePath/-877936987 (var3867) var2252)
(declare-fun transformAttributePath/1325372791 (var3108 var2252) String)
(declare-fun cast-from-var1931-to-var3108 (var1931) var3108)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var351_getBuildingContext/-812955260 (var351) var3261)
(declare-fun cast-from-var3867-to-var351 (var3867) var351)
(declare-fun toIdentifier/-987167605 (var3108 String var3261) var163)
(declare-fun isQuoted/-1596817155 (var163) Bool)
(declare-const null-var1931 var1931)
(declare-const null-var3867 var3867)
(declare-const var283 var1931) ; Statement: r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl 
(assert (not (= var283 null-var1931)))
(declare-const var1388 var3867) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource 
(assert (not (= var1388 null-var3867)))
(define-const var2885 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2885)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2885!1 String)
(assert (= var2885!1 ""))
(define-const var404 var163 (var3867_getOwningPhysicalTableName/-680420975 var1388)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.naming.Identifier getOwningPhysicalTableName()>() 
(assert true)
(define-const var2134 String (getText/-467579009 var404)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var3351 String (append/672562846 var2885!1 var2134)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2885!2 String)
(assert (= var2885!2 (str.++ var2885!1 var2134)))
(assert true)
(define-const var1672 String (append/672562846 var3351 "_")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3351!1 String)
(assert (= var3351!1 (str.++ var3351 "_")))
(define-const var2890 var2252 (var3867_getOwningAttributePath/-877936987 var1388)) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getOwningAttributePath()>() 
(assert true)
(define-const var3547 String (transformAttributePath/1325372791 (cast-from-var1931-to-var3108 var283) var2890)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r6) 
(assert true)
(define-const var2355 String (append/672562846 var1672 var3547)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1672!1 String)
(assert (= var1672!1 (str.++ var1672 var3547)))
(assert true)
(define-const var3197 String (toString/-2075883882 var2355)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var375 var3261 (var351_getBuildingContext/-812955260 (cast-from-var3867-to-var351 var1388))) ; Statement: $r10 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var2492 var163 (toIdentifier/-987167605 (cast-from-var1931-to-var3108 var283) var3197 var375)) ; Statement: r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10) 
(define-const var376 var163 (var3867_getOwningPhysicalTableName/-680420975 var1388)) ; Statement: $r12 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.naming.Identifier getOwningPhysicalTableName()>() 
(assert true)
(define-const var3461 Bool (isQuoted/-1596817155 var376)) ; Statement: $z0 = virtualinvoke $r12.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted()>() 
 ; Statement: if $z0 == 0 goto return r13 
(assert (= (ite var3461 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3867_getOwningPhysicalTableName/-680420975=([org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3867_getOwningAttributePath/-877936987=([org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), cast-from-var1931-to-var3108=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var351_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var3867-to-var351=([org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier), isQuoted/-1596817155=([org.hibernate.boot.model.naming.Identifier], boolean)}
; {var1931=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl, var283=r0, var3867=org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource, var1388=r2, var2885=$r1, var163=org.hibernate.boot.model.naming.Identifier, var404=$r3, var2134=$r4, var3351=$r5, var1672=$r8, var2252=org.hibernate.boot.model.source.spi.AttributePath, var2890=$r6, var3108=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var3547=$r7, var2355=$r9, var3197=$r11, var3261=org.hibernate.boot.spi.MetadataBuildingContext, var351=org.hibernate.boot.model.naming.ImplicitNameSource, var375=$r10, var2492=r13, var376=$r12, var3461=$z0}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl=var1931, r0=var283, org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource=var3867, r2=var1388, $r1=var2885, org.hibernate.boot.model.naming.Identifier=var163, $r3=var404, $r4=var2134, $r5=var3351, $r8=var1672, org.hibernate.boot.model.source.spi.AttributePath=var2252, $r6=var2890, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3108, $r7=var3547, $r9=var2355, $r11=var3197, org.hibernate.boot.spi.MetadataBuildingContext=var3261, org.hibernate.boot.model.naming.ImplicitNameSource=var351, $r10=var375, r13=var2492, $r12=var376, $z0=var3461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl;	r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.naming.Identifier getOwningPhysicalTableName()>();	$r4 = virtualinvoke $r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r6 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getOwningAttributePath()>();	$r7 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	r13 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10);	$r12 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitCollectionTableNameSource: org.hibernate.boot.model.naming.Identifier getOwningPhysicalTableName()>();	$z0 = virtualinvoke $r12.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted()>();	if $z0 == 0 goto return r13;	return r13
;block_num 2