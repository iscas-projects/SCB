(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1527 0)
(declare-sort var3450 0)
(declare-sort var620 0)
(declare-sort var2652 0)
(declare-sort var1014 0)
(declare-sort var2578 0)
(declare-sort var766 0)
(declare-sort var1790 0)
(declare-sort var2059 0)
(declare-sort var1161 0)
(declare-sort var1191 0)
(declare-sort var3910 0)
(declare-sort var834 0)
(declare-sort var3226 0)
(declare-sort var903 0)
(declare-sort var2559 0)
(declare-sort var3108 0)
(declare-sort var2780 0)
(declare-sort var3045 0)
(declare-sort var592 0)
(declare-sort var2999 0)
(declare-sort var355 0)
(declare-sort var3258 0)
(declare-sort var46 0)
(declare-sort var1569 0)
(declare-sort var3570 0)
(declare-sort var3209 0)
(declare-sort var244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2780!class ClassObject)
(declare-const var3045!class ClassObject)
(declare-const var592!class ClassObject)
(declare-const var46!class ClassObject)
(declare-fun var620-init () var620)
(declare-fun buildingContext/990395514 (var1527) var2652)
(declare-fun propertyHolder/990395514 (var1527) var1014)
(declare-fun var1014_getTable/190309082 (var1014) var2578)
(declare-fun var1014_getPersistentClass/561157946 (var1014) var766)
(declare-fun <init>/1232346507 (var620 var2652 var2578 var766) void)
(declare-fun inferredData/990395514 (var1527) var1790)
(declare-fun var1790_getPropertyName/-814157935 (var1790) String)
(declare-fun setPropertyName/1593411263 (var620 String) void)
(declare-fun targetEntity/990395514 (var1527) var2059)
(declare-fun var1161_getReferenceEntityName/662888545 (var1790 var2059 var2652) String)
(declare-fun setReferencedEntityName/2141420022 (var1191 String) void)
(declare-fun cast-from-var620-to-var1191 (var620) var1191)
(declare-fun var1790_getProperty/2125427526 (var1790) var3910)
(declare-fun var834_defineFetchingStrategy/-142832134 (var1191 var3910) void)
(declare-fun cascadeOnDelete/990395514 (var1527) Bool)
(declare-fun setCascadeDeleteEnabled/-1689722544 (var3226 Bool) void)
(declare-fun cast-from-var620-to-var3226 (var620) var3226)
(declare-fun optional/990395514 (var1527) Bool)
(declare-fun setConstrained/-1488109176 (var620 Bool) void)
(declare-fun mappedBy/990395514 (var1527) String)
(declare-fun var903_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun setForeignKeyType/-819589285 (var620 var2559) void)
(declare-fun var3910_getAnnotation/894663943 (var3910 ClassObject) var3108)
(declare-fun cast-from-var3108-to-var2780 (var3108) var2780)
(declare-fun cast-from-var3108-to-var3045 (var3108) var3045)
(declare-fun cast-from-var3108-to-var592 (var3108) var592)
(declare-fun var834_bindForeignKeyNameAndDefinition/-369204472 (var3226 var3910 var2780 var3045 var592 var2652) void)
(declare-fun var2999-init () var2999)
(declare-fun <init>/1826378170 (var2999) void)
(declare-fun setName/1479495462 (var2999 String) void)
(declare-fun setProperty/407482352 (var2999 var3910) void)
(declare-fun setValue/845331480 (var2999 var355) void)
(declare-fun cast-from-var620-to-var355 (var620) var355)
(declare-fun cascadeStrategy/990395514 (var1527) String)
(declare-fun setCascade/-631653409 (var2999 String) void)
(declare-fun var1790_getDefaultAccess/-1367221331 (var1790) var3258)
(declare-fun setAccessType/-1820523972 (var2999 var3258) void)
(declare-fun cast-from-var3108-to-var46 (var3108) var46)
(declare-fun makeProperty/774080656 (var2999) var1569)
(declare-fun setOptional/-96848152 (var1569 Bool) void)
(declare-fun getReferencedEntityName/448027244 (var1191) String)
(declare-fun var3450_get/1088891777 (var3450 var3570) var3570)
(declare-fun cast-from-String-to-var3570 (String) var3570)
(declare-fun cast-from-var3570-to-var766 (var3570) var766)
(declare-fun var3209-init () var3209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3209 String) void)
(declare-fun cast-from-var3209-to-var244 (var3209) var244)
(declare-const null-var1527 var1527)
(declare-const null-var3450 var3450)
(declare-const var2559-FROM_PARENT var2559)
(declare-const null-var46 var46)
(declare-const null-var766 var766)
(declare-const var1575 var1527) ; Statement: r1 := @this: org.hibernate.cfg.OneToOneSecondPass 
(assert (not (= var1575 null-var1527)))
(declare-const var3056 var3450) ; Statement: r41 := @parameter0: java.util.Map 
(assert (not (= var3056 null-var3450)))
(define-const var1467 var620 var620-init) ; Statement: $r137 = new org.hibernate.mapping.OneToOne 
(define-const var3592 var2652 (buildingContext/990395514 var1575)) ; Statement: $r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3263 var1014 (propertyHolder/990395514 var1575)) ; Statement: $r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var1923 var2578 (var1014_getTable/190309082 var3263)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>() 
(define-const var3141 var1014 (propertyHolder/990395514 var1575)) ; Statement: $r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var2266 var766 (var1014_getPersistentClass/561157946 var3141)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(assert true)
;(assert (<init>/1232346507 var1467 var3592 var1923 var2266)) ; Statement: specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5) 

