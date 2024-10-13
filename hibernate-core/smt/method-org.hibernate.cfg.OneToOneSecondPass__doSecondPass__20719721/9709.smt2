(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort var2587 0)
(declare-sort var3522 0)
(declare-sort var2904 0)
(declare-sort var1678 0)
(declare-sort var3429 0)
(declare-sort var932 0)
(declare-sort var3705 0)
(declare-sort var2682 0)
(declare-sort var1123 0)
(declare-sort var880 0)
(declare-sort var230 0)
(declare-sort var1756 0)
(declare-sort var805 0)
(declare-sort var2992 0)
(declare-sort var3572 0)
(declare-sort var2981 0)
(declare-sort var1535 0)
(declare-sort var694 0)
(declare-sort var1088 0)
(declare-sort var2588 0)
(declare-sort var3968 0)
(declare-sort var3666 0)
(declare-sort var3010 0)
(declare-sort var94 0)
(declare-sort var2466 0)
(declare-sort var3368 0)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1535!class ClassObject)
(declare-const var694!class ClassObject)
(declare-const var1088!class ClassObject)
(declare-const var3010!class ClassObject)
(declare-fun var3522-init () var3522)
(declare-fun buildingContext/990395514 (var3708) var2904)
(declare-fun propertyHolder/990395514 (var3708) var1678)
(declare-fun var1678_getTable/190309082 (var1678) var3429)
(declare-fun var1678_getPersistentClass/561157946 (var1678) var932)
(declare-fun <init>/1232346507 (var3522 var2904 var3429 var932) void)
(declare-fun inferredData/990395514 (var3708) var3705)
(declare-fun var3705_getPropertyName/-814157935 (var3705) String)
(declare-fun setPropertyName/1593411263 (var3522 String) void)
(declare-fun targetEntity/990395514 (var3708) var2682)
(declare-fun var1123_getReferenceEntityName/662888545 (var3705 var2682 var2904) String)
(declare-fun setReferencedEntityName/2141420022 (var880 String) void)
(declare-fun cast-from-var3522-to-var880 (var3522) var880)
(declare-fun var3705_getProperty/2125427526 (var3705) var230)
(declare-fun var1756_defineFetchingStrategy/-142832134 (var880 var230) void)
(declare-fun cascadeOnDelete/990395514 (var3708) Bool)
(declare-fun setCascadeDeleteEnabled/-1689722544 (var805 Bool) void)
(declare-fun cast-from-var3522-to-var805 (var3522) var805)
(declare-fun optional/990395514 (var3708) Bool)
(declare-fun setConstrained/-1488109176 (var3522 Bool) void)
(declare-fun mappedBy/990395514 (var3708) String)
(declare-fun var2992_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun setForeignKeyType/-819589285 (var3522 var3572) void)
(declare-fun var230_getAnnotation/894663943 (var230 ClassObject) var2981)
(declare-fun cast-from-var2981-to-var1535 (var2981) var1535)
(declare-fun cast-from-var2981-to-var694 (var2981) var694)
(declare-fun cast-from-var2981-to-var1088 (var2981) var1088)
(declare-fun var1756_bindForeignKeyNameAndDefinition/-369204472 (var805 var230 var1535 var694 var1088 var2904) void)
(declare-fun var2588-init () var2588)
(declare-fun <init>/1826378170 (var2588) void)
(declare-fun setName/1479495462 (var2588 String) void)
(declare-fun setProperty/407482352 (var2588 var230) void)
(declare-fun setValue/845331480 (var2588 var3968) void)
(declare-fun cast-from-var3522-to-var3968 (var3522) var3968)
(declare-fun cascadeStrategy/990395514 (var3708) String)
(declare-fun setCascade/-631653409 (var2588 String) void)
(declare-fun var3705_getDefaultAccess/-1367221331 (var3705) var3666)
(declare-fun setAccessType/-1820523972 (var2588 var3666) void)
(declare-fun cast-from-var2981-to-var3010 (var2981) var3010)
(declare-fun makeProperty/774080656 (var2588) var94)
(declare-fun setOptional/-96848152 (var94 Bool) void)
(declare-fun getReferencedEntityName/448027244 (var880) String)
(declare-fun var2587_get/1088891777 (var2587 var2466) var2466)
(declare-fun cast-from-String-to-var2466 (String) var2466)
(declare-fun cast-from-var2466-to-var932 (var2466) var932)
(declare-fun var3368-init () var3368)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3368 String) void)
(declare-fun cast-from-var3368-to-var1036 (var3368) var1036)
(declare-const null-var3708 var3708)
(declare-const null-var2587 var2587)
(declare-const var3572-TO_PARENT var3572)
(declare-const null-var3010 var3010)
(declare-const null-var932 var932)
(declare-const var1104 var3708) ; Statement: r1 := @this: org.hibernate.cfg.OneToOneSecondPass 
(assert (not (= var1104 null-var3708)))
(declare-const var730 var2587) ; Statement: r41 := @parameter0: java.util.Map 
(assert (not (= var730 null-var2587)))
(define-const var507 var3522 var3522-init) ; Statement: $r137 = new org.hibernate.mapping.OneToOne 
(define-const var1344 var2904 (buildingContext/990395514 var1104)) ; Statement: $r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var576 var1678 (propertyHolder/990395514 var1104)) ; Statement: $r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var266 var3429 (var1678_getTable/190309082 var576)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>() 
(define-const var3257 var1678 (propertyHolder/990395514 var1104)) ; Statement: $r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3278 var932 (var1678_getPersistentClass/561157946 var3257)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(assert true)
;(assert (<init>/1232346507 var507 var1344 var266 var3278)) ; Statement: specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5) 

