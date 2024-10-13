(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var532 0)
(declare-sort var1273 0)
(declare-sort var1525 0)
(declare-sort var1679 0)
(declare-sort var1403 0)
(declare-sort var3004 0)
(declare-sort var1439 0)
(declare-sort var2703 0)
(declare-sort var263 0)
(declare-sort var62 0)
(declare-sort var1360 0)
(declare-sort var1948 0)
(declare-sort var1869 0)
(declare-sort var2130 0)
(declare-sort var1974 0)
(declare-sort var500 0)
(declare-sort var920 0)
(declare-sort var1927 0)
(declare-sort var3250 0)
(declare-sort var115 0)
(declare-sort var2596 0)
(declare-sort var3127 0)
(declare-sort var1597 0)
(declare-sort var3453 0)
(declare-sort var1098 0)
(declare-sort var257 0)
(declare-sort var2821 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1927!class ClassObject)
(declare-const var3250!class ClassObject)
(declare-const var115!class ClassObject)
(declare-const var3453!class ClassObject)
(declare-fun var1525-init () var1525)
(declare-fun buildingContext/990395514 (var532) var1679)
(declare-fun propertyHolder/990395514 (var532) var1403)
(declare-fun var1403_getTable/190309082 (var1403) var3004)
(declare-fun var1403_getPersistentClass/561157946 (var1403) var1439)
(declare-fun <init>/1232346507 (var1525 var1679 var3004 var1439) void)
(declare-fun inferredData/990395514 (var532) var2703)
(declare-fun var2703_getPropertyName/-814157935 (var2703) String)
(declare-fun setPropertyName/1593411263 (var1525 String) void)
(declare-fun targetEntity/990395514 (var532) var263)
(declare-fun var62_getReferenceEntityName/662888545 (var2703 var263 var1679) String)
(declare-fun setReferencedEntityName/2141420022 (var1360 String) void)
(declare-fun cast-from-var1525-to-var1360 (var1525) var1360)
(declare-fun var2703_getProperty/2125427526 (var2703) var1948)
(declare-fun var1869_defineFetchingStrategy/-142832134 (var1360 var1948) void)
(declare-fun cascadeOnDelete/990395514 (var532) Bool)
(declare-fun setCascadeDeleteEnabled/-1689722544 (var2130 Bool) void)
(declare-fun cast-from-var1525-to-var2130 (var1525) var2130)
(declare-fun optional/990395514 (var532) Bool)
(declare-fun setConstrained/-1488109176 (var1525 Bool) void)
(declare-fun mappedBy/990395514 (var532) String)
(declare-fun var1974_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun setForeignKeyType/-819589285 (var1525 var500) void)
(declare-fun var1948_getAnnotation/894663943 (var1948 ClassObject) var920)
(declare-fun cast-from-var920-to-var1927 (var920) var1927)
(declare-fun cast-from-var920-to-var3250 (var920) var3250)
(declare-fun cast-from-var920-to-var115 (var920) var115)
(declare-fun var1869_bindForeignKeyNameAndDefinition/-369204472 (var2130 var1948 var1927 var3250 var115 var1679) void)
(declare-fun var2596-init () var2596)
(declare-fun <init>/1826378170 (var2596) void)
(declare-fun setName/1479495462 (var2596 String) void)
(declare-fun setProperty/407482352 (var2596 var1948) void)
(declare-fun setValue/845331480 (var2596 var3127) void)
(declare-fun cast-from-var1525-to-var3127 (var1525) var3127)
(declare-fun cascadeStrategy/990395514 (var532) String)
(declare-fun setCascade/-631653409 (var2596 String) void)
(declare-fun var2703_getDefaultAccess/-1367221331 (var2703) var1597)
(declare-fun setAccessType/-1820523972 (var2596 var1597) void)
(declare-fun cast-from-var920-to-var3453 (var920) var3453)
(declare-fun makeProperty/774080656 (var2596) var1098)
(declare-fun setOptional/-96848152 (var1098 Bool) void)
(declare-fun getReferencedEntityName/448027244 (var1360) String)
(declare-fun var1273_get/1088891777 (var1273 var257) var257)
(declare-fun cast-from-String-to-var257 (String) var257)
(declare-fun cast-from-var257-to-var1439 (var257) var1439)
(declare-fun var2821-init () var2821)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2821 String) void)
(declare-fun cast-from-var2821-to-var865 (var2821) var865)
(declare-const null-var532 var532)
(declare-const null-var1273 var1273)
(declare-const var500-TO_PARENT var500)
(declare-const null-var3453 var3453)
(declare-const null-var1439 var1439)
(declare-const var3743 var532) ; Statement: r1 := @this: org.hibernate.cfg.OneToOneSecondPass 
(assert (not (= var3743 null-var532)))
(declare-const var2150 var1273) ; Statement: r41 := @parameter0: java.util.Map 
(assert (not (= var2150 null-var1273)))
(define-const var3594 var1525 var1525-init) ; Statement: $r137 = new org.hibernate.mapping.OneToOne 
(define-const var1831 var1679 (buildingContext/990395514 var3743)) ; Statement: $r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3007 var1403 (propertyHolder/990395514 var3743)) ; Statement: $r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var2630 var3004 (var1403_getTable/190309082 var3007)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>() 
(define-const var1929 var1403 (propertyHolder/990395514 var3743)) ; Statement: $r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var1987 var1439 (var1403_getPersistentClass/561157946 var1929)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(assert true)
;(assert (<init>/1232346507 var3594 var1831 var2630 var1987)) ; Statement: specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5) 