(declare-const var1467!1 var620)
(declare-const var3592!1 var2652)
(declare-const var1923!1 var2578)
(declare-const var2266!1 var766)
(define-const var1832 var1790 (inferredData/990395514 var1575)) ; Statement: $r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3460 String (var1790_getPropertyName/-814157935 var1832)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(assert true)
;(assert (setPropertyName/1593411263 var1467!1 var3460)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8) 

(declare-const var1467!2 var620)
(declare-const var3460!1 String)
(define-const var3987 var1790 (inferredData/990395514 var1575)) ; Statement: $r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3907 var2059 (targetEntity/990395514 var1575)) ; Statement: $r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity> 
(define-const var2041 var2652 (buildingContext/990395514 var1575)) ; Statement: $r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var2774 String (var1161_getReferenceEntityName/662888545 var3987 var3907 var2041)) ; Statement: r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9) 
(assert true)
;(assert (setReferencedEntityName/2141420022 (cast-from-var620-to-var1191 var1467!2) var2774)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12) 

(declare-const var1467!3 var620)
(declare-const var2774!1 String)
(define-const var310 var1790 (inferredData/990395514 var1575)) ; Statement: $r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var3636 var3910 (var1790_getProperty/2125427526 var310)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
;(assert (var834_defineFetchingStrategy/-142832134 (cast-from-var620-to-var1191 var1467!3) var3636)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14) 

(declare-const var1467!4 var620)
(declare-const var3636!1 var3910)
(define-const var61 Bool (cascadeOnDelete/990395514 var1575)) ; Statement: $z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete> 
(assert true)
;(assert (setCascadeDeleteEnabled/-1689722544 (cast-from-var620-to-var3226 var1467!4) var61)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0) 

(declare-const var1467!5 var620)
(declare-const var61!1 Bool)
(define-const var566 Bool (optional/990395514 var1575)) ; Statement: $z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
 ; Statement: if $z1 != 0 goto $z17 = 0 
