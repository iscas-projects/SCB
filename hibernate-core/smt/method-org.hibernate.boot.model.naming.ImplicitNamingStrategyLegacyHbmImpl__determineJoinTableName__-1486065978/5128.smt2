(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1085 0)
(declare-sort var1318 0)
(declare-sort var3541 0)
(declare-sort var3298 0)
(declare-sort var740 0)
(declare-sort var1054 0)
(declare-sort var3591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1318_getAssociationOwningAttributePath/450502464 (var1318) var3541)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1318_getOwningPhysicalTableName/1450056022 (var1318) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun transformAttributePath/1325372791 (var3298 var3541) String)
(declare-fun cast-from-var1085-to-var3298 (var1085) var3298)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1054_getBuildingContext/-812955260 (var1054) var740)
(declare-fun cast-from-var1318-to-var1054 (var1318) var1054)
(declare-fun toIdentifier/-987167605 (var3298 String var740) var3591)
(declare-const null-var1085 var1085)
(declare-const null-var1318 var1318)
(declare-const null-var3541 var3541)
(declare-const var1784 var1085) ; Statement: r2 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl 
(assert (not (= var1784 null-var1085)))
(declare-const var1135 var1318) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource 
(assert (not (= var1135 null-var1318)))
(define-const var987 var3541 (var1318_getAssociationOwningAttributePath/450502464 var1135)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
 ; Statement: if $r1 == null goto $r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0) 
(assert (not (= var987 null-var3541))) ; Negate: Cond: $r1 == null  
(define-const var1229 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1229)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1229!1 String)
(assert (= var1229!1 ""))
(define-const var2145 String (var1318_getOwningPhysicalTableName/1450056022 var1135)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>() 
(assert true)
(define-const var173 String (append/672562846 var1229!1 var2145)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1229!2 String)
(assert (= var1229!2 (str.++ var1229!1 var2145)))
(assert true)
(define-const var890 String (append/-1166366385 var173 95)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var173!1 String)
(assert (str.prefixof var173 var173!1))
(define-const var3921 var3541 (var1318_getAssociationOwningAttributePath/450502464 var1135)) ; Statement: $r7 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>() 
(assert true)
(define-const var2437 String (transformAttributePath/1325372791 (cast-from-var1085-to-var3298 var1784) var3921)) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r7) 
(assert true)
(define-const var2658 String (append/672562846 var890 var2437)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var2437)))
(assert true)
(define-const var1727 String (toString/-2075883882 var2658)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1161 var740 (var1054_getBuildingContext/-812955260 (cast-from-var1318-to-var1054 var1135))) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var2908 var3591 (toIdentifier/-987167605 (cast-from-var1085-to-var3298 var1784) var1727 var1161)) ; Statement: $r13 = virtualinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r11, $r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1318_getAssociationOwningAttributePath/450502464=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.source.spi.AttributePath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1318_getOwningPhysicalTableName/1450056022=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), transformAttributePath/1325372791=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.source.spi.AttributePath], java.lang.String), cast-from-var1085-to-var3298=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1054_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var1318-to-var1054=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var1085=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl, var1784=r2, var1318=org.hibernate.boot.model.naming.ImplicitJoinTableNameSource, var1135=r0, var3541=org.hibernate.boot.model.source.spi.AttributePath, var987=$r1, var1229=$r4, var2145=$r5, var173=$r6, var890=$r9, var3921=$r7, var3298=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var2437=$r8, var2658=$r10, var1727=r11, var740=org.hibernate.boot.spi.MetadataBuildingContext, var1054=org.hibernate.boot.model.naming.ImplicitNameSource, var1161=$r12, var3591=org.hibernate.boot.model.naming.Identifier, var2908=$r13}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl=var1085, r2=var1784, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource=var1318, r0=var1135, org.hibernate.boot.model.source.spi.AttributePath=var3541, $r1=var987, $r4=var1229, $r5=var2145, $r6=var173, $r9=var890, $r7=var3921, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3298, $r8=var2437, $r10=var2658, r11=var1727, org.hibernate.boot.spi.MetadataBuildingContext=var740, org.hibernate.boot.model.naming.ImplicitNameSource=var1054, $r12=var1161, org.hibernate.boot.model.naming.Identifier=var3591, $r13=var2908}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource;	$r1 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	if $r1 == null goto $r3 = specialinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier determineJoinTableName(org.hibernate.boot.model.naming.ImplicitJoinTableNameSource)>(r0);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r7 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.model.source.spi.AttributePath getAssociationOwningAttributePath()>();	$r8 = virtualinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl: java.lang.String transformAttributePath(org.hibernate.boot.model.source.spi.AttributePath)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r13 = virtualinvoke r2.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyHbmImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r11, $r12);	return $r13
;block_num 2