(declare-const var3594!1 var1525)
(declare-const var1831!1 var1679)
(declare-const var2630!1 var3004)
(declare-const var1987!1 var1439)
(define-const var700 var2703 (inferredData/990395514 var3743)) ; Statement: $r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var406 String (var2703_getPropertyName/-814157935 var700)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(assert true)
;(assert (setPropertyName/1593411263 var3594!1 var406)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8) 

(declare-const var3594!2 var1525)
(declare-const var406!1 String)
(define-const var3294 var2703 (inferredData/990395514 var3743)) ; Statement: $r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3058 var263 (targetEntity/990395514 var3743)) ; Statement: $r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity> 
(define-const var1417 var1679 (buildingContext/990395514 var3743)) ; Statement: $r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var213 String (var62_getReferenceEntityName/662888545 var3294 var3058 var1417)) ; Statement: r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9) 
(assert true)
;(assert (setReferencedEntityName/2141420022 (cast-from-var1525-to-var1360 var3594!2) var213)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12) 

(declare-const var3594!3 var1525)
(declare-const var213!1 String)
(define-const var473 var2703 (inferredData/990395514 var3743)) ; Statement: $r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1652 var1948 (var2703_getProperty/2125427526 var473)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
;(assert (var1869_defineFetchingStrategy/-142832134 (cast-from-var1525-to-var1360 var3594!3) var1652)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14) 

(declare-const var3594!4 var1525)
(declare-const var1652!1 var1948)
(define-const var3084 Bool (cascadeOnDelete/990395514 var3743)) ; Statement: $z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete> 
(assert true)
;(assert (setCascadeDeleteEnabled/-1689722544 (cast-from-var1525-to-var2130 var3594!4) var3084)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0) 

(declare-const var3594!5 var1525)
(declare-const var3084!1 Bool)
(define-const var3765 Bool (optional/990395514 var3743)) ; Statement: $z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
 ; Statement: if $z1 != 0 goto $z17 = 0 
