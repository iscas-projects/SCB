(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var482 0)
(declare-sort var215 0)
(declare-sort var3918 0)
(declare-sort var430 0)
(declare-sort var3854 0)
(declare-sort var2948 0)
(declare-sort var3157 0)
(declare-sort var3255 0)
(declare-sort var142 0)
(declare-sort var2359 0)
(declare-sort var2665 0)
(declare-sort var2660 0)
(declare-sort var2004 0)
(declare-sort var922 0)
(declare-sort var2484 0)
(declare-sort var2882 0)
(declare-sort var1276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3255!class ClassObject)
(declare-fun propertyHolder/396458446 (var482) var430)
(declare-fun var430_getJoinTable/-1350531154 (var430 var215) var3854)
(declare-fun var3854_inverseJoinColumns/1767668714 (var3854) (Array Int var2948))
(declare-fun var215_getAnnotation/894663943 (var215 ClassObject) var3157)
(declare-fun cast-from-var3157-to-var3255 (var3157) var3255)
(declare-fun entityBinder/396458446 (var482) var142)
(declare-fun getSecondaryTables/2038683949 (var142) var2359)
(declare-fun var3918_getPropertyName/-814157935 (var3918) String)
(declare-fun buildingContext/396458446 (var482) var2665)
(declare-fun var2660_buildJoinColumns/584245343 ((Array Int var2948) var3255 String var2359 var430 String var2665) (Array Int var2660))
(declare-fun var3854_name/-669880034 (var3854) String)
(declare-fun var922_isEmpty/1672864985 (String) Bool)
(declare-fun var2484-init () var2484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2882_getPath/37340513 (var430 var3918) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var2484 String) void)
(declare-fun cast-from-var2484-to-var1276 (var2484) var1276)
(declare-const null-var482 var482)
(declare-const null-var215 var215)
(declare-const null-var3918 var3918)
(declare-const null-var3854 var3854)
(declare-const null-String String)
(declare-const var253 var482) ; Statement: r0 := @this: org.hibernate.cfg.ColumnsBuilder 
(assert (not (= var253 null-var482)))
(declare-const var3085 var215) ; Statement: r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var3085 null-var215)))
(declare-const var785 var3918) ; Statement: r8 := @parameter1: org.hibernate.cfg.PropertyData 
(assert (not (= var785 null-var3918)))
(define-const var1267 var430 (propertyHolder/396458446 var253)) ; Statement: $r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var658 var3854 (var430_getJoinTable/-1350531154 var1267 var3085)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: javax.persistence.JoinTable getJoinTable(org.hibernate.annotations.common.reflection.XProperty)>(r1) 
 ; Statement: if r3 == null goto $r4 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/OneToOne;") 
(assert (not (= var658 null-var3854))) ; Negate: Cond: r3 == null  
(define-const var178 (Array Int var2948) (var3854_inverseJoinColumns/1767668714 var658)) ; Statement: $r21 = interfaceinvoke r3.<javax.persistence.JoinTable: javax.persistence.JoinColumn[] inverseJoinColumns()>() 
(define-const var2616 var3157 (var215_getAnnotation/894663943 var3085 var3255!class)) ; Statement: $r14 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;") 
(define-const var329 var3255 (cast-from-var3157-to-var3255 var2616)) ; Statement: $r20 = (org.hibernate.annotations.Comment) $r14 
(define-const var2605 var142 (entityBinder/396458446 var253)) ; Statement: $r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder> 
(assert true)
(define-const var3031 var2359 (getSecondaryTables/2038683949 var2605)) ; Statement: $r19 = virtualinvoke $r15.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>() 
(define-const var3356 var430 (propertyHolder/396458446 var253)) ; Statement: $r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var665 String (var3918_getPropertyName/-814157935 var785)) ; Statement: $r18 = interfaceinvoke r8.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var3223 var2665 (buildingContext/396458446 var253)) ; Statement: $r17 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var227 (Array Int var2660) (var2660_buildJoinColumns/584245343 var178 var329 null-String var3031 var3356 var665 var3223)) ; Statement: r30 = staticinvoke <org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.cfg.Ejb3JoinColumn[] buildJoinColumns(javax.persistence.JoinColumn[],org.hibernate.annotations.Comment,java.lang.String,java.util.Map,org.hibernate.cfg.PropertyHolder,java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r21, $r20, null, $r19, $r16, $r18, $r17) 
(define-const var1205 String (var3854_name/-669880034 var658)) ; Statement: $r22 = interfaceinvoke r3.<javax.persistence.JoinTable: java.lang.String name()>() 
(define-const var1214 Bool (var922_isEmpty/1672864985 var1205)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r22) 
 ; Statement: if $z0 == 0 goto return r30 
(assert (not (= (ite var1214 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2499 var2484 var2484-init) ; Statement: $r33 = new org.hibernate.AnnotationException 
(define-const var1117 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1117)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1117!1 String)
(assert (= var1117!1 ""))
(assert true)
(define-const var3009 String (append/672562846 var1117!1 "JoinTable.name() on a @ToOne association has to be explicit: ")) ; Statement: $r27 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinTable.name() on a @ToOne association has to be explicit: ") 
(declare-const var1117!2 String)
(assert (= var1117!2 (str.++ var1117!1 "JoinTable.name() on a @ToOne association has to be explicit: ")))
(define-const var2996 var430 (propertyHolder/396458446 var253)) ; Statement: $r25 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var870 String (var2882_getPath/37340513 var2996 var785)) ; Statement: $r26 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>($r25, r8) 
(assert true)
(define-const var420 String (append/672562846 var3009 var870)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3009!1 String)
(assert (= var3009!1 (str.++ var3009 var870)))
(assert true)
(define-const var895 String (toString/-2075883882 var420)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2499 var895)) ; Statement: specialinvoke $r33.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r29) 

