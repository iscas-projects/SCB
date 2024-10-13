(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2916 0)
(declare-sort var148 0)
(declare-sort var3133 0)
(declare-sort var1000 0)
(declare-sort var392 0)
(declare-sort var2787 0)
(declare-sort var675 0)
(declare-sort var3331 0)
(declare-sort var567 0)
(declare-sort var3603 0)
(declare-sort var3634 0)
(declare-sort var211 0)
(declare-sort var2365 0)
(declare-sort var3632 0)
(declare-sort var2757 0)
(declare-sort var46 0)
(declare-sort var1295 0)
(declare-sort var3078 0)
(declare-sort var1378 0)
(declare-sort var561 0)
(declare-sort var2576 0)
(declare-sort var2295 0)
(declare-sort var2992 0)
(declare-sort var2 0)
(declare-sort var1439 0)
(declare-sort var3532 0)
(declare-sort var2115 0)
(declare-sort var433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3078!class ClassObject)
(declare-const var1378!class ClassObject)
(declare-const var561!class ClassObject)
(declare-const var2!class ClassObject)
(declare-fun var3133-init () var3133)
(declare-fun buildingContext/990395514 (var2916) var1000)
(declare-fun propertyHolder/990395514 (var2916) var392)
(declare-fun var392_getTable/190309082 (var392) var2787)
(declare-fun var392_getPersistentClass/561157946 (var392) var675)
(declare-fun <init>/1232346507 (var3133 var1000 var2787 var675) void)
(declare-fun inferredData/990395514 (var2916) var3331)
(declare-fun var3331_getPropertyName/-814157935 (var3331) String)
(declare-fun setPropertyName/1593411263 (var3133 String) void)
(declare-fun targetEntity/990395514 (var2916) var567)
(declare-fun var3603_getReferenceEntityName/662888545 (var3331 var567 var1000) String)
(declare-fun setReferencedEntityName/2141420022 (var3634 String) void)
(declare-fun cast-from-var3133-to-var3634 (var3133) var3634)
(declare-fun var3331_getProperty/2125427526 (var3331) var211)
(declare-fun var2365_defineFetchingStrategy/-142832134 (var3634 var211) void)
(declare-fun cascadeOnDelete/990395514 (var2916) Bool)
(declare-fun setCascadeDeleteEnabled/-1689722544 (var3632 Bool) void)
(declare-fun cast-from-var3133-to-var3632 (var3133) var3632)
(declare-fun optional/990395514 (var2916) Bool)
(declare-fun setConstrained/-1488109176 (var3133 Bool) void)
(declare-fun mappedBy/990395514 (var2916) String)
(declare-fun var2757_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun setForeignKeyType/-819589285 (var3133 var46) void)
(declare-fun var211_getAnnotation/894663943 (var211 ClassObject) var1295)
(declare-fun cast-from-var1295-to-var3078 (var1295) var3078)
(declare-fun cast-from-var1295-to-var1378 (var1295) var1378)
(declare-fun cast-from-var1295-to-var561 (var1295) var561)
(declare-fun var2365_bindForeignKeyNameAndDefinition/-369204472 (var3632 var211 var3078 var1378 var561 var1000) void)
(declare-fun var2576-init () var2576)
(declare-fun <init>/1826378170 (var2576) void)
(declare-fun setName/1479495462 (var2576 String) void)
(declare-fun setProperty/407482352 (var2576 var211) void)
(declare-fun setValue/845331480 (var2576 var2295) void)
(declare-fun cast-from-var3133-to-var2295 (var3133) var2295)
(declare-fun cascadeStrategy/990395514 (var2916) String)
(declare-fun setCascade/-631653409 (var2576 String) void)
(declare-fun var3331_getDefaultAccess/-1367221331 (var3331) var2992)
(declare-fun setAccessType/-1820523972 (var2576 var2992) void)
(declare-fun cast-from-var1295-to-var2 (var1295) var2)
(declare-fun makeProperty/774080656 (var2576) var1439)
(declare-fun setOptional/-96848152 (var1439 Bool) void)
(declare-fun getReferencedEntityName/448027244 (var3634) String)
(declare-fun var148_get/1088891777 (var148 var3532) var3532)
(declare-fun cast-from-String-to-var3532 (String) var3532)
(declare-fun cast-from-var3532-to-var675 (var3532) var675)
(declare-fun var2115-init () var2115)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2115 String) void)
(declare-fun cast-from-var2115-to-var433 (var2115) var433)
(declare-const null-var2916 var2916)
(declare-const null-var148 var148)
(declare-const var46-FROM_PARENT var46)
(declare-const null-var2 var2)
(declare-const null-var675 var675)
(declare-const var1348 var2916) ; Statement: r1 := @this: org.hibernate.cfg.OneToOneSecondPass 
(assert (not (= var1348 null-var2916)))
(declare-const var3082 var148) ; Statement: r41 := @parameter0: java.util.Map 
(assert (not (= var3082 null-var148)))
(define-const var654 var3133 var3133-init) ; Statement: $r137 = new org.hibernate.mapping.OneToOne 
(define-const var508 var1000 (buildingContext/990395514 var1348)) ; Statement: $r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var2127 var392 (propertyHolder/990395514 var1348)) ; Statement: $r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3031 var2787 (var392_getTable/190309082 var2127)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>() 
(define-const var1966 var392 (propertyHolder/990395514 var1348)) ; Statement: $r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var1312 var675 (var392_getPersistentClass/561157946 var1966)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(assert true)
;(assert (<init>/1232346507 var654 var508 var3031 var1312)) ; Statement: specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5) 

