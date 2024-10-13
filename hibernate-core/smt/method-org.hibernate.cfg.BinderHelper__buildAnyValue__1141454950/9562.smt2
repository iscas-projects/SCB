(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3810 0)
(declare-sort var1890 0)
(declare-sort var3948 0)
(declare-sort var2540 0)
(declare-sort var1977 0)
(declare-sort var2488 0)
(declare-sort var3585 0)
(declare-sort var966 0)
(declare-sort var3641 0)
(declare-sort var654 0)
(declare-sort var3261 0)
(declare-sort var834 0)
(declare-sort var1553 0)
(declare-sort var2382 0)
(declare-sort var2211 0)
(declare-sort var1053 0)
(declare-sort var2124 0)
(declare-sort var1340 0)
(declare-sort var416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2382!class ClassObject)
(declare-fun var3641-init () var3641)
(declare-fun getTable/1575790255 (var3261) var654)
(declare-fun cast-from-var1890-to-var3261 (var1890) var3261)
(declare-fun <init>/1385600383 (var3641 var966 var654) void)
(declare-fun var2540_getProperty/2125427526 (var2540) var834)
(declare-fun var834_getAnnotation/894663943 (var834 ClassObject) var1553)
(declare-fun cast-from-var1553-to-var2382 (var1553) var2382)
(declare-fun setLazy/712433039 (var3641 Bool) void)
(declare-fun cast-from-var834-to-var2211 (var834) var2211)
(declare-fun var1053_bindAnyMetaDefs/1748549233 (var2211 var966) void)
(declare-fun var2124-init () var2124)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2488_getPath/2047744202 (var2488) String)
(declare-fun var2540_getPropertyName/-814157935 (var2540) String)
(declare-fun var1340_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var2124 String) void)
(declare-fun cast-from-var2124-to-var416 (var2124) var416)
(declare-const null-String String)
(declare-const null-__Array__Int__var1890__ (Array Int var1890))
(declare-const null-var3948 var3948)
(declare-const null-var2540 var2540)
(declare-const null-Bool Bool)
(declare-const null-var1977 var1977)
(declare-const null-var2488 var2488)
(declare-const null-var3585 var3585)
(declare-const null-var966 var966)
(declare-const null-var2382 var2382)
(declare-const var1573 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1573 null-String)))
(declare-const var3971 (Array Int var1890)) ; Statement: r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var3971 null-__Array__Int__var1890__)))
(declare-const var3771 var3948) ; Statement: r26 := @parameter2: javax.persistence.Column 
(assert (not (= var3771 null-var3948)))
(declare-const var3328 var2540) ; Statement: r5 := @parameter3: org.hibernate.cfg.PropertyData 
(assert (not (= var3328 null-var2540)))
(declare-const var1174 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1174 null-Bool)))
(declare-const var3814 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var3814 null-Bool)))
(declare-const var1710 var1977) ; Statement: r27 := @parameter6: org.hibernate.cfg.annotations.Nullability 
(assert (not (= var1710 null-var1977)))
(declare-const var2059 var2488) ; Statement: r12 := @parameter7: org.hibernate.cfg.PropertyHolder 
(assert (not (= var2059 null-var2488)))
(declare-const var3722 var3585) ; Statement: r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var3722 null-var3585)))
(declare-const var3022 Bool) ; Statement: z3 := @parameter9: boolean 
(assert (not (= var3022 null-Bool)))
(declare-const var774 var966) ; Statement: r1 := @parameter10: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var774 null-var966)))
(define-const var916 var3641 var3641-init) ; Statement: $r62 = new org.hibernate.mapping.Any 
(define-const var2359 var1890 (select var3971 0)) ; Statement: $r3 = r2[0] 
(assert true)
(define-const var104 var654 (getTable/1575790255 (cast-from-var1890-to-var3261 var2359))) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (<init>/1385600383 var916 var774 var104)) ; Statement: specialinvoke $r62.<org.hibernate.mapping.Any: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r1, $r4) 

(declare-const var916!1 var3641)
(declare-const var774!1 var966)
(declare-const var104!1 var654)
(define-const var180 var834 (var2540_getProperty/2125427526 var3328)) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var1635 var1553 (var834_getAnnotation/894663943 var180 var2382!class)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AnyMetaDef;") 
(define-const var1205 var2382 (cast-from-var1553-to-var2382 var1635)) ; Statement: r52 = (org.hibernate.annotations.AnyMetaDef) $r7 
(assert true)
;(assert (setLazy/712433039 var916!1 var3814)) ; Statement: virtualinvoke $r62.<org.hibernate.mapping.Any: void setLazy(boolean)>(z0) 