(declare-const var507!1 var3522)
(declare-const var1344!1 var2904)
(declare-const var266!1 var3429)
(declare-const var3278!1 var932)
(define-const var24 var3705 (inferredData/990395514 var1104)) ; Statement: $r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1675 String (var3705_getPropertyName/-814157935 var24)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(assert true)
;(assert (setPropertyName/1593411263 var507!1 var1675)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8) 

(declare-const var507!2 var3522)
(declare-const var1675!1 String)
(define-const var451 var3705 (inferredData/990395514 var1104)) ; Statement: $r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2168 var2682 (targetEntity/990395514 var1104)) ; Statement: $r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity> 
(define-const var3130 var2904 (buildingContext/990395514 var1104)) ; Statement: $r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var501 String (var1123_getReferenceEntityName/662888545 var451 var2168 var3130)) ; Statement: r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9) 
(assert true)
;(assert (setReferencedEntityName/2141420022 (cast-from-var3522-to-var880 var507!2) var501)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12) 

(declare-const var507!3 var3522)
(declare-const var501!1 String)
(define-const var1249 var3705 (inferredData/990395514 var1104)) ; Statement: $r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1837 var230 (var3705_getProperty/2125427526 var1249)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
;(assert (var1756_defineFetchingStrategy/-142832134 (cast-from-var3522-to-var880 var507!3) var1837)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14) 

(declare-const var507!4 var3522)
(declare-const var1837!1 var230)
(define-const var2045 Bool (cascadeOnDelete/990395514 var1104)) ; Statement: $z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete> 
(assert true)
;(assert (setCascadeDeleteEnabled/-1689722544 (cast-from-var3522-to-var805 var507!4) var2045)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0) 

(declare-const var507!5 var3522)
(declare-const var2045!1 Bool)
(define-const var2591 Bool (optional/990395514 var1104)) ; Statement: $z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
 ; Statement: if $z1 != 0 goto $z17 = 0 
