(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var2734 0)
(declare-sort var1049 0)
(declare-sort var2526 0)
(declare-sort var2064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2734_getOwningPhysicalTableName/1450056022 (var2734) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2734_getNonOwningPhysicalTableName/-114941979 (var2734) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2526_getBuildingContext/-812955260 (var2526) var1049)
(declare-fun cast-from-var2734-to-var2526 (var2734) var2526)
(declare-fun toIdentifier/-987167605 (var3912 String var1049) var2064)
(declare-const null-var3912 var3912)
(declare-const null-var2734 var2734)
(declare-const var3569 var3912) ; Statement: r8 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var3569 null-var3912)))
(declare-const var3798 var2734) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource 
(assert (not (= var3798 null-var2734)))
(define-const var1034 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1034)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1034!1 String)
(assert (= var1034!1 ""))
(define-const var3627 String (var2734_getOwningPhysicalTableName/1450056022 var3798)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>() 
(assert true)
(define-const var3333 String (append/672562846 var1034!1 var3627)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1034!2 String)
(assert (= var1034!2 (str.++ var1034!1 var3627)))
(assert true)
(define-const var1018 String (append/-1166366385 var3333 95)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3333!1 String)
(assert (str.prefixof var3333 var3333!1))
(define-const var1736 String (var2734_getNonOwningPhysicalTableName/-114941979 var3798)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>() 
(assert true)
(define-const var2635 String (append/672562846 var1018 var1736)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1018!1 String)
(assert (= var1018!1 (str.++ var1018 var1736)))
(assert true)
(define-const var658 String (toString/-2075883882 var2635)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var572 var1049 (var2526_getBuildingContext/-812955260 (cast-from-var2734-to-var2526 var3798))) ; Statement: $r9 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var736 var2064 (toIdentifier/-987167605 var3569 var658 var572)) ; Statement: $r10 = virtualinvoke r8.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r7, $r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2734_getOwningPhysicalTableName/1450056022=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2734_getNonOwningPhysicalTableName/-114941979=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2526_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var2734-to-var2526=([org.hibernate.boot.model.naming.ImplicitJoinTableNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var3912=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var3569=r8, var2734=org.hibernate.boot.model.naming.ImplicitJoinTableNameSource, var3798=r1, var1034=$r0, var3627=$r2, var3333=$r3, var1018=$r5, var1736=$r4, var2635=$r6, var658=r7, var1049=org.hibernate.boot.spi.MetadataBuildingContext, var2526=org.hibernate.boot.model.naming.ImplicitNameSource, var572=$r9, var2064=org.hibernate.boot.model.naming.Identifier, var736=$r10}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3912, r8=var3569, org.hibernate.boot.model.naming.ImplicitJoinTableNameSource=var2734, r1=var3798, $r0=var1034, $r2=var3627, $r3=var3333, $r5=var1018, $r4=var1736, $r6=var2635, r7=var658, org.hibernate.boot.spi.MetadataBuildingContext=var1049, org.hibernate.boot.model.naming.ImplicitNameSource=var2526, $r9=var572, org.hibernate.boot.model.naming.Identifier=var2064, $r10=var736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r1 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinTableNameSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getOwningPhysicalTableName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r4 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: java.lang.String getNonOwningPhysicalTableName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = interfaceinvoke r1.<org.hibernate.boot.model.naming.ImplicitJoinTableNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r10 = virtualinvoke r8.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r7, $r9);	return $r10
;block_num 1