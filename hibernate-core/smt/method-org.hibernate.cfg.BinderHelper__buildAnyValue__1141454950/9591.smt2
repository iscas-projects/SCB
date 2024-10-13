(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var698 0)
(declare-sort var1631 0)
(declare-sort var84 0)
(declare-sort var1381 0)
(declare-sort var823 0)
(declare-sort var1874 0)
(declare-sort var3300 0)
(declare-sort var2257 0)
(declare-sort var3468 0)
(declare-sort var1734 0)
(declare-sort var1893 0)
(declare-sort var3074 0)
(declare-sort var3843 0)
(declare-sort var3576 0)
(declare-sort var695 0)
(declare-sort var2210 0)
(declare-sort var3067 0)
(declare-sort var3094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3576!class ClassObject)
(declare-fun var3468-init () var3468)
(declare-fun getTable/1575790255 (var1893) var1734)
(declare-fun cast-from-var1631-to-var1893 (var1631) var1893)
(declare-fun <init>/1385600383 (var3468 var2257 var1734) void)
(declare-fun var1381_getProperty/2125427526 (var1381) var3074)
(declare-fun var3074_getAnnotation/894663943 (var3074 ClassObject) var3843)
(declare-fun cast-from-var3843-to-var3576 (var3843) var3576)
(declare-fun setLazy/712433039 (var3468 Bool) void)
(declare-fun var2257_getMetadataCollector/-129185252 (var2257) var695)
(declare-fun var695_getAnyMetaDef/-867174015 (var695 String) var3576)
(declare-fun var2210-init () var2210)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1874_getPath/2047744202 (var1874) String)
(declare-fun var1381_getPropertyName/-814157935 (var1381) String)
(declare-fun var3067_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var2210 String) void)
(declare-fun cast-from-var2210-to-var3094 (var2210) var3094)
(declare-const null-String String)
(declare-const null-__Array__Int__var1631__ (Array Int var1631))
(declare-const null-var84 var84)
(declare-const null-var1381 var1381)
(declare-const null-Bool Bool)
(declare-const null-var823 var823)
(declare-const null-var1874 var1874)
(declare-const null-var3300 var3300)
(declare-const null-var2257 var2257)
(declare-const null-var3576 var3576)
(declare-const var495 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var495 null-String)))
(declare-const var3839 (Array Int var1631)) ; Statement: r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var3839 null-__Array__Int__var1631__)))
(declare-const var366 var84) ; Statement: r26 := @parameter2: javax.persistence.Column 
(assert (not (= var366 null-var84)))
(declare-const var804 var1381) ; Statement: r5 := @parameter3: org.hibernate.cfg.PropertyData 
(assert (not (= var804 null-var1381)))
(declare-const var1761 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1761 null-Bool)))
(declare-const var1881 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var1881 null-Bool)))
(declare-const var1164 var823) ; Statement: r27 := @parameter6: org.hibernate.cfg.annotations.Nullability 
(assert (not (= var1164 null-var823)))
(declare-const var912 var1874) ; Statement: r12 := @parameter7: org.hibernate.cfg.PropertyHolder 
(assert (not (= var912 null-var1874)))
(declare-const var1458 var3300) ; Statement: r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1458 null-var3300)))
(declare-const var2876 Bool) ; Statement: z3 := @parameter9: boolean 
(assert (not (= var2876 null-Bool)))
(declare-const var457 var2257) ; Statement: r1 := @parameter10: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var457 null-var2257)))
(define-const var2388 var3468 var3468-init) ; Statement: $r62 = new org.hibernate.mapping.Any 
(define-const var39 var1631 (select var3839 0)) ; Statement: $r3 = r2[0] 
(assert true)
(define-const var2543 var1734 (getTable/1575790255 (cast-from-var1631-to-var1893 var39))) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (<init>/1385600383 var2388 var457 var2543)) ; Statement: specialinvoke $r62.<org.hibernate.mapping.Any: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r1, $r4) 