(assert (not (= (ite var2591 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3301 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (setConstrained/-1488109176 var507!5 var3301)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17) 

(declare-const var507!6 var3522)
(declare-const var3301!1 Bool)
(define-const var3189 String (mappedBy/990395514 var1104)) ; Statement: $r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var1333 Bool (var2992_isEmptyAnnotationValue/1929464449 var3189)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15) 
 ; Statement: if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert (not (not (= (ite var1333 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2951 var3572 var3572-TO_PARENT) ; Statement: $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT> 
 ; Statement: goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setForeignKeyType/-819589285 var507!6 var2951)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128) 

(declare-const var507!7 var3522)
(declare-const var2951!1 var3572)
(define-const var172 var3705 (inferredData/990395514 var1104)) ; Statement: $r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3639 var230 (var3705_getProperty/2125427526 var172)) ; Statement: $r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var695 var3705 (inferredData/990395514 var1104)) ; Statement: $r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1300 var230 (var3705_getProperty/2125427526 var695)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var380 var2981 (var230_getAnnotation/894663943 var1300 var1535!class)) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;") 
(define-const var373 var1535 (cast-from-var2981-to-var1535 var380)) ; Statement: $r29 = (javax.persistence.ForeignKey) $r19 
(define-const var3517 var3705 (inferredData/990395514 var1104)) ; Statement: $r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1744 var230 (var3705_getProperty/2125427526 var3517)) ; Statement: $r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var756 var2981 (var230_getAnnotation/894663943 var1744 var694!class)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;") 
(define-const var2022 var694 (cast-from-var2981-to-var694 var756)) ; Statement: $r28 = (javax.persistence.JoinColumn) $r22 
(define-const var2654 var3705 (inferredData/990395514 var1104)) ; Statement: $r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2799 var230 (var3705_getProperty/2125427526 var2654)) ; Statement: $r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var877 var2981 (var230_getAnnotation/894663943 var2799 var1088!class)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;") 
(define-const var608 var1088 (cast-from-var2981-to-var1088 var877)) ; Statement: $r27 = (javax.persistence.JoinColumns) $r25 
(define-const var3200 var2904 (buildingContext/990395514 var1104)) ; Statement: $r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
;(assert (var1756_bindForeignKeyNameAndDefinition/-369204472 (cast-from-var3522-to-var805 var507!7) var3639 var373 var2022 var608 var3200)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26) 

(declare-const var507!8 var3522)
(declare-const var3639!1 var230)
(declare-const var373!1 var1535)
(declare-const var2022!1 var694)
(declare-const var608!1 var1088)
(declare-const var3200!1 var2904)
(define-const var888 var2588 var2588-init) ; Statement: $r138 = new org.hibernate.cfg.annotations.PropertyBinder 
(assert true)
;(assert (<init>/1826378170 var888)) ; Statement: specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>() 

(declare-const var888!1 var2588)
(assert true)
;(assert (setName/1479495462 var888!1 var1675!1)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8) 

(declare-const var888!2 var2588)
(declare-const var1675!2 String)
(define-const var3940 var3705 (inferredData/990395514 var1104)) ; Statement: $r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2563 var230 (var3705_getProperty/2125427526 var3940)) ; Statement: $r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(assert true)
;(assert (setProperty/407482352 var888!2 var2563)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33) 

(declare-const var888!3 var2588)
(declare-const var2563!1 var230)
(assert true)
;(assert (setValue/845331480 var888!3 (cast-from-var3522-to-var3968 var507!8))) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137) 

(declare-const var888!4 var2588)
(declare-const var507!9 var3522)
(define-const var1184 String (cascadeStrategy/990395514 var1104)) ; Statement: $r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy> 
(assert true)
;(assert (setCascade/-631653409 var888!4 var1184)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34) 

(declare-const var888!5 var2588)
(declare-const var1184!1 String)
(define-const var2258 var3705 (inferredData/990395514 var1104)) ; Statement: $r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3998 var3666 (var3705_getDefaultAccess/-1367221331 var2258)) ; Statement: $r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>() 
(assert true)
;(assert (setAccessType/-1820523972 var888!5 var3998)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36) 

(declare-const var888!6 var2588)
(declare-const var3998!1 var3666)
(define-const var3077 var3705 (inferredData/990395514 var1104)) ; Statement: $r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1317 var230 (var3705_getProperty/2125427526 var3077)) ; Statement: $r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var1855 var2981 (var230_getAnnotation/894663943 var1317 var3010!class)) ; Statement: $r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;") 
(define-const var2985 var3010 (cast-from-var2981-to-var3010 var1855)) ; Statement: $r127 = (org.hibernate.annotations.LazyGroup) $r39 
 ; Statement: if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(assert (= var2985 null-var3010)) ; Cond: $r127 == null 
