(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3816 0)
(declare-sort var9 0)
(declare-sort var3388 0)
(declare-sort var3440 0)
(declare-sort var1269 0)
(declare-sort var1953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var9_getPluralAttributePath/-925499499 (var9) var3388)
(declare-fun transformAttributePath/1325372791 (var3816 var3388) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1269_getBuildingContext/-812955260 (var1269) var3440)
(declare-fun cast-from-var9-to-var1269 (var9) var1269)
(declare-fun toIdentifier/-987167605 (var3816 String var3440) var1953)
(declare-const null-var3816 var3816)
(declare-const null-var9 var9)
(declare-const var1442 var3816) ; Statement: r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var1442 null-var3816)))
(declare-const var527 var9) ; Statement: r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource 
(assert (not (= var527 null-var9)))
(define-const var2163 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2163)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2163!1 String)
(assert (= var2163!1 ""))
(define-const var3999 var3388 (var9_getPluralAttributePath/-925499499 var527)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getPluralAttributePath()>() 
(assert true)
(define-const var1802 String (transformAttributePath/1325372791 var1442 var3999)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3) 
(assert true)
(define-const var2742 String (append/672562846 var2163!1 var1802)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2163!2 String)
(assert (= var2163!2 (str.++ var2163!1 var1802)))
(assert true)
(define-const var2822 String (append/672562846 var2742 "_ORDER")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_ORDER") 
(declare-const var2742!1 String)
(assert (= var2742!1 (str.++ var2742 "_ORDER")))
(assert true)
(define-const var3281 String (toString/-2075883882 var2822)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var342 var3440 (var1269_getBuildingContext/-812955260 (cast-from-var9-to-var1269 var527))) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var3996 var1953 (toIdentifier/-987167605 var1442 var3281 var342)) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r8, $r7) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var9_getPluralAttributePath/-925499499=([org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1269_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var9-to-var1269=([org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var3816=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var1442=r0, var9=org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource, var527=r2, var2163=$r1, var3388=org.hibernate.boot.model.source.spi.AttributePath, var3999=$r3, var1802=$r4, var2742=$r5, var2822=$r6, var3281=$r8, var3440=org.hibernate.boot.spi.MetadataBuildingContext, var1269=org.hibernate.boot.model.naming.ImplicitNameSource, var342=$r7, var1953=org.hibernate.boot.model.naming.Identifier, var3996=$r9}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3816, r0=var1442, org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource=var9, r2=var527, $r1=var2163, org.hibernate.boot.model.source.spi.AttributePath=var3388, $r3=var3999, $r4=var1802, $r5=var2742, $r6=var2822, $r8=var3281, org.hibernate.boot.spi.MetadataBuildingContext=var3440, org.hibernate.boot.model.naming.ImplicitNameSource=var1269, $r7=var342, org.hibernate.boot.model.naming.Identifier=var1953, $r9=var3996}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r2 := @parameter0: org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource: org.hibernate.boot.model.source.spi.AttributePath getPluralAttributePath()>();	$r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_ORDER");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = interfaceinvoke r2.<org.hibernate.boot.model.naming.ImplicitIndexColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r9 = virtualinvoke r0.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r8, $r7);	return $r9
;block_num 1