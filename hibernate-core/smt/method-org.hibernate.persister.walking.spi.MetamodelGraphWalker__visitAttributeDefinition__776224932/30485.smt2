(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2919 0)
(declare-sort var1609 0)
(declare-sort var3420 0)
(declare-sort var2461 0)
(declare-sort var196 0)
(declare-sort var1548 0)
(declare-sort var3738 0)
(declare-sort var1252 0)
(declare-sort var3807 0)
(declare-sort var1175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentPropertyPath/1556216042 (var2919) var2461)
(declare-fun var1609_getName/-283147352 (var1609) String)
(declare-fun append/-1669004034 (var2461 String) var2461)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullPath/-627774443 (var2461) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var196 var1548) void)
(declare-fun cast-from-String-to-var1548 (String) var1548)
(declare-fun var1609_getType/-1290588044 (var1609) var3738)
(declare-fun var3738_isAssociationType/-327998410 (var3738) Bool)
(declare-fun cast-from-var1609-to-var1252 (var1609) var1252)
(declare-fun var1252_getAssociationKey/-1563157753 (var1252) var3807)
(declare-fun isDuplicateAssociationKey/-1986614198 (var2919 var3807) Bool)
(declare-fun strategy/1556216042 (var2919) var1175)
(declare-fun var1175_foundCircularAssociation/-819552441 (var1175 var1252) void)
(declare-const null-var2919 var2919)
(declare-const null-var1609 var1609)
(declare-const null-var3420 var3420)
(declare-const var2919-log var196)
(declare-const var2100 var2919) ; Statement: r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker 
(assert (not (= var2100 null-var2919)))
(declare-const var2937 var1609) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.AttributeDefinition 
(assert (not (= var2937 null-var1609)))
(declare-const var881 var3420) ; Statement: r15 := @parameter1: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var881 null-var3420)))
(define-const var1069 var2461 (currentPropertyPath/1556216042 var2100)) ; Statement: $r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.loader.PropertyPath currentPropertyPath> 
(define-const var1669 String (var1609_getName/-283147352 var2937)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.persister.walking.spi.AttributeDefinition: java.lang.String getName()>() 
(assert true)
(define-const var535 var2461 (append/-1669004034 var1069 var1669)) ; Statement: r4 = virtualinvoke $r2.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath append(java.lang.String)>($r3) 
(define-const var2496 var196 var2919-log) ; Statement: $r6 = <org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.jboss.logging.Logger log> 
(define-const var3472 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3472)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3472!1 String)
(assert (= var3472!1 ""))
(assert true)
(define-const var306 String (append/672562846 var3472!1 "Visiting attribute path : ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Visiting attribute path : ") 
(declare-const var3472!2 String)
(assert (= var3472!2 (str.++ var3472!1 "Visiting attribute path : ")))
(assert true)
(define-const var573 String (getFullPath/-627774443 var535)) ; Statement: $r7 = virtualinvoke r4.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(assert true)
(define-const var3554 String (append/672562846 var306 var573)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 var573)))
(assert true)
(define-const var551 String (toString/-2075883882 var3554)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var2496 (cast-from-String-to-var1548 var551))) ; Statement: virtualinvoke $r6.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r10) 

(declare-const var2496!1 var196)
(declare-const var551!1 String)
(define-const var2802 var3738 (var1609_getType/-1290588044 var2937)) ; Statement: $r11 = interfaceinvoke r1.<org.hibernate.persister.walking.spi.AttributeDefinition: org.hibernate.type.Type getType()>() 
(define-const var3734 Bool (var3738_isAssociationType/-327998410 var2802)) ; Statement: $z0 = interfaceinvoke $r11.<org.hibernate.type.Type: boolean isAssociationType()>() 
 ; Statement: if $z0 == 0 goto $r30 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy> 