(declare-const var654!1 var3133)
(declare-const var508!1 var1000)
(declare-const var3031!1 var2787)
(declare-const var1312!1 var675)
(define-const var411 var3331 (inferredData/990395514 var1348)) ; Statement: $r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var391 String (var3331_getPropertyName/-814157935 var411)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(assert true)
;(assert (setPropertyName/1593411263 var654!1 var391)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8) 

(declare-const var654!2 var3133)
(declare-const var391!1 String)
(define-const var582 var3331 (inferredData/990395514 var1348)) ; Statement: $r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3638 var567 (targetEntity/990395514 var1348)) ; Statement: $r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity> 
(define-const var3276 var1000 (buildingContext/990395514 var1348)) ; Statement: $r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3161 String (var3603_getReferenceEntityName/662888545 var582 var3638 var3276)) ; Statement: r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9) 
(assert true)
;(assert (setReferencedEntityName/2141420022 (cast-from-var3133-to-var3634 var654!2) var3161)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12) 

(declare-const var654!3 var3133)
(declare-const var3161!1 String)
(define-const var511 var3331 (inferredData/990395514 var1348)) ; Statement: $r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3431 var211 (var3331_getProperty/2125427526 var511)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
;(assert (var2365_defineFetchingStrategy/-142832134 (cast-from-var3133-to-var3634 var654!3) var3431)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14) 

(declare-const var654!4 var3133)
(declare-const var3431!1 var211)
(define-const var2379 Bool (cascadeOnDelete/990395514 var1348)) ; Statement: $z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete> 
(assert true)
;(assert (setCascadeDeleteEnabled/-1689722544 (cast-from-var3133-to-var3632 var654!4) var2379)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0) 

(declare-const var654!5 var3133)
(declare-const var2379!1 Bool)
(define-const var3502 Bool (optional/990395514 var1348)) ; Statement: $z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
 ; Statement: if $z1 != 0 goto $z17 = 0 
(assert (not (= (ite var3502 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1192 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (setConstrained/-1488109176 var654!5 var1192)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17) 

(declare-const var654!6 var3133)
(declare-const var1192!1 Bool)
(define-const var2432 String (mappedBy/990395514 var1348)) ; Statement: $r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var1494 Bool (var2757_isEmptyAnnotationValue/1929464449 var2432)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15) 
 ; Statement: if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert (not (= (ite var1494 1 0) 0))) ; Cond: $z2 != 0 
(define-const var35 var46 var46-FROM_PARENT) ; Statement: $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert true) ; Non Conditional
(assert true)
;(assert (setForeignKeyType/-819589285 var654!6 var35)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128) 