(assert (not (not (= (ite var566 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3037 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setConstrained/-1488109176 var1467!5 var3037)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17) 

(declare-const var1467!6 var620)
(declare-const var3037!1 Bool)
(define-const var747 String (mappedBy/990395514 var1575)) ; Statement: $r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var3906 Bool (var903_isEmptyAnnotationValue/1929464449 var747)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15) 
 ; Statement: if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert (not (= (ite var3906 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2459 var2559 var2559-FROM_PARENT) ; Statement: $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT> 
(assert true) ; Non Conditional
(assert true)
;(assert (setForeignKeyType/-819589285 var1467!6 var2459)) ; Statement: virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128) 

(declare-const var1467!7 var620)
(declare-const var2459!1 var2559)
(define-const var2931 var1790 (inferredData/990395514 var1575)) ; Statement: $r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2412 var3910 (var1790_getProperty/2125427526 var2931)) ; Statement: $r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var888 var1790 (inferredData/990395514 var1575)) ; Statement: $r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2859 var3910 (var1790_getProperty/2125427526 var888)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var1771 var3108 (var3910_getAnnotation/894663943 var2859 var2780!class)) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;") 
(define-const var180 var2780 (cast-from-var3108-to-var2780 var1771)) ; Statement: $r29 = (javax.persistence.ForeignKey) $r19 
(define-const var3558 var1790 (inferredData/990395514 var1575)) ; Statement: $r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var167 var3910 (var1790_getProperty/2125427526 var3558)) ; Statement: $r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3939 var3108 (var3910_getAnnotation/894663943 var167 var3045!class)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;") 
(define-const var1458 var3045 (cast-from-var3108-to-var3045 var3939)) ; Statement: $r28 = (javax.persistence.JoinColumn) $r22 
(define-const var1386 var1790 (inferredData/990395514 var1575)) ; Statement: $r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var2419 var3910 (var1790_getProperty/2125427526 var1386)) ; Statement: $r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var826 var3108 (var3910_getAnnotation/894663943 var2419 var592!class)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;") 
(define-const var3269 var592 (cast-from-var3108-to-var592 var826)) ; Statement: $r27 = (javax.persistence.JoinColumns) $r25 
(define-const var2675 var2652 (buildingContext/990395514 var1575)) ; Statement: $r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
;(assert (var834_bindForeignKeyNameAndDefinition/-369204472 (cast-from-var620-to-var3226 var1467!7) var2412 var180 var1458 var3269 var2675)) ; Statement: staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26) 

(declare-const var1467!8 var620)
(declare-const var2412!1 var3910)
(declare-const var180!1 var2780)
(declare-const var1458!1 var3045)
(declare-const var3269!1 var592)
(declare-const var2675!1 var2652)
(define-const var3913 var2999 var2999-init) ; Statement: $r138 = new org.hibernate.cfg.annotations.PropertyBinder 
(assert true)
;(assert (<init>/1826378170 var3913)) ; Statement: specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>() 

(declare-const var3913!1 var2999)
(assert true)
;(assert (setName/1479495462 var3913!1 var3460!1)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8) 

(declare-const var3913!2 var2999)
(declare-const var3460!2 String)
(define-const var3911 var1790 (inferredData/990395514 var1575)) ; Statement: $r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var609 var3910 (var1790_getProperty/2125427526 var3911)) ; Statement: $r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(assert true)
;(assert (setProperty/407482352 var3913!2 var609)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33) 

(declare-const var3913!3 var2999)
(declare-const var609!1 var3910)
(assert true)
;(assert (setValue/845331480 var3913!3 (cast-from-var620-to-var355 var1467!8))) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137) 

(declare-const var3913!4 var2999)
(declare-const var1467!9 var620)
(define-const var2749 String (cascadeStrategy/990395514 var1575)) ; Statement: $r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy> 
(assert true)
;(assert (setCascade/-631653409 var3913!4 var2749)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34) 

(declare-const var3913!5 var2999)
(declare-const var2749!1 String)
(define-const var1281 var1790 (inferredData/990395514 var1575)) ; Statement: $r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1537 var3258 (var1790_getDefaultAccess/-1367221331 var1281)) ; Statement: $r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>() 
(assert true)
;(assert (setAccessType/-1820523972 var3913!5 var1537)) ; Statement: virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36) 

(declare-const var3913!6 var2999)
(declare-const var1537!1 var3258)
(define-const var3638 var1790 (inferredData/990395514 var1575)) ; Statement: $r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData> 
(define-const var777 var3910 (var1790_getProperty/2125427526 var3638)) ; Statement: $r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3542 var3108 (var3910_getAnnotation/894663943 var777 var46!class)) ; Statement: $r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;") 
(define-const var1383 var46 (cast-from-var3108-to-var46 var3542)) ; Statement: $r127 = (org.hibernate.annotations.LazyGroup) $r39 
 ; Statement: if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(assert (= var1383 null-var46)) ; Cond: $r127 == null 