(assert true)
(define-const var578 var94 (makeProperty/774080656 var888!6)) ; Statement: $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(define-const var604 Bool (optional/990395514 var1104)) ; Statement: $z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
(assert true)
;(assert (setOptional/-96848152 var578 var604)) ; Statement: virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3) 

(declare-const var578!1 var94)
(declare-const var604!1 Bool)
(define-const var2340 String (mappedBy/990395514 var1104)) ; Statement: $r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var534 Bool (var2992_isEmptyAnnotationValue/1929464449 var2340)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40) 
 ; Statement: if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert (= (ite var534 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var3933 String (getReferencedEntityName/448027244 (cast-from-var3522-to-var880 var507!9))) ; Statement: $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(define-const var3059 var2466 (var2587_get/1088891777 var730 (cast-from-String-to-var2466 var3933))) ; Statement: $r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42) 
(define-const var2638 var932 (cast-from-var2466-to-var932 var3059)) ; Statement: r130 = (org.hibernate.mapping.PersistentClass) $r43 
 ; Statement: if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(assert (not (not (= var2638 null-var932)))) ; Negate: Cond: r130 != null  
(define-const var826 var3368 var3368-init) ; Statement: $r141 = new org.hibernate.MappingException 
(define-const var1472 String String-init) ; Statement: $r140 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1472)) ; Statement: specialinvoke $r140.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1472!1 String)
(assert (= var1472!1 ""))
(assert true)
(define-const var1453 String (append/672562846 var1472!1 "Unable to find entity: ")) ; Statement: $r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ") 
(declare-const var1472!2 String)
(assert (= var1472!2 (str.++ var1472!1 "Unable to find entity: ")))
(assert true)
(define-const var2292 String (getReferencedEntityName/448027244 (cast-from-var3522-to-var880 var507!9))) ; Statement: $r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert true)
(define-const var2182 String (append/672562846 var1453 var2292)) ; Statement: $r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111) 
(declare-const var1453!1 String)
(assert (= var1453!1 (str.++ var1453 var2292)))
(assert true)
(define-const var1237 String (toString/-2075883882 var2182)) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var826 var1237)) ; Statement: specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114) 

(declare-const var826!1 var3368)
(declare-const var1237!1 String)
(define-const var59 var1036 (cast-from-var3368-to-var1036 var826!1)) ; Statement: $r148 = (java.lang.Throwable) $r141 
 ; Statement: throw $r148 