(declare-const var2388!1 var3468)
(declare-const var457!1 var2257)
(declare-const var2543!1 var1734)
(define-const var3613 var3074 (var1381_getProperty/2125427526 var804)) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var1222 var3843 (var3074_getAnnotation/894663943 var3613 var3576!class)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AnyMetaDef;") 
(define-const var399 var3576 (cast-from-var3843-to-var3576 var1222)) ; Statement: r52 = (org.hibernate.annotations.AnyMetaDef) $r7 
(assert true)
;(assert (setLazy/712433039 var2388!1 var1881)) ; Statement: virtualinvoke $r62.<org.hibernate.mapping.Any: void setLazy(boolean)>(z0) 

(declare-const var2388!2 var3468)
(declare-const var1881!1 Bool)
 ; Statement: if r52 == null goto $r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (= var399 null-var3576)) ; Cond: r52 == null 
(define-const var2567 var695 (var2257_getMetadataCollector/-129185252 var457!1)) ; Statement: $r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var399!1 var3576 (var695_getAnyMetaDef/-867174015 var2567 var495)) ; Statement: r52 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.annotations.AnyMetaDef getAnyMetaDef(java.lang.String)>(r8) 
(assert true) ; Non Conditional
 ; Statement: if r52 == null goto $r68 = new org.hibernate.AnnotationException 
(assert (= var399!1 null-var3576)) ; Cond: r52 == null 
(define-const var1808 var2210 var2210-init) ; Statement: $r68 = new org.hibernate.AnnotationException 
(define-const var2572 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2572)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2572!1 String)
(assert (= var2572!1 ""))
(assert true)
(define-const var3944 String (append/672562846 var2572!1 "Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ")) ; Statement: $r16 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ") 
(declare-const var2572!2 String)
(assert (= var2572!2 (str.++ var2572!1 "Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ")))
(define-const var3484 String (var1874_getPath/2047744202 var912)) ; Statement: $r14 = interfaceinvoke r12.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>() 
(define-const var2346 String (var1381_getPropertyName/-814157935 var804)) ; Statement: $r13 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var1262 String (var3067_qualify/-1563731603 var3484 var2346)) ; Statement: $r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r14, $r13) 
(assert true)
(define-const var138 String (append/672562846 var3944 var1262)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3944!1 String)
(assert (= var3944!1 (str.++ var3944 var1262)))
(assert true)
(define-const var79 String (toString/-2075883882 var138)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1808 var79)) ; Statement: specialinvoke $r68.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r18) 

(declare-const var1808!1 var2210)
(declare-const var79!1 String)
(define-const var477 var3094 (cast-from-var2210-to-var3094 var1808!1)) ; Statement: $r73 = (java.lang.Throwable) $r68 
 ; Statement: throw $r73 