(declare-const var654!7 var3133)
(declare-const var35!1 var46)
(define-const var2639 var3331 (inferredData/990395514 var1348)) ; Statement: $r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3550 var211 (var3331_getProperty/2125427526 var2639)) ; Statement: $r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var609 var3331 (inferredData/990395514 var1348)) ; Statement: $r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3118 var211 (var3331_getProperty/2125427526 var609)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3957 var1295 (var211_getAnnotation/894663943 var3118 var3078!class)) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;") 
(define-const var3784 var3078 (cast-from-var1295-to-var3078 var3957)) ; Statement: $r29 = (javax.persistence.ForeignKey) $r19 
(define-const var611 var3331 (inferredData/990395514 var1348)) ; Statement: $r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3421 var211 (var3331_getProperty/2125427526 var611)) ; Statement: $r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3361 var1295 (var211_getAnnotation/894663943 var3421 var1378!class)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;") 
(define-const var1030 var1378 (cast-from-var1295-to-var1378 var3361)) ; Statement: $r28 = (javax.persistence.JoinColumn) $r22 
(define-const var2186 var3331 (inferredData/990395514 var1348)) ; Statement: $r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1469 var211 (var3331_getProperty/2125427526 var2186)) ; Statement: $r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3619 var1295 (var211_getAnnotation/894663943 var1469 var561!class)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;") 
(define-const var610 var561 (cast-from-var1295-to-var561 var3619)) ; Statement: $r27 = (javax.persistence.JoinColumns) $r25 
(define-const var1214 var1000 (buildingContext/990395514 var1348)) ; Statement: $r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
;(assert (var2365_bindForeignKeyNameAndDefinition/-369204472 (cast-from-var3133-to-var3632 var654!7) var3550 var3784 var1030 var610 var1214)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26) 

(declare-const var654!8 var3133)
(declare-const var3550!1 var211)
(declare-const var3784!1 var3078)
(declare-const var1030!1 var1378)
(declare-const var610!1 var561)
(declare-const var1214!1 var1000)
(define-const var3274 var2576 var2576-init) ; Statement: $r138 = new org.hibernate.cfg.annotations.PropertyBinder 
(assert true)
;(assert (<init>/1826378170 var3274)) ; Statement: specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>() 

(declare-const var3274!1 var2576)
(assert true)
;(assert (setName/1479495462 var3274!1 var391!1)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8) 

(declare-const var3274!2 var2576)
(declare-const var391!2 String)
(define-const var1547 var3331 (inferredData/990395514 var1348)) ; Statement: $r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1328 var211 (var3331_getProperty/2125427526 var1547)) ; Statement: $r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(assert true)
;(assert (setProperty/407482352 var3274!2 var1328)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33) 

(declare-const var3274!3 var2576)
(declare-const var1328!1 var211)
(assert true)
;(assert (setValue/845331480 var3274!3 (cast-from-var3133-to-var2295 var654!8))) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137) 

(declare-const var3274!4 var2576)
(declare-const var654!9 var3133)
(define-const var2994 String (cascadeStrategy/990395514 var1348)) ; Statement: $r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy> 
(assert true)
;(assert (setCascade/-631653409 var3274!4 var2994)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34) 

(declare-const var3274!5 var2576)
(declare-const var2994!1 String)
(define-const var3095 var3331 (inferredData/990395514 var1348)) ; Statement: $r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1230 var2992 (var3331_getDefaultAccess/-1367221331 var3095)) ; Statement: $r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>() 
(assert true)
;(assert (setAccessType/-1820523972 var3274!5 var1230)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36) 

(declare-const var3274!6 var2576)
(declare-const var1230!1 var2992)
(define-const var3517 var3331 (inferredData/990395514 var1348)) ; Statement: $r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1355 var211 (var3331_getProperty/2125427526 var3517)) ; Statement: $r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3330 var1295 (var211_getAnnotation/894663943 var1355 var2!class)) ; Statement: $r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;") 
(define-const var1110 var2 (cast-from-var1295-to-var2 var3330)) ; Statement: $r127 = (org.hibernate.annotations.LazyGroup) $r39 
 ; Statement: if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(assert (= var1110 null-var2)) ; Cond: $r127 == null 