(assert (not (not (= (ite var3765 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var687 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setConstrained/-1488109176 var3594!5 var687)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17) 

(declare-const var3594!6 var1525)
(declare-const var687!1 Bool)
(define-const var2886 String (mappedBy/990395514 var3743)) ; Statement: $r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var3265 Bool (var1974_isEmptyAnnotationValue/1929464449 var2886)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15) 
 ; Statement: if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert (not (not (= (ite var3265 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var141 var500 var500-TO_PARENT) ; Statement: $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT> 
 ; Statement: goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setForeignKeyType/-819589285 var3594!6 var141)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128) 

(declare-const var3594!7 var1525)
(declare-const var141!1 var500)
(define-const var2456 var2703 (inferredData/990395514 var3743)) ; Statement: $r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var333 var1948 (var2703_getProperty/2125427526 var2456)) ; Statement: $r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3336 var2703 (inferredData/990395514 var3743)) ; Statement: $r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3771 var1948 (var2703_getProperty/2125427526 var3336)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3083 var920 (var1948_getAnnotation/894663943 var3771 var1927!class)) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;") 
(define-const var2034 var1927 (cast-from-var920-to-var1927 var3083)) ; Statement: $r29 = (javax.persistence.ForeignKey) $r19 
(define-const var403 var2703 (inferredData/990395514 var3743)) ; Statement: $r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3343 var1948 (var2703_getProperty/2125427526 var403)) ; Statement: $r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var2549 var920 (var1948_getAnnotation/894663943 var3343 var3250!class)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;") 
(define-const var2493 var3250 (cast-from-var920-to-var3250 var2549)) ; Statement: $r28 = (javax.persistence.JoinColumn) $r22 
(define-const var1096 var2703 (inferredData/990395514 var3743)) ; Statement: $r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var218 var1948 (var2703_getProperty/2125427526 var1096)) ; Statement: $r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var1579 var920 (var1948_getAnnotation/894663943 var218 var115!class)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;") 
(define-const var2459 var115 (cast-from-var920-to-var115 var1579)) ; Statement: $r27 = (javax.persistence.JoinColumns) $r25 
(define-const var207 var1679 (buildingContext/990395514 var3743)) ; Statement: $r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
;(assert (var1869_bindForeignKeyNameAndDefinition/-369204472 (cast-from-var1525-to-var2130 var3594!7) var333 var2034 var2493 var2459 var207)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26) 

(declare-const var3594!8 var1525)
(declare-const var333!1 var1948)
(declare-const var2034!1 var1927)
(declare-const var2493!1 var3250)
(declare-const var2459!1 var115)
(declare-const var207!1 var1679)
(define-const var341 var2596 var2596-init) ; Statement: $r138 = new org.hibernate.cfg.annotations.PropertyBinder 
(assert true)
;(assert (<init>/1826378170 var341)) ; Statement: specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>() 

(declare-const var341!1 var2596)
(assert true)
;(assert (setName/1479495462 var341!1 var406!1)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8) 

(declare-const var341!2 var2596)
(declare-const var406!2 String)
(define-const var1412 var2703 (inferredData/990395514 var3743)) ; Statement: $r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3245 var1948 (var2703_getProperty/2125427526 var1412)) ; Statement: $r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(assert true)
;(assert (setProperty/407482352 var341!2 var3245)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33) 

(declare-const var341!3 var2596)
(declare-const var3245!1 var1948)
(assert true)
;(assert (setValue/845331480 var341!3 (cast-from-var1525-to-var3127 var3594!8))) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137) 

(declare-const var341!4 var2596)
(declare-const var3594!9 var1525)
(define-const var3479 String (cascadeStrategy/990395514 var3743)) ; Statement: $r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy> 
(assert true)
;(assert (setCascade/-631653409 var341!4 var3479)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34) 

(declare-const var341!5 var2596)
(declare-const var3479!1 String)
(define-const var3288 var2703 (inferredData/990395514 var3743)) ; Statement: $r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2995 var1597 (var2703_getDefaultAccess/-1367221331 var3288)) ; Statement: $r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>() 
(assert true)
;(assert (setAccessType/-1820523972 var341!5 var2995)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36) 

(declare-const var341!6 var2596)
(declare-const var2995!1 var1597)
(define-const var2900 var2703 (inferredData/990395514 var3743)) ; Statement: $r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1063 var1948 (var2703_getProperty/2125427526 var2900)) ; Statement: $r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3005 var920 (var1948_getAnnotation/894663943 var1063 var3453!class)) ; Statement: $r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;") 
(define-const var3026 var3453 (cast-from-var920-to-var3453 var3005)) ; Statement: $r127 = (org.hibernate.annotations.LazyGroup) $r39 
 ; Statement: if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(assert (= var3026 null-var3453)) ; Cond: $r127 == null 