(assert true)
(define-const var3087 var1569 (makeProperty/774080656 var3913!6)) ; Statement: $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>() 
(define-const var927 Bool (optional/990395514 var1575)) ; Statement: $z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional> 
(assert true)
;(assert (setOptional/-96848152 var3087 var927)) ; Statement: virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3) 

(declare-const var3087!1 var1569)
(declare-const var927!1 Bool)
(define-const var3575 String (mappedBy/990395514 var1575)) ; Statement: $r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(define-const var1977 Bool (var903_isEmptyAnnotationValue/1929464449 var3575)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40) 
 ; Statement: if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert (= (ite var1977 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2466 String (getReferencedEntityName/448027244 (cast-from-var620-to-var1191 var1467!9))) ; Statement: $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(define-const var2660 var3570 (var3450_get/1088891777 var3056 (cast-from-String-to-var3570 var2466))) ; Statement: $r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42) 
(define-const var2961 var766 (cast-from-var3570-to-var766 var2660)) ; Statement: r130 = (org.hibernate.mapping.PersistentClass) $r43 
 ; Statement: if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy> 
(assert (not (not (= var2961 null-var766)))) ; Negate: Cond: r130 != null  
(define-const var3891 var3209 var3209-init) ; Statement: $r141 = new org.hibernate.MappingException 
(define-const var1721 String String-init) ; Statement: $r140 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1721)) ; Statement: specialinvoke $r140.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1721!1 String)
(assert (= var1721!1 ""))
(assert true)
(define-const var123 String (append/672562846 var1721!1 "Unable to find entity: ")) ; Statement: $r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ") 
(declare-const var1721!2 String)
(assert (= var1721!2 (str.++ var1721!1 "Unable to find entity: ")))
(assert true)
(define-const var922 String (getReferencedEntityName/448027244 (cast-from-var620-to-var1191 var1467!9))) ; Statement: $r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>() 
(assert true)
(define-const var1501 String (append/672562846 var123 var922)) ; Statement: $r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111) 
(declare-const var123!1 String)
(assert (= var123!1 (str.++ var123 var922)))
(assert true)
(define-const var3116 String (toString/-2075883882 var1501)) ; Statement: $r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3891 var3116)) ; Statement: specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114) 

(declare-const var3891!1 var3209)
(declare-const var3116!1 String)
(define-const var1792 var244 (cast-from-var3209-to-var244 var3891!1)) ; Statement: $r148 = (java.lang.Throwable) $r141 
 ; Statement: throw $r148 