(assert true)
(define-const var1374 var1439 (makeProperty/774080656 var3274!6)) ; Statement: $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(define-const var3545 Bool (optional/990395514 var1348)) ; Statement: $z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
(assert true)
;(assert (setOptional/-96848152 var1374 var3545)) ; Statement: virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3) 

(declare-const var1374!1 var1439)
(declare-const var3545!1 Bool)
(define-const var2854 String (mappedBy/990395514 var1348)) ; Statement: $r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var614 Bool (var2757_isEmptyAnnotationValue/1929464449 var2854)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40) 
 ; Statement: if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert (= (ite var614 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2817 String (getReferencedEntityName/448027244 (cast-from-var3133-to-var3634 var654!9))) ; Statement: $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(define-const var3322 var3532 (var148_get/1088891777 var3082 (cast-from-String-to-var3532 var2817))) ; Statement: $r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42) 
(define-const var1173 var675 (cast-from-var3532-to-var675 var3322)) ; Statement: r130 = (org.hibernate.mapping.PersistentClass) $r43 
 ; Statement: if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(assert (not (not (= var1173 null-var675)))) ; Negate: Cond: r130 != null  
(define-const var1049 var2115 var2115-init) ; Statement: $r141 = new org.hibernate.MappingException 
(define-const var2917 String String-init) ; Statement: $r140 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2917)) ; Statement: specialinvoke $r140.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2917!1 String)
(assert (= var2917!1 ""))
(assert true)
(define-const var968 String (append/672562846 var2917!1 "Unable to find entity: ")) ; Statement: $r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ") 
(declare-const var2917!2 String)
(assert (= var2917!2 (str.++ var2917!1 "Unable to find entity: ")))
(assert true)
(define-const var2216 String (getReferencedEntityName/448027244 (cast-from-var3133-to-var3634 var654!9))) ; Statement: $r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert true)
(define-const var2300 String (append/672562846 var968 var2216)) ; Statement: $r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111) 
(declare-const var968!1 String)
(assert (= var968!1 (str.++ var968 var2216)))
(assert true)
(define-const var2862 String (toString/-2075883882 var2300)) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1049 var2862)) ; Statement: specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114) 

(declare-const var1049!1 var2115)
(declare-const var2862!1 String)
(define-const var3080 var433 (cast-from-var2115-to-var433 var1049!1)) ; Statement: $r148 = (java.lang.Throwable) $r141 
 ; Statement: throw $r148 