(declare-const var2499!1 var2484)
(declare-const var895!1 String)
(define-const var3995 var1276 (cast-from-var2484-to-var1276 var2499!1)) ; Statement: $r34 = (java.lang.Throwable) $r33 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyHolder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.PropertyHolder), var430_getJoinTable/-1350531154=([org.hibernate.cfg.PropertyHolder, org.hibernate.annotations.common.reflection.XProperty], javax.persistence.JoinTable), var3854_inverseJoinColumns/1767668714=([javax.persistence.JoinTable], javax.persistence.JoinColumn[]), var215_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3157-to-var3255=([java.lang.annotation.Annotation], org.hibernate.annotations.Comment), entityBinder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.annotations.EntityBinder), getSecondaryTables/2038683949=([org.hibernate.cfg.annotations.EntityBinder], java.util.Map), var3918_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), buildingContext/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.boot.spi.MetadataBuildingContext), var2660_buildJoinColumns/584245343=([javax.persistence.JoinColumn[], org.hibernate.annotations.Comment, java.lang.String, java.util.Map, org.hibernate.cfg.PropertyHolder, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.cfg.Ejb3JoinColumn[]), var3854_name/-669880034=([javax.persistence.JoinTable], java.lang.String), var922_isEmpty/1672864985=([java.lang.String], boolean), var2484-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2882_getPath/37340513=([org.hibernate.cfg.PropertyHolder, org.hibernate.cfg.PropertyData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2484-to-var1276=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var482=org.hibernate.cfg.ColumnsBuilder, var253=r0, var215=org.hibernate.annotations.common.reflection.XProperty, var3085=r1, var3918=org.hibernate.cfg.PropertyData, var785=r8, var430=org.hibernate.cfg.PropertyHolder, var1267=$r2, var3854=javax.persistence.JoinTable, var658=r3, var2948=javax.persistence.JoinColumn, var178=$r21, var3157=java.lang.annotation.Annotation, var3255=org.hibernate.annotations.Comment, var2616=$r14, var329=$r20, var142=org.hibernate.cfg.annotations.EntityBinder, var2605=$r15, var2359=java.util.Map, var3031=$r19, var3356=$r16, var665=$r18, var2665=org.hibernate.boot.spi.MetadataBuildingContext, var3223=$r17, var2660=org.hibernate.cfg.Ejb3JoinColumn, var2004=null_type, var227=r30, var1205=$r22, var922=org.hibernate.internal.util.StringHelper, var1214=$z0, var2484=org.hibernate.AnnotationException, var2499=$r33, var1117=$r32, var3009=$r27, var2996=$r25, var2882=org.hibernate.cfg.BinderHelper, var870=$r26, var420=$r28, var895=$r29, var1276=java.lang.Throwable, var3995=$r34}
; {org.hibernate.cfg.ColumnsBuilder=var482, r0=var253, org.hibernate.annotations.common.reflection.XProperty=var215, r1=var3085, org.hibernate.cfg.PropertyData=var3918, r8=var785, org.hibernate.cfg.PropertyHolder=var430, $r2=var1267, javax.persistence.JoinTable=var3854, r3=var658, javax.persistence.JoinColumn=var2948, $r21=var178, java.lang.annotation.Annotation=var3157, org.hibernate.annotations.Comment=var3255, $r14=var2616, $r20=var329, org.hibernate.cfg.annotations.EntityBinder=var142, $r15=var2605, java.util.Map=var2359, $r19=var3031, $r16=var3356, $r18=var665, org.hibernate.boot.spi.MetadataBuildingContext=var2665, $r17=var3223, org.hibernate.cfg.Ejb3JoinColumn=var2660, null_type=var2004, r30=var227, $r22=var1205, org.hibernate.internal.util.StringHelper=var922, $z0=var1214, org.hibernate.AnnotationException=var2484, $r33=var2499, $r32=var1117, $r27=var3009, $r25=var2996, org.hibernate.cfg.BinderHelper=var2882, $r26=var870, $r28=var420, $r29=var895, java.lang.Throwable=var1276, $r34=var3995}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ColumnsBuilder;	r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty;	r8 := @parameter1: org.hibernate.cfg.PropertyData;	$r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	r3 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: javax.persistence.JoinTable getJoinTable(org.hibernate.annotations.common.reflection.XProperty)>(r1);	if r3 == null goto $r4 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/OneToOne;");	$r21 = interfaceinvoke r3.<javax.persistence.JoinTable: javax.persistence.JoinColumn[] inverseJoinColumns()>();	$r14 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;");	$r20 = (org.hibernate.annotations.Comment) $r14;	$r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder>;	$r19 = virtualinvoke $r15.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>();	$r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r18 = interfaceinvoke r8.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r17 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r30 = staticinvoke <org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.cfg.Ejb3JoinColumn[] buildJoinColumns(javax.persistence.JoinColumn[],org.hibernate.annotations.Comment,java.lang.String,java.util.Map,org.hibernate.cfg.PropertyHolder,java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r21, $r20, null, $r19, $r16, $r18, $r17);	$r22 = interfaceinvoke r3.<javax.persistence.JoinTable: java.lang.String name()>();	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r22);	if $z0 == 0 goto return r30;	$r33 = new org.hibernate.AnnotationException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinTable.name() on a @ToOne association has to be explicit: ");	$r25 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r26 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>($r25, r8);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r29);	$r34 = (java.lang.Throwable) $r33;	throw $r34
;block_num 3