(check-sat)
(get-model)
(get-unsat-core)
; {var620-init=([], org.hibernate.mapping.OneToOne), buildingContext/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), propertyHolder/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyHolder), var1014_getTable/190309082=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.Table), var1014_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), <init>/1232346507=([org.hibernate.mapping.OneToOne, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table, org.hibernate.mapping.PersistentClass], void), inferredData/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.cfg.PropertyData), var1790_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), setPropertyName/1593411263=([org.hibernate.mapping.OneToOne, java.lang.String], void), targetEntity/990395514=([org.hibernate.cfg.OneToOneSecondPass], org.hibernate.annotations.common.reflection.XClass), var1161_getReferenceEntityName/662888545=([org.hibernate.cfg.PropertyData, org.hibernate.annotations.common.reflection.XClass, org.hibernate.boot.spi.MetadataBuildingContext], java.lang.String), setReferencedEntityName/2141420022=([org.hibernate.mapping.ToOne, java.lang.String], void), cast-from-var620-to-var1191=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.ToOne), var1790_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var834_defineFetchingStrategy/-142832134=([org.hibernate.mapping.ToOne, org.hibernate.annotations.common.reflection.XProperty], void), cascadeOnDelete/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setCascadeDeleteEnabled/-1689722544=([org.hibernate.mapping.SimpleValue, boolean], void), cast-from-var620-to-var3226=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.SimpleValue), optional/990395514=([org.hibernate.cfg.OneToOneSecondPass], boolean), setConstrained/-1488109176=([org.hibernate.mapping.OneToOne, boolean], void), mappedBy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), var903_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), setForeignKeyType/-819589285=([org.hibernate.mapping.OneToOne, org.hibernate.type.ForeignKeyDirection], void), var3910_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3108-to-var2780=([java.lang.annotation.Annotation], javax.persistence.ForeignKey), cast-from-var3108-to-var3045=([java.lang.annotation.Annotation], javax.persistence.JoinColumn), cast-from-var3108-to-var592=([java.lang.annotation.Annotation], javax.persistence.JoinColumns), var834_bindForeignKeyNameAndDefinition/-369204472=([org.hibernate.mapping.SimpleValue, org.hibernate.annotations.common.reflection.XProperty, javax.persistence.ForeignKey, javax.persistence.JoinColumn, javax.persistence.JoinColumns, org.hibernate.boot.spi.MetadataBuildingContext], void), var2999-init=([], org.hibernate.cfg.annotations.PropertyBinder), <init>/1826378170=([org.hibernate.cfg.annotations.PropertyBinder], void), setName/1479495462=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), setProperty/407482352=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.annotations.common.reflection.XProperty], void), setValue/845331480=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.mapping.Value], void), cast-from-var620-to-var355=([org.hibernate.mapping.OneToOne], org.hibernate.mapping.Value), cascadeStrategy/990395514=([org.hibernate.cfg.OneToOneSecondPass], java.lang.String), setCascade/-631653409=([org.hibernate.cfg.annotations.PropertyBinder, java.lang.String], void), var1790_getDefaultAccess/-1367221331=([org.hibernate.cfg.PropertyData], org.hibernate.cfg.AccessType), setAccessType/-1820523972=([org.hibernate.cfg.annotations.PropertyBinder, org.hibernate.cfg.AccessType], void), cast-from-var3108-to-var46=([java.lang.annotation.Annotation], org.hibernate.annotations.LazyGroup), makeProperty/774080656=([org.hibernate.cfg.annotations.PropertyBinder], org.hibernate.mapping.Property), setOptional/-96848152=([org.hibernate.mapping.Property, boolean], void), getReferencedEntityName/448027244=([org.hibernate.mapping.ToOne], java.lang.String), var3450_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3570=([java.lang.String], java.lang.Object), cast-from-var3570-to-var766=([java.lang.Object], org.hibernate.mapping.PersistentClass), var3209-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3209-to-var244=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1527=org.hibernate.cfg.OneToOneSecondPass, var1575=r1, var3450=java.util.Map, var3056=r41, var620=org.hibernate.mapping.OneToOne, var1467=$r137, var2652=org.hibernate.boot.spi.MetadataBuildingContext, var3592=$r3, var1014=org.hibernate.cfg.PropertyHolder, var3263=$r2, var2578=org.hibernate.mapping.Table, var1923=$r6, var3141=$r4, var766=org.hibernate.mapping.PersistentClass, var2266=$r5, var1790=org.hibernate.cfg.PropertyData, var1832=$r7, var3460=r8, var3987=$r11, var2059=org.hibernate.annotations.common.reflection.XClass, var3907=$r10, var2041=$r9, var1161=org.hibernate.cfg.ToOneBinder, var2774=r12, var1191=org.hibernate.mapping.ToOne, var310=$r13, var3910=org.hibernate.annotations.common.reflection.XProperty, var3636=$r14, var834=org.hibernate.cfg.AnnotationBinder, var61=$z0, var3226=org.hibernate.mapping.SimpleValue, var566=$z1, var3037=$z17, var747=$r15, var903=org.hibernate.cfg.BinderHelper, var3906=$z2, var2559=org.hibernate.type.ForeignKeyDirection, var2459=$r128, var2931=$r16, var2412=$r30, var888=$r17, var2859=$r18, var3108=java.lang.annotation.Annotation, var2780=javax.persistence.ForeignKey, var1771=$r19, var180=$r29, var3558=$r20, var167=$r21, var3045=javax.persistence.JoinColumn, var3939=$r22, var1458=$r28, var1386=$r23, var2419=$r24, var592=javax.persistence.JoinColumns, var826=$r25, var3269=$r27, var2675=$r26, var2999=org.hibernate.cfg.annotations.PropertyBinder, var3913=$r138, var3911=$r32, var609=$r33, var355=org.hibernate.mapping.Value, var2749=$r34, var1281=$r35, var3258=org.hibernate.cfg.AccessType, var1537=$r36, var3638=$r37, var777=$r38, var46=org.hibernate.annotations.LazyGroup, var3542=$r39, var1383=$r127, var1569=org.hibernate.mapping.Property, var3087=$r126, var927=$z3, var3575=$r40, var1977=$z4, var2466=$r42, var3570=java.lang.Object, var2660=$r43, var2961=r130, var3209=org.hibernate.MappingException, var3891=$r141, var1721=$r140, var123=$r112, var922=$r111, var1501=$r113, var3116=$r114, var244=java.lang.Throwable, var1792=$r148}
; {org.hibernate.cfg.OneToOneSecondPass=var1527, r1=var1575, java.util.Map=var3450, r41=var3056, org.hibernate.mapping.OneToOne=var620, $r137=var1467, org.hibernate.boot.spi.MetadataBuildingContext=var2652, $r3=var3592, org.hibernate.cfg.PropertyHolder=var1014, $r2=var3263, org.hibernate.mapping.Table=var2578, $r6=var1923, $r4=var3141, org.hibernate.mapping.PersistentClass=var766, $r5=var2266, org.hibernate.cfg.PropertyData=var1790, $r7=var1832, r8=var3460, $r11=var3987, org.hibernate.annotations.common.reflection.XClass=var2059, $r10=var3907, $r9=var2041, org.hibernate.cfg.ToOneBinder=var1161, r12=var2774, org.hibernate.mapping.ToOne=var1191, $r13=var310, org.hibernate.annotations.common.reflection.XProperty=var3910, $r14=var3636, org.hibernate.cfg.AnnotationBinder=var834, $z0=var61, org.hibernate.mapping.SimpleValue=var3226, $z1=var566, $z17=var3037, $r15=var747, org.hibernate.cfg.BinderHelper=var903, $z2=var3906, org.hibernate.type.ForeignKeyDirection=var2559, $r128=var2459, $r16=var2931, $r30=var2412, $r17=var888, $r18=var2859, java.lang.annotation.Annotation=var3108, javax.persistence.ForeignKey=var2780, $r19=var1771, $r29=var180, $r20=var3558, $r21=var167, javax.persistence.JoinColumn=var3045, $r22=var3939, $r28=var1458, $r23=var1386, $r24=var2419, javax.persistence.JoinColumns=var592, $r25=var826, $r27=var3269, $r26=var2675, org.hibernate.cfg.annotations.PropertyBinder=var2999, $r138=var3913, $r32=var3911, $r33=var609, org.hibernate.mapping.Value=var355, $r34=var2749, $r35=var1281, org.hibernate.cfg.AccessType=var3258, $r36=var1537, $r37=var3638, $r38=var777, org.hibernate.annotations.LazyGroup=var46, $r39=var3542, $r127=var1383, org.hibernate.mapping.Property=var1569, $r126=var3087, $z3=var927, $r40=var3575, $z4=var1977, $r42=var2466, java.lang.Object=var3570, $r43=var2660, r130=var2961, org.hibernate.MappingException=var3209, $r141=var3891, $r140=var1721, $r112=var123, $r111=var922, $r113=var1501, $r114=var3116, java.lang.Throwable=var244, $r148=var1792}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.OneToOneSecondPass;	r41 := @parameter0: java.util.Map;	$r137 = new org.hibernate.mapping.OneToOne;	$r3 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r2 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r6 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.Table getTable()>();	$r4 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r5 = interfaceinvoke $r4.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	specialinvoke $r137.<org.hibernate.mapping.OneToOne: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table,org.hibernate.mapping.PersistentClass)>($r3, $r6, $r5);	$r7 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	r8 = interfaceinvoke $r7.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>(r8);	$r11 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r10 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.annotations.common.reflection.XClass targetEntity>;	$r9 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r12 = staticinvoke <org.hibernate.cfg.ToOneBinder: java.lang.String getReferenceEntityName(org.hibernate.cfg.PropertyData,org.hibernate.annotations.common.reflection.XClass,org.hibernate.boot.spi.MetadataBuildingContext)>($r11, $r10, $r9);	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setReferencedEntityName(java.lang.String)>(r12);	$r13 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r14 = interfaceinvoke $r13.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	staticinvoke <org.hibernate.cfg.AnnotationBinder: void defineFetchingStrategy(org.hibernate.mapping.ToOne,org.hibernate.annotations.common.reflection.XProperty)>($r137, $r14);	$z0 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean cascadeOnDelete>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setCascadeDeleteEnabled(boolean)>($z0);	$z1 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	if $z1 != 0 goto $z17 = 0;	$z17 = 1;	goto [?= virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17)];	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>($z17);	$r15 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r15);	if $z2 != 0 goto $r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	$r128 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection FROM_PARENT>;	virtualinvoke $r137.<org.hibernate.mapping.OneToOne: void setForeignKeyType(org.hibernate.type.ForeignKeyDirection)>($r128);	$r16 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r30 = interfaceinvoke $r16.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r17 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r18 = interfaceinvoke $r17.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r19 = interfaceinvoke $r18.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/ForeignKey;");	$r29 = (javax.persistence.ForeignKey) $r19;	$r20 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r21 = interfaceinvoke $r20.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r22 = interfaceinvoke $r21.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumn;");	$r28 = (javax.persistence.JoinColumn) $r22;	$r23 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r24 = interfaceinvoke $r23.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r25 = interfaceinvoke $r24.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/JoinColumns;");	$r27 = (javax.persistence.JoinColumns) $r25;	$r26 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	staticinvoke <org.hibernate.cfg.AnnotationBinder: void bindForeignKeyNameAndDefinition(org.hibernate.mapping.SimpleValue,org.hibernate.annotations.common.reflection.XProperty,javax.persistence.ForeignKey,javax.persistence.JoinColumn,javax.persistence.JoinColumns,org.hibernate.boot.spi.MetadataBuildingContext)>($r137, $r30, $r29, $r28, $r27, $r26);	$r138 = new org.hibernate.cfg.annotations.PropertyBinder;	specialinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void <init>()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setName(java.lang.String)>(r8);	$r32 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r33 = interfaceinvoke $r32.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setProperty(org.hibernate.annotations.common.reflection.XProperty)>($r33);	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setValue(org.hibernate.mapping.Value)>($r137);	$r34 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String cascadeStrategy>;	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setCascade(java.lang.String)>($r34);	$r35 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r36 = interfaceinvoke $r35.<org.hibernate.cfg.PropertyData: org.hibernate.cfg.AccessType getDefaultAccess()>();	virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: void setAccessType(org.hibernate.cfg.AccessType)>($r36);	$r37 = r1.<org.hibernate.cfg.OneToOneSecondPass: org.hibernate.cfg.PropertyData inferredData>;	$r38 = interfaceinvoke $r37.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r39 = interfaceinvoke $r38.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/LazyGroup;");	$r127 = (org.hibernate.annotations.LazyGroup) $r39;	if $r127 == null goto $r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$r126 = virtualinvoke $r138.<org.hibernate.cfg.annotations.PropertyBinder: org.hibernate.mapping.Property makeProperty()>();	$z3 = r1.<org.hibernate.cfg.OneToOneSecondPass: boolean optional>;	virtualinvoke $r126.<org.hibernate.mapping.Property: void setOptional(boolean)>($z3);	$r40 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r40);	if $z4 == 0 goto $r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r42 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r43 = interfaceinvoke r41.<java.util.Map: java.lang.Object get(java.lang.Object)>($r42);	r130 = (org.hibernate.mapping.PersistentClass) $r43;	if r130 != null goto $r44 = r1.<org.hibernate.cfg.OneToOneSecondPass: java.lang.String mappedBy>;	$r141 = new org.hibernate.MappingException;	$r140 = new java.lang.StringBuilder;	specialinvoke $r140.<java.lang.StringBuilder: void <init>()>();	$r112 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find entity: ");	$r111 = virtualinvoke $r137.<org.hibernate.mapping.OneToOne: java.lang.String getReferencedEntityName()>();	$r113 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r111);	$r114 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r141.<org.hibernate.MappingException: void <init>(java.lang.String)>($r114);	$r148 = (java.lang.Throwable) $r141;	throw $r148
;block_num 8