(check-sat)
(get-model)
(get-unsat-core)
; {var3133-init=([], org.hibernate.mapping.OneToOne), buildingContext/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), propertyHolder/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyHolder), var392_getTable/190309082=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.Table), var392_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), <init>/1232346507=([org.hibernate.mapping.OneToOne, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table, org.hibernate.mapping.PersistentClass], void), inferredData/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyData), var3331_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), setPropertyName/1593411263=([org.hibernate.mapping.OneToOne, java.lang.String], void), targetEntity/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.annotations.common.reflection.XClass), var3603_getReferenceEntityName/662888545=([org.hibernate.cfg.PropertyData, org.hibernate.annotations.common.reflection.XClass, org.hibernate.boot.spi.MetadataBuildingContext], java.lang.String), setReferencedEntityName/2141420022=([org.hibernate.mapping.ToOne, java.lang.String], void), cast-from-var3133-to-var3634=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.ToOne), var3331_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var2365_defineFetchingStrategy/-142832134=([org.hibernate.mapping.ToOne, org.hibernate.annotations.common.reflection.XProperty], void), cascadeOnDelete/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setCascadeDeleteEnabled/-1689722544=([org.hibernate.mapping.SimpleValue, boolean], void), cast-from-var3133-to-var3632=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.SimpleValue), optional/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setConstrained/-1488109176=([org.hibernate.mapping.OneToOne, boolean], void), mappedBy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), var2757_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), setForeignKeyType/-819589285=([org.hibernate.mapping.OneToOne, org.hibernate.type.ForeignKeyDirection], void), var211_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var1295-to-var3078=([java.lang.annotation.Annotation], javax.persistence.ForeignKey), cast-from-var1295-to-var1378=([java.lang.annotation.Annotation], javax.persistence.JoinColumn), cast-from-var1295-to-var561=([java.lang.annotation.Annotation], javax.persistence.JoinColumns), var2365_bindForeignKeyNameAndDefinition/-369204472=([org.hibernate.mapping.SimpleValue, org.hibernate.annotations.common.reflection.XProperty, javax.persistence.ForeignKey, javax.persistence.JoinColumn, javax.persistence.JoinColumns, org.hibernate.boot.spi.MetadataBuildingContext], void), var2576-init=([], org.hibernate.cfg.annotations.PropertyBinder), <init>/1826378170=([org.hibernate.cfg.annotations.PropertyBinder], void), setName/1479495462=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), setProperty/407482352=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.annotations.common.reflection.XProperty], void), setValue/845331480=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.mapping.Value], void), cast-from-var3133-to-var2295=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.Value), cascadeStrategy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), setCascade/-631653409=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), var3331_getDefaultAccess/-1367221331=([org.hibernate.cfg.PropertyData], org.hibernate.cfg.AccessType), setAccessType/-1820523972=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.cfg.AccessType], void), cast-from-var1295-to-var2=([java.lang.annotation.Annotation], org.hibernate.annotations.LazyGroup), makeProperty/774080656=([org.hibernate.cfg.annotations.PropertyBinder], org.hibernate.mapping.Property), setOptional/-96848152=([org.hibernate.mapping.Property, boolean], void), getReferencedEntityName/448027244=([org.hibernate.mapping.ToOne], java.lang.String), var148_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3532=([java.lang.String], java.lang.Object), cast-from-var3532-to-var675=([java.lang.Object], org.hibernate.mapping.PersistentClass), var2115-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2115-to-var433=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2916=org.hibernate.cfg.OneToOneSecondPass, var1348=r1, var148=java.util.Map, var3082=r41, var3133=org.hibernate.mapping.OneToOne, var654=$r137, var1000=org.hibernate.boot.spi.MetadataBuildingContext, var508=$r3, var392=org.hibernate.cfg.PropertyHolder, var2127=$r2, var2787=org.hibernate.mapping.Table, var3031=$r6, var1966=$r4, var675=org.hibernate.mapping.PersistentClass, var1312=$r5, var3331=org.hibernate.cfg.PropertyData, var411=$r7, var391=r8, var582=$r11, var567=org.hibernate.annotations.common.reflection.XClass, var3638=$r10, var3276=$r9, var3603=org.hibernate.cfg.ToOneBinder, var3161=r12, var3634=org.hibernate.mapping.ToOne, var511=$r13, var211=org.hibernate.annotations.common.reflection.XProperty, var3431=$r14, var2365=org.hibernate.cfg.AnnotationBinder, var2379=$z0, var3632=org.hibernate.mapping.SimpleValue, var3502=$z1, var1192=$z17, var2432=$r15, var2757=org.hibernate.cfg.BinderHelper, var1494=$z2, var46=org.hibernate.type.ForeignKeyDirection, var35=$r128, var2639=$r16, var3550=$r30, var609=$r17, var3118=$r18, var1295=java.lang.annotation.Annotation, var3078=javax.persistence.ForeignKey, var3957=$r19, var3784=$r29, var611=$r20, var3421=$r21, var1378=javax.persistence.JoinColumn, var3361=$r22, var1030=$r28, var2186=$r23, var1469=$r24, var561=javax.persistence.JoinColumns, var3619=$r25, var610=$r27, var1214=$r26, var2576=org.hibernate.cfg.annotations.PropertyBinder, var3274=$r138, var1547=$r32, var1328=$r33, var2295=org.hibernate.mapping.Value, var2994=$r34, var3095=$r35, var2992=org.hibernate.cfg.AccessType, var1230=$r36, var3517=$r37, var1355=$r38, var2=org.hibernate.annotations.LazyGroup, var3330=$r39, var1110=$r127, var1439=org.hibernate.mapping.Property, var1374=$r126, var3545=$z3, var2854=$r40, var614=$z4, var2817=$r42, var3532=java.lang.Object, var3322=$r43, var1173=r130, var2115=org.hibernate.MappingException, var1049=$r141, var2917=$r140, var968=$r112, var2216=$r111, var2300=$r113, var2862=$r114, var433=java.lang.Throwable, var3080=$r148}
; {org.hibernate.cfg.OneToOneSecondPass=var2916, r1=var1348, java.util.Map=var148, r41=var3082, org.hibernate.mapping.OneToOne=var3133, $r137=var654, org.hibernate.boot.spi.MetadataBuildingContext=var1000, $r3=var508, org.hibernate.cfg.PropertyHolder=var392, $r2=var2127, org.hibernate.mapping.Table=var2787, $r6=var3031, $r4=var1966, org.hibernate.mapping.PersistentClass=var675, $r5=var1312, org.hibernate.cfg.PropertyData=var3331, $r7=var411, r8=var391, $r11=var582, org.hibernate.annotations.common.reflection.XClass=var567, $r10=var3638, $r9=var3276, org.hibernate.cfg.ToOneBinder=var3603, r12=var3161, org.hibernate.mapping.ToOne=var3634, $r13=var511, org.hibernate.annotations.common.reflection.XProperty=var211, $r14=var3431, org.hibernate.cfg.AnnotationBinder=var2365, $z0=var2379, org.hibernate.mapping.SimpleValue=var3632, $z1=var3502, $z17=var1192, $r15=var2432, org.hibernate.cfg.BinderHelper=var2757, $z2=var1494, org.hibernate.type.ForeignKeyDirection=var46, $r128=var35, $r16=var2639, $r30=var3550, $r17=var609, $r18=var3118, java.lang.annotation.Annotation=var1295, javax.persistence.ForeignKey=var3078, $r19=var3957, $r29=var3784, $r20=var611, $r21=var3421, javax.persistence.JoinColumn=var1378, $r22=var3361, $r28=var1030, $r23=var2186, $r24=var1469, javax.persistence.JoinColumns=var561, $r25=var3619, $r27=var610, $r26=var1214, org.hibernate.cfg.annotations.PropertyBinder=var2576, $r138=var3274, $r32=var1547, $r33=var1328, org.hibernate.mapping.Value=var2295, $r34=var2994, $r35=var3095, org.hibernate.cfg.AccessType=var2992, $r36=var1230, $r37=var3517, $r38=var1355, org.hibernate.annotations.LazyGroup=var2, $r39=var3330, $r127=var1110, org.hibernate.mapping.Property=var1439, $r126=var1374, $z3=var3545, $r40=var2854, $z4=var614, $r42=var2817, java.lang.Object=var3532, $r43=var3322, r130=var1173, org.hibernate.MappingException=var2115, $r141=var1049, $r140=var2917, $r112=var968, $r111=var2216, $r113=var2300, $r114=var2862, java.lang.Throwable=var433, $r148=var3080}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.OneToOneSecondPass;	r41 := @parameter0: java.util.Map;	$r137 = new org.hibernate.mapping.OneToOne;	$r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>();	$r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5);	$r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8);	$r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity>;	$r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9);	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12);	$r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14);	$z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0);	$z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	if $z1 != 0 goto $z17 = 0;	$z17 = 0;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17);	$r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15);	if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	$r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128);	$r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;");	$r29 = (javax.persistence.ForeignKey) $r19;	$r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;");	$r28 = (javax.persistence.JoinColumn) $r22;	$r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;");	$r27 = (javax.persistence.JoinColumns) $r25;	$r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26);	$r138 = new org.hibernate.cfg.annotations.PropertyBinder;	specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8);	$r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33);	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137);	$r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy>;	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34);	$r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36);	$r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;");	$r127 = (org.hibernate.annotations.LazyGroup) $r39;	if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3);	$r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40);	if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42);	r130 = (org.hibernate.mapping.PersistentClass) $r43;	if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$r141 = new org.hibernate.MappingException;	$r140 = new java.lang.StringBuilder;	specialinvoke $r140.<java.lang.StringBuilder: void <init>()>();	$r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ");	$r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111);	$r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114);	$r148 = (java.lang.Throwable) $r141;	throw $r148
;block_num 8