(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3540 0)
(declare-sort var2877 0)
(declare-sort var3067 0)
(declare-sort var2791 0)
(declare-sort var3618 0)
(declare-sort var3207 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2877_getOwningPhysicalTableName/1450056022 (var2877) String)
(declare-fun var2877_getNonOwningPhysicalTableName/-114941979 (var2877) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3618_getBuildingContext/-812955260 (var3618) var2791)
(declare-fun cast-from-var2877-to-var3618 (var2877) var3618)
(declare-fun toIdentifier/-987167605 (var1456 String var2791) var3207)
(declare-fun cast-from-var3540-to-var1456 (var3540) var1456)
(declare-const null-var3540 var3540)
(declare-const null-var2877 var2877)
(declare-const null-String String)
(declare-const var365 var3540) ; Statement: r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl 
(assert (not (= var365 null-var3540)))
(declare-const var3969 var2877) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource 
(assert (not (= var3969 null-var2877)))
(define-const var1489 String (var2877_getOwningPhysicalTableName/1450056022 var3969)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>() 
(define-const var3632 String (var2877_getNonOwningPhysicalTableName/-114941979 var3969)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>() 
 ; Statement: if $r2 == null goto $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
(assert (not (= var3632 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2589 String (var2877_getNonOwningPhysicalTableName/-114941979 var3969)) ; Statement: r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>() 
 ; Statement: goto [?= $r5 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var376 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var376)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var376!1 String)
(assert (= var376!1 ""))
(assert true)
(define-const var3114 String (append/672562846 var376!1 var1489)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var376!2 String)
(assert (= var376!2 (str.++ var376!1 var1489)))
(assert true)
(define-const var3017 String (append/672562846 var3114 "_")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3114!1 String)
(assert (= var3114!1 (str.++ var3114 "_")))
(assert true)
(define-const var150 String (append/672562846 var3017 var2589)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var3017!1 String)
(assert (= var3017!1 (str.++ var3017 var2589)))
(assert true)
(define-const var3779 String (toString/-2075883882 var150)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var662 var2791 (var3618_getBuildingContext/-812955260 (cast-from-var2877-to-var3618 var3969))) ; Statement: $r9 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var2295 var3207 (toIdentifier/-987167605 (cast-from-var3540-to-var1456 var365) var3779 var662)) ; Statement: $r11 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r10, $r9) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2877_getOwningPhysicalTableName/1450056022=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), var2877_getNonOwningPhysicalTableName/-114941979=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3618_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var2877-to-var3618=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier), cast-from-var3540-to-var1456=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl)}
; {var3540=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl, var365=r3, var2877=org.hibernate.boot.model.naming.ImplicitJoinTableNameSource, var3969=r0, var1489=r1, var3632=$r2, var3067=null_type, var2589=r12, var376=$r5, var3114=$r6, var3017=$r7, var150=$r8, var3779=$r10, var2791=org.hibernate.boot.spi.MetadataBuildingContext, var3618=org.hibernate.boot.model.naming.ImplicitNameSource, var662=$r9, var3207=org.hibernate.boot.model.naming.Identifier, var1456=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var2295=$r11}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl=var3540, r3=var365, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource=var2877, r0=var3969, r1=var1489, $r2=var3632, null_type=var3067, r12=var2589, $r5=var376, $r6=var3114, $r7=var3017, $r8=var150, $r10=var3779, org.hibernate.boot.spi.MetadataBuildingContext=var2791, org.hibernate.boot.model.naming.ImplicitNameSource=var3618, $r9=var662, org.hibernate.boot.model.naming.Identifier=var3207, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var1456, $r11=var2295}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>();	$r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>();	if $r2 == null goto $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>();	goto [?= $r5 = new java.lang.StringBuilder];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r11 = virtualinvoke r3.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r10, $r9);	return $r11
;block_num 3