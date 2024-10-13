(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var92 0)
(declare-sort var3202 0)
(declare-sort var55 0)
(declare-sort var3626 0)
(declare-sort var22 0)
(declare-sort var3636 0)
(declare-sort var2329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3202_getNature/-1336170493 (var3202) var55)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3202_getReferencedTableName/272815263 (var3202) var3626)
(declare-fun getText/-467579009 (var3626) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3202_getReferencedColumnName/-1847310143 (var3202) var3626)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3636_getBuildingContext/-812955260 (var3636) var22)
(declare-fun cast-from-var3202-to-var3636 (var3202) var3636)
(declare-fun toIdentifier/-987167605 (var2329 String var22) var3626)
(declare-fun cast-from-var92-to-var2329 (var92) var2329)
(declare-const null-var92 var92)
(declare-const null-var3202 var3202)
(declare-const var55-ELEMENT_COLLECTION var55)
(declare-const var3479 var92) ; Statement: r11 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl 
(assert (not (= var3479 null-var92)))
(declare-const var2916 var3202) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource 
(assert (not (= var2916 null-var3202)))
(define-const var2746 var55 (var3202_getNature/-1336170493 var2916)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature getNature()>() 
(define-const var3064 var55 var55-ELEMENT_COLLECTION) ; Statement: $r1 = <org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature ELEMENT_COLLECTION> 
 ; Statement: if $r2 == $r1 goto $r3 = new java.lang.StringBuilder 
(assert (= var2746 var3064)) ; Cond: $r2 == $r1 
(define-const var1308 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1308)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1308!1 String)
(assert (= var1308!1 ""))
(define-const var335 var3626 (var3202_getReferencedTableName/272815263 var2916)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedTableName()>() 
(assert true)
(define-const var188 String (getText/-467579009 var335)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var3428 String (append/672562846 var1308!1 var188)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1308!2 String)
(assert (= var1308!2 (str.++ var1308!1 var188)))
(assert true)
(define-const var3802 String (append/-1166366385 var3428 95)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3428!1 String)
(assert (str.prefixof var3428 var3428!1))
(define-const var3329 var3626 (var3202_getReferencedColumnName/-1847310143 var2916)) ; Statement: $r7 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedColumnName()>() 
(assert true)
(define-const var2876 String (getText/-467579009 var3329)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var1601 String (append/672562846 var3802 var2876)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3802!1 String)
(assert (= var3802!1 (str.++ var3802 var2876)))
(assert true)
(define-const var3569 String (toString/-2075883882 var1601)) ; Statement: r23 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>()] 
(assert true) ; Non Conditional
(define-const var71 var22 (var3636_getBuildingContext/-812955260 (cast-from-var3202-to-var3636 var2916))) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var340 var3626 (toIdentifier/-987167605 (cast-from-var92-to-var2329 var3479) var3569 var71)) ; Statement: $r13 = virtualinvoke r11.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r23, $r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3202_getNature/-1336170493=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3202_getReferencedTableName/272815263=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3202_getReferencedColumnName/-1847310143=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.Identifier), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3636_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var3202-to-var3636=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier), cast-from-var92-to-var2329=([org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl)}
; {var92=org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl, var3479=r11, var3202=org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource, var2916=r0, var55=org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature, var2746=$r2, var3064=$r1, var1308=$r3, var3626=org.hibernate.boot.model.naming.Identifier, var335=$r4, var188=$r5, var3428=$r6, var3802=$r9, var3329=$r7, var2876=$r8, var1601=$r10, var3569=r23, var22=org.hibernate.boot.spi.MetadataBuildingContext, var3636=org.hibernate.boot.model.naming.ImplicitNameSource, var71=$r12, var2329=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var340=$r13}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl=var92, r11=var3479, org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource=var3202, r0=var2916, org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature=var55, $r2=var2746, $r1=var3064, $r3=var1308, org.hibernate.boot.model.naming.Identifier=var3626, $r4=var335, $r5=var188, $r6=var3428, $r9=var3802, $r7=var3329, $r8=var2876, $r10=var1601, r23=var3569, org.hibernate.boot.spi.MetadataBuildingContext=var22, org.hibernate.boot.model.naming.ImplicitNameSource=var3636, $r12=var71, org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var2329, $r13=var340}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource;	$r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature getNature()>();	$r1 = <org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature ELEMENT_COLLECTION>;	if $r2 == $r1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedTableName()>();	$r5 = virtualinvoke $r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r7 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedColumnName()>();	$r8 = virtualinvoke $r7.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r23 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>()];	$r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r13 = virtualinvoke r11.<org.hibernate.boot.model.naming.ImplicitNamingStrategyLegacyJpaImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r23, $r12);	return $r13
;block_num 3