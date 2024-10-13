(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort var3025 0)
(declare-sort var2355 0)
(declare-sort var2783 0)
(declare-sort var2212 0)
(declare-sort var645 0)
(declare-sort var2906 0)
(declare-sort var2816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3025_getOwningPhysicalTableName/1450056022 (var3025) String)
(declare-fun var3025_getNonOwningPhysicalTableName/-114941979 (var3025) String)
(declare-fun var3025_getAssociationOwningAttributePath/450502464 (var3025) var2783)
(declare-fun transformAttributePath/1325372791 (var2212 var2783) String)
(declare-fun cast-from-var3216-to-var2212 (var3216) var2212)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2906_getBuildingContext/-812955260 (var2906) var645)
(declare-fun cast-from-var3025-to-var2906 (var3025) var2906)
(declare-fun toIdentifier/-987167605 (var2212 String var645) var2816)
(declare-const null-var3216 var3216)
(declare-const null-var3025 var3025)
(declare-const null-String String)
(declare-const var376 var3216) ; Statement: r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl 
(assert (not (= var376 null-var3216)))
(declare-const var1788 var3025) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource 
(assert (not (= var1788 null-var3025)))
(define-const var780 String (var3025_getOwningPhysicalTableName/1450056022 var1788)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>() 
(define-const var2978 String (var3025_getNonOwningPhysicalTableName/-114941979 var1788)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>() 
 ; Statement: if $r2 == null goto $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
(assert (= var2978 null-String)) ; Cond: $r2 == null 
(define-const var1281 var2783 (var3025_getAssociationOwningAttributePath/450502464 var1788)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
(assert true)
(define-const var736 String (transformAttributePath/1325372791 (cast-from-var3216-to-var2212 var376) var1281)) ; Statement: r12 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r4) 
(assert true) ; Non Conditional
(define-const var3132 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3132)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3132!1 String)
(assert (= var3132!1 ""))
(assert true)
(define-const var586 String (append/672562846 var3132!1 var780)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3132!2 String)
(assert (= var3132!2 (str.++ var3132!1 var780)))
(assert true)
(define-const var2428 String (append/672562846 var586 "_")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var586!1 String)
(assert (= var586!1 (str.++ var586 "_")))
(assert true)
(define-const var2369 String (append/672562846 var2428 var736)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var2428!1 String)
(assert (= var2428!1 (str.++ var2428 var736)))
(assert true)
(define-const var2236 String (toString/-2075883882 var2369)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var452 var645 (var2906_getBuildingContext/-812955260 (cast-from-var3025-to-var2906 var1788))) ; Statement: $r9 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var23 var2816 (toIdentifier/-987167605 (cast-from-var3216-to-var2212 var376) var2236 var452)) ; Statement: $r11 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r10, $r9) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3025_getOwningPhysicalTableName/1450056022=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), var3025_getNonOwningPhysicalTableName/-114941979=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), var3025_getAssociationOwningAttributePath/450502464=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.source.spi.AttributePath), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), cast-from-var3216-to-var2212=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2906_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var3025-to-var2906=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var3216=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl, var376=r3, var3025=org.hibernate.boot.model.naming.ImplicitJoinTableNameSource, var1788=r0, var780=r1, var2978=$r2, var2355=null_type, var2783=org.hibernate.boot.model.source.spi.AttributePath, var1281=$r4, var2212=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var736=r12, var3132=$r5, var586=$r6, var2428=$r7, var2369=$r8, var2236=$r10, var645=org.hibernate.boot.spi.MetadataBuildingContext, var2906=org.hibernate.boot.model.naming.ImplicitNameSource, var452=$r9, var2816=org.hibernate.boot.model.naming.Identifier, var23=$r11}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl=var3216, r3=var376, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource=var3025, r0=var1788, r1=var780, $r2=var2978, null_type=var2355, org.hibernate.boot.model.source.spi.AttributePath=var2783, $r4=var1281, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var2212, r12=var736, $r5=var3132, $r6=var586, $r7=var2428, $r8=var2369, $r10=var2236, org.hibernate.boot.spi.MetadataBuildingContext=var645, org.hibernate.boot.model.naming.ImplicitNameSource=var2906, $r9=var452, org.hibernate.boot.model.naming.Identifier=var2816, $r11=var23}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>();	$r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>();	if $r2 == null goto $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	$r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	r12 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r11 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r10, $r9);	return $r11
;block_num 3