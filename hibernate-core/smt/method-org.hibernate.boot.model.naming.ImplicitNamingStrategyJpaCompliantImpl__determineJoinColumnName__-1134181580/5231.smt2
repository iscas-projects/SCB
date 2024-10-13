(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3164 0)
(declare-sort var1110 0)
(declare-sort var3940 0)
(declare-sort var3065 0)
(declare-sort var1342 0)
(declare-sort var2116 0)
(declare-sort var1945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1110_getNature/-1336170493 (var1110) var3940)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1110_getEntityNaming/1607261454 (var1110) var3065)
(declare-fun transformEntityName/179831079 (var3164 var3065) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1110_getReferencedColumnName/-1847310143 (var1110) var1342)
(declare-fun getText/-467579009 (var1342) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1945_getBuildingContext/-812955260 (var1945) var2116)
(declare-fun cast-from-var1110-to-var1945 (var1110) var1945)
(declare-fun toIdentifier/-987167605 (var3164 String var2116) var1342)
(declare-const null-var3164 var3164)
(declare-const null-var1110 var1110)
(declare-const var3940-ELEMENT_COLLECTION var3940)
(declare-const var1423 var3164) ; Statement: r4 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl 
(assert (not (= var1423 null-var3164)))
(declare-const var108 var1110) ; Statement: r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource 
(assert (not (= var108 null-var1110)))
(define-const var1871 var3940 (var1110_getNature/-1336170493 var108)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature getNature()>() 
(define-const var2973 var3940 var3940-ELEMENT_COLLECTION) ; Statement: $r1 = <org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature ELEMENT_COLLECTION> 
 ; Statement: if $r2 == $r1 goto $r3 = new java.lang.StringBuilder 
(assert (= var1871 var2973)) ; Cond: $r2 == $r1 
(define-const var1530 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1530)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1530!1 String)
(assert (= var1530!1 ""))
(define-const var3776 var3065 (var1110_getEntityNaming/1607261454 var108)) ; Statement: $r5 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.EntityNaming getEntityNaming()>() 
(assert true)
(define-const var1836 String (transformEntityName/179831079 var1423 var3776)) ; Statement: $r6 = virtualinvoke r4.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformEntityName(org.hibernate.boot.model.naming.EntityNaming)>($r5) 
(assert true)
(define-const var817 String (append/672562846 var1530!1 var1836)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1530!2 String)
(assert (= var1530!2 (str.++ var1530!1 var1836)))
(assert true)
(define-const var1355 String (append/-1166366385 var817 95)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var817!1 String)
(assert (str.prefixof var817 var817!1))
(define-const var1950 var1342 (var1110_getReferencedColumnName/-1847310143 var108)) ; Statement: $r8 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedColumnName()>() 
(assert true)
(define-const var3768 String (getText/-467579009 var1950)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var393 String (append/672562846 var1355 var3768)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1355!1 String)
(assert (= var1355!1 (str.++ var1355 var3768)))
(assert true)
(define-const var2095 String (toString/-2075883882 var393)) ; Statement: r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>()] 
(assert true) ; Non Conditional
(define-const var1208 var2116 (var1945_getBuildingContext/-812955260 (cast-from-var1110-to-var1945 var108))) ; Statement: $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>() 
(assert true)
(define-const var612 var1342 (toIdentifier/-987167605 var1423 var2095 var1208)) ; Statement: $r13 = virtualinvoke r4.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r23, $r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1110_getNature/-1336170493=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1110_getEntityNaming/1607261454=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.EntityNaming), transformEntityName/179831079=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, org.hibernate.boot.model.naming.EntityNaming], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1110_getReferencedColumnName/-1847310143=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1945_getBuildingContext/-812955260=([org.hibernate.boot.model.naming.ImplicitNameSource], org.hibernate.boot.spi.MetadataBuildingContext), cast-from-var1110-to-var1945=([org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource], org.hibernate.boot.model.naming.ImplicitNameSource), toIdentifier/-987167605=([org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.model.naming.Identifier)}
; {var3164=org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl, var1423=r4, var1110=org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource, var108=r0, var3940=org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature, var1871=$r2, var2973=$r1, var1530=$r3, var3065=org.hibernate.boot.model.naming.EntityNaming, var3776=$r5, var1836=$r6, var817=$r7, var1355=$r10, var1342=org.hibernate.boot.model.naming.Identifier, var1950=$r8, var3768=$r9, var393=$r11, var2095=r23, var2116=org.hibernate.boot.spi.MetadataBuildingContext, var1945=org.hibernate.boot.model.naming.ImplicitNameSource, var1208=$r12, var612=$r13}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl=var3164, r4=var1423, org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource=var1110, r0=var108, org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature=var3940, $r2=var1871, $r1=var2973, $r3=var1530, org.hibernate.boot.model.naming.EntityNaming=var3065, $r5=var3776, $r6=var1836, $r7=var817, $r10=var1355, org.hibernate.boot.model.naming.Identifier=var1342, $r8=var1950, $r9=var3768, $r11=var393, r23=var2095, org.hibernate.boot.spi.MetadataBuildingContext=var2116, org.hibernate.boot.model.naming.ImplicitNameSource=var1945, $r12=var1208, $r13=var612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl;	r0 := @parameter0: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource;	$r2 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature getNature()>();	$r1 = <org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature: org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource$Nature ELEMENT_COLLECTION>;	if $r2 == $r1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.EntityNaming getEntityNaming()>();	$r6 = virtualinvoke r4.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: java.lang.String transformEntityName(org.hibernate.boot.model.naming.EntityNaming)>($r5);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r8 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.model.naming.Identifier getReferencedColumnName()>();	$r9 = virtualinvoke $r8.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>()];	$r12 = interfaceinvoke r0.<org.hibernate.boot.model.naming.ImplicitJoinColumnNameSource: org.hibernate.boot.spi.MetadataBuildingContext getBuildingContext()>();	$r13 = virtualinvoke r4.<org.hibernate.boot.model.naming.ImplicitNamingStrategyJpaCompliantImpl: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>(r23, $r12);	return $r13
;block_num 3