(check-sat)
(get-model)
(get-unsat-core)
; {var3522-init=([], org.hibernate.mapping.OneToOne), buildingContext/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), propertyHolder/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyHolder), var1678_getTable/190309082=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.Table), var1678_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), <init>/1232346507=([org.hibernate.mapping.OneToOne, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table, org.hibernate.mapping.PersistentClass], void), inferredData/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyData), var3705_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), setPropertyName/1593411263=([org.hibernate.mapping.OneToOne, java.lang.String], void), targetEntity/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.annotations.common.reflection.XClass), var1123_getReferenceEntityName/662888545=([org.hibernate.cfg.PropertyData, org.hibernate.annotations.common.reflection.XClass, org.hibernate.boot.spi.MetadataBuildingContext], java.lang.String), setReferencedEntityName/2141420022=([org.hibernate.mapping.ToOne, java.lang.String], void), cast-from-var3522-to-var880=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.ToOne), var3705_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var1756_defineFetchingStrategy/-142832134=([org.hibernate.mapping.ToOne, org.hibernate.annotations.common.reflection.XProperty], void), cascadeOnDelete/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setCascadeDeleteEnabled/-1689722544=([org.hibernate.mapping.SimpleValue, boolean], void), cast-from-var3522-to-var805=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.SimpleValue), optional/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setConstrained/-1488109176=([org.hibernate.mapping.OneToOne, boolean], void), mappedBy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), var2992_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), setForeignKeyType/-819589285=([org.hibernate.mapping.OneToOne, org.hibernate.type.ForeignKeyDirection], void), var230_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2981-to-var1535=([java.lang.annotation.Annotation], javax.persistence.ForeignKey), cast-from-var2981-to-var694=([java.lang.annotation.Annotation], javax.persistence.JoinColumn), cast-from-var2981-to-var1088=([java.lang.annotation.Annotation], javax.persistence.JoinColumns), var1756_bindForeignKeyNameAndDefinition/-369204472=([org.hibernate.mapping.SimpleValue, org.hibernate.annotations.common.reflection.XProperty, javax.persistence.ForeignKey, javax.persistence.JoinColumn, javax.persistence.JoinColumns, org.hibernate.boot.spi.MetadataBuildingContext], void), var2588-init=([], org.hibernate.cfg.annotations.PropertyBinder), <init>/1826378170=([org.hibernate.cfg.annotations.PropertyBinder], void), setName/1479495462=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), setProperty/407482352=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.annotations.common.reflection.XProperty], void), setValue/845331480=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.mapping.Value], void), cast-from-var3522-to-var3968=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.Value), cascadeStrategy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), setCascade/-631653409=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), var3705_getDefaultAccess/-1367221331=([org.hibernate.cfg.PropertyData], org.hibernate.cfg.AccessType), setAccessType/-1820523972=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.cfg.AccessType], void), cast-from-var2981-to-var3010=([java.lang.annotation.Annotation], org.hibernate.annotations.LazyGroup), makeProperty/774080656=([org.hibernate.cfg.annotations.PropertyBinder], org.hibernate.mapping.Property), setOptional/-96848152=([org.hibernate.mapping.Property, boolean], void), getReferencedEntityName/448027244=([org.hibernate.mapping.ToOne], java.lang.String), var2587_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2466=([java.lang.String], java.lang.Object), cast-from-var2466-to-var932=([java.lang.Object], org.hibernate.mapping.PersistentClass), var3368-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3368-to-var1036=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3708=org.hibernate.cfg.OneToOneSecondPass, var1104=r1, var2587=java.util.Map, var730=r41, var3522=org.hibernate.mapping.OneToOne, var507=$r137, var2904=org.hibernate.boot.spi.MetadataBuildingContext, var1344=$r3, var1678=org.hibernate.cfg.PropertyHolder, var576=$r2, var3429=org.hibernate.mapping.Table, var266=$r6, var3257=$r4, var932=org.hibernate.mapping.PersistentClass, var3278=$r5, var3705=org.hibernate.cfg.PropertyData, var24=$r7, var1675=r8, var451=$r11, var2682=org.hibernate.annotations.common.reflection.XClass, var2168=$r10, var3130=$r9, var1123=org.hibernate.cfg.ToOneBinder, var501=r12, var880=org.hibernate.mapping.ToOne, var1249=$r13, var230=org.hibernate.annotations.common.reflection.XProperty, var1837=$r14, var1756=org.hibernate.cfg.AnnotationBinder, var2045=$z0, var805=org.hibernate.mapping.SimpleValue, var2591=$z1, var3301=$z17, var3189=$r15, var2992=org.hibernate.cfg.BinderHelper, var1333=$z2, var3572=org.hibernate.type.ForeignKeyDirection, var2951=$r128, var172=$r16, var3639=$r30, var695=$r17, var1300=$r18, var2981=java.lang.annotation.Annotation, var1535=javax.persistence.ForeignKey, var380=$r19, var373=$r29, var3517=$r20, var1744=$r21, var694=javax.persistence.JoinColumn, var756=$r22, var2022=$r28, var2654=$r23, var2799=$r24, var1088=javax.persistence.JoinColumns, var877=$r25, var608=$r27, var3200=$r26, var2588=org.hibernate.cfg.annotations.PropertyBinder, var888=$r138, var3940=$r32, var2563=$r33, var3968=org.hibernate.mapping.Value, var1184=$r34, var2258=$r35, var3666=org.hibernate.cfg.AccessType, var3998=$r36, var3077=$r37, var1317=$r38, var3010=org.hibernate.annotations.LazyGroup, var1855=$r39, var2985=$r127, var94=org.hibernate.mapping.Property, var578=$r126, var604=$z3, var2340=$r40, var534=$z4, var3933=$r42, var2466=java.lang.Object, var3059=$r43, var2638=r130, var3368=org.hibernate.MappingException, var826=$r141, var1472=$r140, var1453=$r112, var2292=$r111, var2182=$r113, var1237=$r114, var1036=java.lang.Throwable, var59=$r148}
; {org.hibernate.cfg.OneToOneSecondPass=var3708, r1=var1104, java.util.Map=var2587, r41=var730, org.hibernate.mapping.OneToOne=var3522, $r137=var507, org.hibernate.boot.spi.MetadataBuildingContext=var2904, $r3=var1344, org.hibernate.cfg.PropertyHolder=var1678, $r2=var576, org.hibernate.mapping.Table=var3429, $r6=var266, $r4=var3257, org.hibernate.mapping.PersistentClass=var932, $r5=var3278, org.hibernate.cfg.PropertyData=var3705, $r7=var24, r8=var1675, $r11=var451, org.hibernate.annotations.common.reflection.XClass=var2682, $r10=var2168, $r9=var3130, org.hibernate.cfg.ToOneBinder=var1123, r12=var501, org.hibernate.mapping.ToOne=var880, $r13=var1249, org.hibernate.annotations.common.reflection.XProperty=var230, $r14=var1837, org.hibernate.cfg.AnnotationBinder=var1756, $z0=var2045, org.hibernate.mapping.SimpleValue=var805, $z1=var2591, $z17=var3301, $r15=var3189, org.hibernate.cfg.BinderHelper=var2992, $z2=var1333, org.hibernate.type.ForeignKeyDirection=var3572, $r128=var2951, $r16=var172, $r30=var3639, $r17=var695, $r18=var1300, java.lang.annotation.Annotation=var2981, javax.persistence.ForeignKey=var1535, $r19=var380, $r29=var373, $r20=var3517, $r21=var1744, javax.persistence.JoinColumn=var694, $r22=var756, $r28=var2022, $r23=var2654, $r24=var2799, javax.persistence.JoinColumns=var1088, $r25=var877, $r27=var608, $r26=var3200, org.hibernate.cfg.annotations.PropertyBinder=var2588, $r138=var888, $r32=var3940, $r33=var2563, org.hibernate.mapping.Value=var3968, $r34=var1184, $r35=var2258, org.hibernate.cfg.AccessType=var3666, $r36=var3998, $r37=var3077, $r38=var1317, org.hibernate.annotations.LazyGroup=var3010, $r39=var1855, $r127=var2985, org.hibernate.mapping.Property=var94, $r126=var578, $z3=var604, $r40=var2340, $z4=var534, $r42=var3933, java.lang.Object=var2466, $r43=var3059, r130=var2638, org.hibernate.MappingException=var3368, $r141=var826, $r140=var1472, $r112=var1453, $r111=var2292, $r113=var2182, $r114=var1237, java.lang.Throwable=var1036, $r148=var59}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.OneToOneSecondPass;	r41 := @parameter0: java.util.Map;	$r137 = new org.hibernate.mapping.OneToOne;	$r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>();	$r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5);	$r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8);	$r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity>;	$r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9);	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12);	$r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14);	$z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0);	$z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	if $z1 != 0 goto $z17 = 0;	$z17 = 0;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17);	$r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15);	if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	$r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT>;	goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128)];	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128);	$r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;");	$r29 = (javax.persistence.ForeignKey) $r19;	$r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;");	$r28 = (javax.persistence.JoinColumn) $r22;	$r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;");	$r27 = (javax.persistence.JoinColumns) $r25;	$r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26);	$r138 = new org.hibernate.cfg.annotations.PropertyBinder;	specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8);	$r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33);	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137);	$r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy>;	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34);	$r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36);	$r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;");	$r127 = (org.hibernate.annotations.LazyGroup) $r39;	if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3);	$r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40);	if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42);	r130 = (org.hibernate.mapping.PersistentClass) $r43;	if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$r141 = new org.hibernate.MappingException;	$r140 = new java.lang.StringBuilder;	specialinvoke $r140.<java.lang.StringBuilder: void <init>()>();	$r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ");	$r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111);	$r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114);	$r148 = (java.lang.Throwable) $r141;	throw $r148
;block_num 8