(check-sat)
(get-model)
(get-unsat-core)
; {var3468-init=([], org.hibernate.mapping.Any), getTable/1575790255=([org.hibernate.cfg.Ejb3Column], org.hibernate.mapping.Table), cast-from-var1631-to-var1893=([org.hibernate.cfg.Ejb3JoinColumn], org.hibernate.cfg.Ejb3Column), <init>/1385600383=([org.hibernate.mapping.Any, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table], void), var1381_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var3074_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3843-to-var3576=([java.lang.annotation.Annotation], org.hibernate.annotations.AnyMetaDef), setLazy/712433039=([org.hibernate.mapping.Any, boolean], void), var2257_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), var695_getAnyMetaDef/-867174015=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.annotations.AnyMetaDef), var2210-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1874_getPath/2047744202=([org.hibernate.cfg.PropertyHolder], java.lang.String), var1381_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), var3067_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2210-to-var3094=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var495=r8, var698=null_type, var1631=org.hibernate.cfg.Ejb3JoinColumn, var3839=r2, var84=javax.persistence.Column, var366=r26, var1381=org.hibernate.cfg.PropertyData, var804=r5, var1761=z2, var1881=z0, var823=org.hibernate.cfg.annotations.Nullability, var1164=r27, var1874=org.hibernate.cfg.PropertyHolder, var912=r12, var3300=org.hibernate.cfg.annotations.EntityBinder, var1458=r28, var2876=z3, var2257=org.hibernate.boot.spi.MetadataBuildingContext, var457=r1, var3468=org.hibernate.mapping.Any, var2388=$r62, var39=$r3, var1734=org.hibernate.mapping.Table, var1893=org.hibernate.cfg.Ejb3Column, var2543=$r4, var3074=org.hibernate.annotations.common.reflection.XProperty, var3613=$r6, var3843=java.lang.annotation.Annotation, var3576=org.hibernate.annotations.AnyMetaDef, var1222=$r7, var399=r52, var695=org.hibernate.boot.spi.InFlightMetadataCollector, var2567=$r9, var2210=org.hibernate.AnnotationException, var1808=$r68, var2572=$r67, var3944=$r16, var3484=$r14, var2346=$r13, var3067=org.hibernate.internal.util.StringHelper, var1262=$r15, var138=$r17, var79=$r18, var3094=java.lang.Throwable, var477=$r73}
; {r8=var495, null_type=var698, org.hibernate.cfg.Ejb3JoinColumn=var1631, r2=var3839, javax.persistence.Column=var84, r26=var366, org.hibernate.cfg.PropertyData=var1381, r5=var804, z2=var1761, z0=var1881, org.hibernate.cfg.annotations.Nullability=var823, r27=var1164, org.hibernate.cfg.PropertyHolder=var1874, r12=var912, org.hibernate.cfg.annotations.EntityBinder=var3300, r28=var1458, z3=var2876, org.hibernate.boot.spi.MetadataBuildingContext=var2257, r1=var457, org.hibernate.mapping.Any=var3468, $r62=var2388, $r3=var39, org.hibernate.mapping.Table=var1734, org.hibernate.cfg.Ejb3Column=var1893, $r4=var2543, org.hibernate.annotations.common.reflection.XProperty=var3074, $r6=var3613, java.lang.annotation.Annotation=var3843, org.hibernate.annotations.AnyMetaDef=var3576, $r7=var1222, r52=var399, org.hibernate.boot.spi.InFlightMetadataCollector=var695, $r9=var2567, org.hibernate.AnnotationException=var2210, $r68=var1808, $r67=var2572, $r16=var3944, $r14=var3484, $r13=var2346, org.hibernate.internal.util.StringHelper=var3067, $r15=var1262, $r17=var138, $r18=var79, java.lang.Throwable=var3094, $r73=var477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	r26 := @parameter2: javax.persistence.Column;	r5 := @parameter3: org.hibernate.cfg.PropertyData;	z2 := @parameter4: boolean;	z0 := @parameter5: boolean;	r27 := @parameter6: org.hibernate.cfg.annotations.Nullability;	r12 := @parameter7: org.hibernate.cfg.PropertyHolder;	r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder;	z3 := @parameter9: boolean;	r1 := @parameter10: org.hibernate.boot.spi.MetadataBuildingContext;	$r62 = new org.hibernate.mapping.Any;	$r3 = r2[0];	$r4 = virtualinvoke $r3.<org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.mapping.Table getTable()>();	specialinvoke $r62.<org.hibernate.mapping.Any: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r1, $r4);	$r6 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r7 = interfaceinvoke $r6.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/AnyMetaDef;");	r52 = (org.hibernate.annotations.AnyMetaDef) $r7;	virtualinvoke $r62.<org.hibernate.mapping.Any: void setLazy(boolean)>(z0);	if r52 == null goto $r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r9 = interfaceinvoke r1.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r52 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.annotations.AnyMetaDef getAnyMetaDef(java.lang.String)>(r8);	if r52 == null goto $r68 = new org.hibernate.AnnotationException;	$r68 = new org.hibernate.AnnotationException;	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find @AnyMetaDef for an @(ManyTo)Any mapping: ");	$r14 = interfaceinvoke r12.<org.hibernate.cfg.PropertyHolder: java.lang.String getPath()>();	$r13 = interfaceinvoke r5.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r15 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r14, $r13);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r68.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r18);	$r73 = (java.lang.Throwable) $r68;	throw $r73
;block_num 4