(declare-const var916!2 var3641)
(declare-const var3814!1 Bool)
 ; Statement: if r52 == null goto $r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (= var1205 null-var2382))) ; Negate: Cond: r52 == null  
(define-const var1671 var834 (var2540_getProperty/2125427526 var3328)) ; Statement: $r42 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var3558 var2211 (cast-from-var834-to-var2211 var1671)) ; Statement: $r70 = (org.hibernate.annotations.common.reflection.XAnnotatedElement) $r42 
;(assert (var1053_bindAnyMetaDefs/1748549233 var3558 var774!1)) ; Statement: staticinvoke <org.hibernate.cfg.BinderHelper: void bindAnyMetaDefs(org.hibernate.annotations.common.reflection.XAnnotatedElement,org.hibernate.boot.spi.MetadataBuildingContext)>($r70, r1) 

(declare-const var3558!1 var2211)
(declare-const var774!2 var966)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r52 == null goto $r68 = new org.hibernate.AnnotationException 
(assert (= var1205 null-var2382)) ; Cond: r52 == null 
(define-const var3479 var2124 var2124-init) ; Statement: $r68 = new org.hibernate.AnnotationException 
(define-const var1837 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1837)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1837!1 String)
(assert (= var1837!1 ""))
(assert true)
(define-const var2173 String (append/672562846 var1837!1 "Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ")) ; Statement: $r16 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ") 
(declare-const var1837!2 String)
(assert (= var1837!2 (str.++ var1837!1 "Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ")))
(define-const var639 String (var2488_getPath/2047744202 var2059)) ; Statement: $r14 = interfaceinvoke r12.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var2625 String (var2540_getPropertyName/-814157935 var3328)) ; Statement: $r13 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var2714 String (var1340_qualify/-1563731603 var639 var2625)) ; Statement: $r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r14, $r13) 
(assert true)
(define-const var3926 String (append/672562846 var2173 var2714)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2173!1 String)
(assert (= var2173!1 (str.++ var2173 var2714)))
(assert true)
(define-const var812 String (toString/-2075883882 var3926)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3479 var812)) ; Statement: specialinvoke $r68.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r18) 

(declare-const var3479!1 var2124)
(declare-const var812!1 String)
(define-const var2580 var416 (cast-from-var2124-to-var416 var3479!1)) ; Statement: $r73 = (java.lang.Throwable) $r68 
 ; Statement: throw $r73 