(assert (not (= (ite var3734 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1053 var1252 (cast-from-var1609-to-var1252 var2937)) ; Statement: r27 = (org.hibernate.persister.walking.spi.AssociationAttributeDefinition) r1 
(define-const var379 var3807 (var1252_getAssociationKey/-1563157753 var1053)) ; Statement: r28 = interfaceinvoke r27.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.AssociationKey getAssociationKey()>() 
(assert true)
(define-const var579 Bool (isDuplicateAssociationKey/-1986614198 var2100 var379)) ; Statement: $z3 = virtualinvoke r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: boolean isDuplicateAssociationKey(org.hibernate.persister.walking.spi.AssociationKey)>(r28) 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (not (= (ite var579 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2450 var196 var2919-log) ; Statement: $r18 = <org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.jboss.logging.Logger log> 
(define-const var973 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var973)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var973!1 String)
(assert (= var973!1 ""))
(assert true)
(define-const var2988 String (append/672562846 var973!1 "Property path deemed to be circular : ")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property path deemed to be circular : ") 
(declare-const var973!2 String)
(assert (= var973!2 (str.++ var973!1 "Property path deemed to be circular : ")))
(assert true)
(define-const var2006 String (getFullPath/-627774443 var535)) ; Statement: $r19 = virtualinvoke r4.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(assert true)
(define-const var1371 String (append/672562846 var2988 var2006)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2988!1 String)
(assert (= var2988!1 (str.++ var2988 var2006)))
(assert true)
(define-const var1048 String (toString/-2075883882 var1371)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var2450 (cast-from-String-to-var1548 var1048))) ; Statement: virtualinvoke $r18.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r22) 

(declare-const var2450!1 var196)
(declare-const var1048!1 String)
(define-const var3014 var1175 (strategy/1556216042 var2100)) ; Statement: $r23 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy> 
;(assert (var1175_foundCircularAssociation/-819552441 var3014 var1053)) ; Statement: interfaceinvoke $r23.<org.hibernate.persister.walking.spi.AssociationVisitationStrategy: void foundCircularAssociation(org.hibernate.persister.walking.spi.AssociationAttributeDefinition)>(r27) 

(declare-const var3014!1 var1175)
(declare-const var1053!1 var1252)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentPropertyPath/1556216042=([org.hibernate.persister.walking.spi.MetamodelGraphWalker], org.hibernate.loader.PropertyPath), var1609_getName/-283147352=([org.hibernate.persister.walking.spi.AttributeDefinition], java.lang.String), append/-1669004034=([org.hibernate.loader.PropertyPath, java.lang.String], org.hibernate.loader.PropertyPath), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1548=([java.lang.String], java.lang.Object), var1609_getType/-1290588044=([org.hibernate.persister.walking.spi.AttributeDefinition], org.hibernate.type.Type), var3738_isAssociationType/-327998410=([org.hibernate.type.Type], boolean), cast-from-var1609-to-var1252=([org.hibernate.persister.walking.spi.AttributeDefinition], org.hibernate.persister.walking.spi.AssociationAttributeDefinition), var1252_getAssociationKey/-1563157753=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.AssociationKey), isDuplicateAssociationKey/-1986614198=([org.hibernate.persister.walking.spi.MetamodelGraphWalker, org.hibernate.persister.walking.spi.AssociationKey], boolean), strategy/1556216042=([org.hibernate.persister.walking.spi.MetamodelGraphWalker], org.hibernate.persister.walking.spi.AssociationVisitationStrategy), var1175_foundCircularAssociation/-819552441=([org.hibernate.persister.walking.spi.AssociationVisitationStrategy, org.hibernate.persister.walking.spi.AssociationAttributeDefinition], void)}
; {var2919=org.hibernate.persister.walking.spi.MetamodelGraphWalker, var2100=r0, var1609=org.hibernate.persister.walking.spi.AttributeDefinition, var2937=r1, var3420=org.hibernate.persister.entity.AbstractEntityPersister, var881=r15, var2461=org.hibernate.loader.PropertyPath, var1069=$r2, var1669=$r3, var535=r4, var196=org.jboss.logging.Logger, var2496=$r6, var3472=$r5, var306=$r8, var573=$r7, var3554=$r9, var551=$r10, var1548=java.lang.Object, var3738=org.hibernate.type.Type, var2802=$r11, var3734=$z0, var1252=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var1053=r27, var3807=org.hibernate.persister.walking.spi.AssociationKey, var379=r28, var579=$z3, var2450=$r18, var973=$r17, var2988=$r20, var2006=$r19, var1371=$r21, var1048=$r22, var1175=org.hibernate.persister.walking.spi.AssociationVisitationStrategy, var3014=$r23}
; {org.hibernate.persister.walking.spi.MetamodelGraphWalker=var2919, r0=var2100, org.hibernate.persister.walking.spi.AttributeDefinition=var1609, r1=var2937, org.hibernate.persister.entity.AbstractEntityPersister=var3420, r15=var881, org.hibernate.loader.PropertyPath=var2461, $r2=var1069, $r3=var1669, r4=var535, org.jboss.logging.Logger=var196, $r6=var2496, $r5=var3472, $r8=var306, $r7=var573, $r9=var3554, $r10=var551, java.lang.Object=var1548, org.hibernate.type.Type=var3738, $r11=var2802, $z0=var3734, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var1252, r27=var1053, org.hibernate.persister.walking.spi.AssociationKey=var3807, r28=var379, $z3=var579, $r18=var2450, $r17=var973, $r20=var2988, $r19=var2006, $r21=var1371, $r22=var1048, org.hibernate.persister.walking.spi.AssociationVisitationStrategy=var1175, $r23=var3014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker;	r1 := @parameter0: org.hibernate.persister.walking.spi.AttributeDefinition;	r15 := @parameter1: org.hibernate.persister.entity.AbstractEntityPersister;	$r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.loader.PropertyPath currentPropertyPath>;	$r3 = interfaceinvoke r1.<org.hibernate.persister.walking.spi.AttributeDefinition: java.lang.String getName()>();	r4 = virtualinvoke $r2.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath append(java.lang.String)>($r3);	$r6 = <org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.jboss.logging.Logger log>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Visiting attribute path : ");	$r7 = virtualinvoke r4.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r10);	$r11 = interfaceinvoke r1.<org.hibernate.persister.walking.spi.AttributeDefinition: org.hibernate.type.Type getType()>();	$z0 = interfaceinvoke $r11.<org.hibernate.type.Type: boolean isAssociationType()>();	if $z0 == 0 goto $r30 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy>;	r27 = (org.hibernate.persister.walking.spi.AssociationAttributeDefinition) r1;	r28 = interfaceinvoke r27.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.AssociationKey getAssociationKey()>();	$z3 = virtualinvoke r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: boolean isDuplicateAssociationKey(org.hibernate.persister.walking.spi.AssociationKey)>(r28);	if $z3 == 0 goto (branch);	$r18 = <org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.jboss.logging.Logger log>;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property path deemed to be circular : ");	$r19 = virtualinvoke r4.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r18.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r22);	$r23 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy>;	interfaceinvoke $r23.<org.hibernate.persister.walking.spi.AssociationVisitationStrategy: void foundCircularAssociation(org.hibernate.persister.walking.spi.AssociationAttributeDefinition)>(r27);	return
;block_num 3