(assert true)
(define-const var3615 var1098 (makeProperty/774080656 var341!6)) ; Statement: $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(define-const var1182 Bool (optional/990395514 var3743)) ; Statement: $z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
(assert true)
;(assert (setOptional/-96848152 var3615 var1182)) ; Statement: virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3) 

(declare-const var3615!1 var1098)
(declare-const var1182!1 Bool)
(define-const var464 String (mappedBy/990395514 var3743)) ; Statement: $r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var366 Bool (var1974_isEmptyAnnotationValue/1929464449 var464)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40) 
 ; Statement: if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert (= (ite var366 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var3135 String (getReferencedEntityName/448027244 (cast-from-var1525-to-var1360 var3594!9))) ; Statement: $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(define-const var1049 var257 (var1273_get/1088891777 var2150 (cast-from-String-to-var257 var3135))) ; Statement: $r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42) 
(define-const var2860 var1439 (cast-from-var257-to-var1439 var1049)) ; Statement: r130 = (org.hibernate.mapping.PersistentClass) $r43 
 ; Statement: if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(assert (not (not (= var2860 null-var1439)))) ; Negate: Cond: r130 != null  
(define-const var2416 var2821 var2821-init) ; Statement: $r141 = new org.hibernate.MappingException 
(define-const var2763 String String-init) ; Statement: $r140 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2763)) ; Statement: specialinvoke $r140.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2763!1 String)
(assert (= var2763!1 ""))
(assert true)
(define-const var247 String (append/672562846 var2763!1 "Unable to find entity: ")) ; Statement: $r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ") 
(declare-const var2763!2 String)
(assert (= var2763!2 (str.++ var2763!1 "Unable to find entity: ")))
(assert true)
(define-const var735 String (getReferencedEntityName/448027244 (cast-from-var1525-to-var1360 var3594!9))) ; Statement: $r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert true)
(define-const var1978 String (append/672562846 var247 var735)) ; Statement: $r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111) 
(declare-const var247!1 String)
(assert (= var247!1 (str.++ var247 var735)))
(assert true)
(define-const var474 String (toString/-2075883882 var1978)) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2416 var474)) ; Statement: specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114) 

(declare-const var2416!1 var2821)
(declare-const var474!1 String)
(define-const var49 var865 (cast-from-var2821-to-var865 var2416!1)) ; Statement: $r148 = (java.lang.Throwable) $r141 
 ; Statement: throw $r148 