(check-sat)
(get-model)
(get-unsat-core)
; {var3641-init=([], org.hibernate.mapping.Any), getTable/1575790255=([org.hibernate.cfg.Ejb3Column], org.hibernate.mapping.Table), cast-from-var1890-to-var3261=([org.hibernate.cfg.Ejb3JoinColumn], org.hibernate.cfg.Ejb3Column), <init>/1385600383=([org.hibernate.mapping.Any, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table], void), var2540_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var834_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var1553-to-var2382=([java.lang.annotation.Annotation], org.hibernate.annotations.AnyMetaDef), setLazy/712433039=([org.hibernate.mapping.Any, boolean], void), cast-from-var834-to-var2211=([org.hibernate.annotations.common.reflection.XProperty], org.hibernate.annotations.common.reflection.XAnnotatedElement), var1053_bindAnyMetaDefs/1748549233=([org.hibernate.annotations.common.reflection.XAnnotatedElement, org.hibernate.boot.spi.MetadataBuildingContext], void), var2124-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2488_getPath/2047744202=([org.hibernate.cfg.PropertyHolder], java.lang.String), var2540_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), var1340_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2124-to-var416=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1573=r8, var3810=null_type, var1890=org.hibernate.cfg.Ejb3JoinColumn, var3971=r2, var3948=javax.persistence.Column, var3771=r26, var2540=org.hibernate.cfg.PropertyData, var3328=r5, var1174=z2, var3814=z0, var1977=org.hibernate.cfg.annotations.Nullability, var1710=r27, var2488=org.hibernate.cfg.PropertyHolder, var2059=r12, var3585=org.hibernate.cfg.annotations.EntityBinder, var3722=r28, var3022=z3, var966=org.hibernate.boot.spi.MetadataBuildingContext, var774=r1, var3641=org.hibernate.mapping.Any, var916=$r62, var2359=$r3, var654=org.hibernate.mapping.Table, var3261=org.hibernate.cfg.Ejb3Column, var104=$r4, var834=org.hibernate.annotations.common.reflection.XProperty, var180=$r6, var1553=java.lang.annotation.Annotation, var2382=org.hibernate.annotations.AnyMetaDef, var1635=$r7, var1205=r52, var1671=$r42, var2211=org.hibernate.annotations.common.reflection.XAnnotatedElement, var3558=$r70, var1053=org.hibernate.cfg.BinderHelper, var2124=org.hibernate.AnnotationException, var3479=$r68, var1837=$r67, var2173=$r16, var639=$r14, var2625=$r13, var1340=org.hibernate.internal.util.StringHelper, var2714=$r15, var3926=$r17, var812=$r18, var416=java.lang.Throwable, var2580=$r73}
; {r8=var1573, null_type=var3810, org.hibernate.cfg.Ejb3JoinColumn=var1890, r2=var3971, javax.persistence.Column=var3948, r26=var3771, org.hibernate.cfg.PropertyData=var2540, r5=var3328, z2=var1174, z0=var3814, org.hibernate.cfg.annotations.Nullability=var1977, r27=var1710, org.hibernate.cfg.PropertyHolder=var2488, r12=var2059, org.hibernate.cfg.annotations.EntityBinder=var3585, r28=var3722, z3=var3022, org.hibernate.boot.spi.MetadataBuildingContext=var966, r1=var774, org.hibernate.mapping.Any=var3641, $r62=var916, $r3=var2359, org.hibernate.mapping.Table=var654, org.hibernate.cfg.Ejb3Column=var3261, $r4=var104, org.hibernate.annotations.common.reflection.XProperty=var834, $r6=var180, java.lang.annotation.Annotation=var1553, org.hibernate.annotations.AnyMetaDef=var2382, $r7=var1635, r52=var1205, $r42=var1671, org.hibernate.annotations.common.reflection.XAnnotatedElement=var2211, $r70=var3558, org.hibernate.cfg.BinderHelper=var1053, org.hibernate.AnnotationException=var2124, $r68=var3479, $r67=var1837, $r16=var2173, $r14=var639, $r13=var2625, org.hibernate.internal.util.StringHelper=var1340, $r15=var2714, $r17=var3926, $r18=var812, java.lang.Throwable=var416, $r73=var2580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	r26 := @parameter2: javax.persistence.Column;	r5 := @parameter3: org.hibernate.cfg.PropertyData;	z2 := @parameter4: boolean;	z0 := @parameter5: boolean;	r27 := @parameter6: org.hibernate.cfg.annotations.Nullability;	r12 := @parameter7: org.hibernate.cfg.PropertyHolder;	r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder;	z3 := @parameter9: boolean;	r1 := @parameter10: org.hibernate.boot.spi.MetadataBuildingContext;	$r62 = new org.hibernate.mapping.Any;	$r3 = r2[0];	$r4 = virtualinvoke $r3.<org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.mapping.Table getTable()>();	specialinvoke $r62.<org.hibernate.mapping.Any: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r1, $r4);	$r6 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r7 = interfaceinvoke $r6.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AnyMetaDef;");	r52 = (org.hibernate.annotations.AnyMetaDef) $r7;	virtualinvoke $r62.<org.hibernate.mapping.Any: void setLazy(boolean)>(z0);	if r52 == null goto $r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r42 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r70 = (org.hibernate.annotations.common.reflection.XAnnotatedElement) $r42;	staticinvoke <org.hibernate.cfg.BinderHelper: void bindAnyMetaDefs(org.hibernate.annotations.common.reflection.XAnnotatedElement,org.hibernate.boot.spi.MetadataBuildingContext)>($r70, r1);	goto [?= (branch)];	if r52 == null goto $r68 = new org.hibernate.AnnotationException;	$r68 = new org.hibernate.AnnotationException;	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ");	$r14 = interfaceinvoke r12.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r13 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r14, $r13);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r68.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r18);	$r73 = (java.lang.Throwable) $r68;	throw $r73
;block_num 4