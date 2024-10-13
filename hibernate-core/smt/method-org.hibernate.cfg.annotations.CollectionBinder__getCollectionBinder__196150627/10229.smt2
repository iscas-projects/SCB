(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2581 0)
(declare-sort var1405 0)
(declare-sort var1346 0)
(declare-sort var788 0)
(declare-sort var2334 0)
(declare-sort var77 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1405_isArray/2142734221 (var1405) Bool)
(declare-fun var1405_isCollection/-68409226 (var1405) Bool)
(declare-fun var788-init () var788)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1405_getName/-1864662448 (var1405) String)
(declare-fun var2334_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var788 String) void)
(declare-fun cast-from-var788-to-var77 (var788) var77)
(declare-const null-String String)
(declare-const null-var1405 var1405)
(declare-const null-Bool Bool)
(declare-const null-var1346 var1346)
(declare-const var790 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var790 null-String)))
(declare-const var192 var1405) ; Statement: r0 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var192 null-var1405)))
(declare-const var920 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var920 null-Bool)))
(declare-const var545 Bool) ; Statement: z4 := @parameter3: boolean 
(assert (not (= var545 null-Bool)))
(declare-const var1043 var1346) ; Statement: r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1043 null-var1346)))
(define-const var3238 Bool (var1405_isArray/2142734221 var192)) ; Statement: $z0 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isCollection()>() 
(assert (= (ite var3238 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3088 Bool (var1405_isCollection/-68409226 var192)) ; Statement: $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isCollection()>() 
 ; Statement: if $z1 == 0 goto $r50 = new org.hibernate.AnnotationException 
(assert (= (ite var3088 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3076 var788 var788-init) ; Statement: $r50 = new org.hibernate.AnnotationException 
(define-const var2337 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2337)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2337!1 String)
(assert (= var2337!1 ""))
(assert true)
(define-const var3399 String (append/672562846 var2337!1 "Illegal attempt to map a non collection as a @OneToMany, @ManyToMany or @CollectionOfElements: ")) ; Statement: $r6 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to map a non collection as a @OneToMany, @ManyToMany or @CollectionOfElements: ") 
(declare-const var2337!2 String)
(assert (= var2337!2 (str.++ var2337!1 "Illegal attempt to map a non collection as a @OneToMany, @ManyToMany or @CollectionOfElements: ")))
(define-const var2033 String (var1405_getName/-1864662448 var192)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>() 
(define-const var3895 String (var2334_qualify/-1563731603 var790 var2033)) ; Statement: $r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r3, $r4) 
(assert true)
(define-const var2093 String (append/672562846 var3399 var3895)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3399!1 String)
(assert (= var3399!1 (str.++ var3399 var3895)))
(assert true)
(define-const var2680 String (toString/-2075883882 var2093)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3076 var2680)) ; Statement: specialinvoke $r50.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r8) 

(declare-const var3076!1 var788)
(declare-const var2680!1 String)
(define-const var2058 var77 (cast-from-var788-to-var77 var3076!1)) ; Statement: $r52 = (java.lang.Throwable) $r50 
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var1405_isArray/2142734221=([org.hibernate.annotations.common.reflection.XProperty], boolean), var1405_isCollection/-68409226=([org.hibernate.annotations.common.reflection.XProperty], boolean), var788-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1405_getName/-1864662448=([org.hibernate.annotations.common.reflection.XProperty], java.lang.String), var2334_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var788-to-var77=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var790=r3, var2581=null_type, var1405=org.hibernate.annotations.common.reflection.XProperty, var192=r0, var920=z2, var545=z4, var1346=org.hibernate.boot.spi.MetadataBuildingContext, var1043=r9, var3238=$z0, var3088=$z1, var788=org.hibernate.AnnotationException, var3076=$r50, var2337=$r49, var3399=$r6, var2033=$r4, var2334=org.hibernate.internal.util.StringHelper, var3895=$r5, var2093=$r7, var2680=$r8, var77=java.lang.Throwable, var2058=$r52}
; {r3=var790, null_type=var2581, org.hibernate.annotations.common.reflection.XProperty=var1405, r0=var192, z2=var920, z4=var545, org.hibernate.boot.spi.MetadataBuildingContext=var1346, r9=var1043, $z0=var3238, $z1=var3088, org.hibernate.AnnotationException=var788, $r50=var3076, $r49=var2337, $r6=var3399, $r4=var2033, org.hibernate.internal.util.StringHelper=var2334, $r5=var3895, $r7=var2093, $r8=var2680, java.lang.Throwable=var77, $r52=var2058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	z2 := @parameter2: boolean;	z4 := @parameter3: boolean;	r9 := @parameter4: org.hibernate.boot.spi.MetadataBuildingContext;	$z0 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isArray()>();	if $z0 == 0 goto $z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isCollection()>();	$z1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: boolean isCollection()>();	if $z1 == 0 goto $r50 = new org.hibernate.AnnotationException;	$r50 = new org.hibernate.AnnotationException;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal attempt to map a non collection as a @OneToMany, @ManyToMany or @CollectionOfElements: ");	$r4 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>();	$r5 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r3, $r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r50.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r8);	$r52 = (java.lang.Throwable) $r50;	throw $r52
;block_num 3