(check-sat)
(get-model)
(get-unsat-core)
; {var1525-init=([], org.hibernate.mapping.OneToOne), buildingContext/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), propertyHolder/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyHolder), var1403_getTable/190309082=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.Table), var1403_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), <init>/1232346507=([org.hibernate.mapping.OneToOne, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table, org.hibernate.mapping.PersistentClass], void), inferredData/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyData), var2703_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), setPropertyName/1593411263=([org.hibernate.mapping.OneToOne, java.lang.String], void), targetEntity/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.annotations.common.reflection.XClass), var62_getReferenceEntityName/662888545=([org.hibernate.cfg.PropertyData, org.hibernate.annotations.common.reflection.XClass, org.hibernate.boot.spi.MetadataBuildingContext], java.lang.String), setReferencedEntityName/2141420022=([org.hibernate.mapping.ToOne, java.lang.String], void), cast-from-var1525-to-var1360=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.ToOne), var2703_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var1869_defineFetchingStrategy/-142832134=([org.hibernate.mapping.ToOne, org.hibernate.annotations.common.reflection.XProperty], void), cascadeOnDelete/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setCascadeDeleteEnabled/-1689722544=([org.hibernate.mapping.SimpleValue, boolean], void), cast-from-var1525-to-var2130=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.SimpleValue), optional/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setConstrained/-1488109176=([org.hibernate.mapping.OneToOne, boolean], void), mappedBy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), var1974_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), setForeignKeyType/-819589285=([org.hibernate.mapping.OneToOne, org.hibernate.type.ForeignKeyDirection], void), var1948_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var920-to-var1927=([java.lang.annotation.Annotation], javax.persistence.ForeignKey), cast-from-var920-to-var3250=([java.lang.annotation.Annotation], javax.persistence.JoinColumn), cast-from-var920-to-var115=([java.lang.annotation.Annotation], javax.persistence.JoinColumns), var1869_bindForeignKeyNameAndDefinition/-369204472=([org.hibernate.mapping.SimpleValue, org.hibernate.annotations.common.reflection.XProperty, javax.persistence.ForeignKey, javax.persistence.JoinColumn, javax.persistence.JoinColumns, org.hibernate.boot.spi.MetadataBuildingContext], void), var2596-init=([], org.hibernate.cfg.annotations.PropertyBinder), <init>/1826378170=([org.hibernate.cfg.annotations.PropertyBinder], void), setName/1479495462=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), setProperty/407482352=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.annotations.common.reflection.XProperty], void), setValue/845331480=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.mapping.Value], void), cast-from-var1525-to-var3127=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.Value), cascadeStrategy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), setCascade/-631653409=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), var2703_getDefaultAccess/-1367221331=([org.hibernate.cfg.PropertyData], org.hibernate.cfg.AccessType), setAccessType/-1820523972=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.cfg.AccessType], void), cast-from-var920-to-var3453=([java.lang.annotation.Annotation], org.hibernate.annotations.LazyGroup), makeProperty/774080656=([org.hibernate.cfg.annotations.PropertyBinder], org.hibernate.mapping.Property), setOptional/-96848152=([org.hibernate.mapping.Property, boolean], void), getReferencedEntityName/448027244=([org.hibernate.mapping.ToOne], java.lang.String), var1273_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var257=([java.lang.String], java.lang.Object), cast-from-var257-to-var1439=([java.lang.Object], org.hibernate.mapping.PersistentClass), var2821-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2821-to-var865=([org.hibernate.MappingException], java.lang.Throwable)}
; {var532=org.hibernate.cfg.OneToOneSecondPass, var3743=r1, var1273=java.util.Map, var2150=r41, var1525=org.hibernate.mapping.OneToOne, var3594=$r137, var1679=org.hibernate.boot.spi.MetadataBuildingContext, var1831=$r3, var1403=org.hibernate.cfg.PropertyHolder, var3007=$r2, var3004=org.hibernate.mapping.Table, var2630=$r6, var1929=$r4, var1439=org.hibernate.mapping.PersistentClass, var1987=$r5, var2703=org.hibernate.cfg.PropertyData, var700=$r7, var406=r8, var3294=$r11, var263=org.hibernate.annotations.common.reflection.XClass, var3058=$r10, var1417=$r9, var62=org.hibernate.cfg.ToOneBinder, var213=r12, var1360=org.hibernate.mapping.ToOne, var473=$r13, var1948=org.hibernate.annotations.common.reflection.XProperty, var1652=$r14, var1869=org.hibernate.cfg.AnnotationBinder, var3084=$z0, var2130=org.hibernate.mapping.SimpleValue, var3765=$z1, var687=$z17, var2886=$r15, var1974=org.hibernate.cfg.BinderHelper, var3265=$z2, var500=org.hibernate.type.ForeignKeyDirection, var141=$r128, var2456=$r16, var333=$r30, var3336=$r17, var3771=$r18, var920=java.lang.annotation.Annotation, var1927=javax.persistence.ForeignKey, var3083=$r19, var2034=$r29, var403=$r20, var3343=$r21, var3250=javax.persistence.JoinColumn, var2549=$r22, var2493=$r28, var1096=$r23, var218=$r24, var115=javax.persistence.JoinColumns, var1579=$r25, var2459=$r27, var207=$r26, var2596=org.hibernate.cfg.annotations.PropertyBinder, var341=$r138, var1412=$r32, var3245=$r33, var3127=org.hibernate.mapping.Value, var3479=$r34, var3288=$r35, var1597=org.hibernate.cfg.AccessType, var2995=$r36, var2900=$r37, var1063=$r38, var3453=org.hibernate.annotations.LazyGroup, var3005=$r39, var3026=$r127, var1098=org.hibernate.mapping.Property, var3615=$r126, var1182=$z3, var464=$r40, var366=$z4, var3135=$r42, var257=java.lang.Object, var1049=$r43, var2860=r130, var2821=org.hibernate.MappingException, var2416=$r141, var2763=$r140, var247=$r112, var735=$r111, var1978=$r113, var474=$r114, var865=java.lang.Throwable, var49=$r148}
; {org.hibernate.cfg.OneToOneSecondPass=var532, r1=var3743, java.util.Map=var1273, r41=var2150, org.hibernate.mapping.OneToOne=var1525, $r137=var3594, org.hibernate.boot.spi.MetadataBuildingContext=var1679, $r3=var1831, org.hibernate.cfg.PropertyHolder=var1403, $r2=var3007, org.hibernate.mapping.Table=var3004, $r6=var2630, $r4=var1929, org.hibernate.mapping.PersistentClass=var1439, $r5=var1987, org.hibernate.cfg.PropertyData=var2703, $r7=var700, r8=var406, $r11=var3294, org.hibernate.annotations.common.reflection.XClass=var263, $r10=var3058, $r9=var1417, org.hibernate.cfg.ToOneBinder=var62, r12=var213, org.hibernate.mapping.ToOne=var1360, $r13=var473, org.hibernate.annotations.common.reflection.XProperty=var1948, $r14=var1652, org.hibernate.cfg.AnnotationBinder=var1869, $z0=var3084, org.hibernate.mapping.SimpleValue=var2130, $z1=var3765, $z17=var687, $r15=var2886, org.hibernate.cfg.BinderHelper=var1974, $z2=var3265, org.hibernate.type.ForeignKeyDirection=var500, $r128=var141, $r16=var2456, $r30=var333, $r17=var3336, $r18=var3771, java.lang.annotation.Annotation=var920, javax.persistence.ForeignKey=var1927, $r19=var3083, $r29=var2034, $r20=var403, $r21=var3343, javax.persistence.JoinColumn=var3250, $r22=var2549, $r28=var2493, $r23=var1096, $r24=var218, javax.persistence.JoinColumns=var115, $r25=var1579, $r27=var2459, $r26=var207, org.hibernate.cfg.annotations.PropertyBinder=var2596, $r138=var341, $r32=var1412, $r33=var3245, org.hibernate.mapping.Value=var3127, $r34=var3479, $r35=var3288, org.hibernate.cfg.AccessType=var1597, $r36=var2995, $r37=var2900, $r38=var1063, org.hibernate.annotations.LazyGroup=var3453, $r39=var3005, $r127=var3026, org.hibernate.mapping.Property=var1098, $r126=var3615, $z3=var1182, $r40=var464, $z4=var366, $r42=var3135, java.lang.Object=var257, $r43=var1049, r130=var2860, org.hibernate.MappingException=var2821, $r141=var2416, $r140=var2763, $r112=var247, $r111=var735, $r113=var1978, $r114=var474, java.lang.Throwable=var865, $r148=var49}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.OneToOneSecondPass;	r41 := @parameter0: java.util.Map;	$r137 = new org.hibernate.mapping.OneToOne;	$r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>();	$r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5);	$r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8);	$r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity>;	$r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9);	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12);	$r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14);	$z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0);	$z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	if $z1 != 0 goto $z17 = 0;	$z17 = 1;	goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17)];	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17);	$r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15);	if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	$r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT>;	goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128)];	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128);	$r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;");	$r29 = (javax.persistence.ForeignKey) $r19;	$r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;");	$r28 = (javax.persistence.JoinColumn) $r22;	$r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;");	$r27 = (javax.persistence.JoinColumns) $r25;	$r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26);	$r138 = new org.hibernate.cfg.annotations.PropertyBinder;	specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8);	$r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33);	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137);	$r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy>;	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34);	$r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36);	$r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;");	$r127 = (org.hibernate.annotations.LazyGroup) $r39;	if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3);	$r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40);	if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42);	r130 = (org.hibernate.mapping.PersistentClass) $r43;	if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$r141 = new org.hibernate.MappingException;	$r140 = new java.lang.StringBuilder;	specialinvoke $r140.<java.lang.StringBuilder: void <init>()>();	$r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ");	$r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111);	$r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114);	$r148 = (java.lang.Throwable) $r141;	throw $r148
;block_num 8