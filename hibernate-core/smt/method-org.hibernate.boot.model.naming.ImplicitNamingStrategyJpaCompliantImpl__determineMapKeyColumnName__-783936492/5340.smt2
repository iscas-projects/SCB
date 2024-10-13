(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var700 0)
(declare-sort var871 0)
(declare-sort var2878 0)
(declare-sort var3580 0)
(declare-sort var2504 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var871_getPluralAttributePath/-423624244 (var871) var2878)
(declare-fun transformAttributePath/1325372791 (var700 var2878) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2504_getBuildingContext/-812955260 (var2504) var3580)
(declare-fun cast-from-var871-to-var2504 (var871) var2504)
(declare-fun toIdentifier/-987167605 (var700 String var3580) var1916)
(declare-const null-var700 var700)
(declare-const null-var871 var871)
(declare-const var86 var700) ; Statement: r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var86 null-var700)))
(declare-const var391 var871) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource 
(assert (not (= var391 null-var871)))
(define-const var1819 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1819)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1819!1 String)
(assert (= var1819!1 ""))
(define-const var3911 var2878 (var871_getPluralAttributePath/-423624244 var391)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getPluralAttributePath()>() 
(assert true)
(define-const var763 String (transformAttributePath/1325372791 var86 var3911)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3) 
(assert true)
(define-const var2185 String (append/672562846 var1819!1 var763)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1819!2 String)
(assert (= var1819!2 (str.++ var1819!1 var763)))
(assert true)
(define-const var131 String (append/672562846 var2185 "_KEY")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_KEY") 
(declare-const var2185!1 String)
(assert (= var2185!1 (str.++ var2185 "_KEY")))
(assert true)
(define-const var3733 String (toString/-2075883882 var131)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1196 var3580 (var2504_getBuildingContext/-812955260 (cast-from-var871-to-var2504 var391))) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var562 var1916 (toIdentifier/-987167605 var86 var3733 var1196)) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r8, $r7) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var871_getPluralAttributePath/-423624244=([org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2504_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var871-to-var2504=([org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var700=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var86=r0, var871=org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource, var391=r2, var1819=$r1, var2878=org.hibernate.boot.model.source.spi.AttributePath, var3911=$r3, var763=$r4, var2185=$r5, var131=$r6, var3733=$r8, var3580=org.hibernate.boot.spi.MetadataBuildingContext, var2504=org.hibernate.boot.model.naming.ImplicitNameSource, var1196=$r7, var1916=org.hibernate.boot.model.naming.Identifier, var562=$r9}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var700, r0=var86, org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource=var871, r2=var391, $r1=var1819, org.hibernate.boot.model.source.spi.AttributePath=var2878, $r3=var3911, $r4=var763, $r5=var2185, $r6=var131, $r8=var3733, org.hibernate.boot.spi.MetadataBuildingContext=var3580, org.hibernate.boot.model.naming.ImplicitNameSource=var2504, $r7=var1196, org.hibernate.boot.model.naming.Identifier=var1916, $r9=var562}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getPluralAttributePath()>();	$r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_KEY");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitMapKeyColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r9 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r8, $r7);	return $r9
;block_num 1