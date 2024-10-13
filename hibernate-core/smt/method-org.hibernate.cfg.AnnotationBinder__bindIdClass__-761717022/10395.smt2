(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var1306 0)
(declare-sort var1741 0)
(declare-sort var3302 0)
(declare-sort var1294 0)
(declare-sort var1652 0)
(declare-sort var1615 0)
(declare-sort var3982 0)
(declare-sort var391 0)
(declare-sort var1124 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3302_getPersistentClass/561157946 (var3302) var391)
(declare-fun var1124-init () var1124)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3302_getEntityName/406565313 (var3302) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1124 String) void)
(declare-fun cast-from-var1124-to-var3225 (var1124) var3225)
(declare-const null-String String)
(declare-const null-var1306 var1306)
(declare-const null-__Array__Int__var1741__ (Array Int var1741))
(declare-const null-var3302 var3302)
(declare-const null-Bool Bool)
(declare-const null-var1294 var1294)
(declare-const null-var1652 var1652)
(declare-const null-var1615 var1615)
(declare-const null-var3982 var3982)
(declare-const var1063 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1063 null-String)))
(declare-const var3559 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var3559 null-String)))
(declare-const var812 var1306) ; Statement: r4 := @parameter2: org.hibernate.cfg.PropertyData 
(assert (not (= var812 null-var1306)))
(declare-const var943 var1306) ; Statement: r27 := @parameter3: org.hibernate.cfg.PropertyData 
(assert (not (= var943 null-var1306)))
(declare-const var3411 (Array Int var1741)) ; Statement: r6 := @parameter4: org.hibernate.cfg.Ejb3Column[] 
(assert (not (= var3411 null-__Array__Int__var1741__)))
(declare-const var851 var3302) ; Statement: r0 := @parameter5: org.hibernate.cfg.PropertyHolder 
(assert (not (= var851 null-var3302)))
(declare-const var2560 Bool) ; Statement: z1 := @parameter6: boolean 
(assert (not (= var2560 null-Bool)))
(declare-const var1426 var1294) ; Statement: r12 := @parameter7: org.hibernate.cfg.AccessType 
(assert (not (= var1426 null-var1294)))
(declare-const var3303 var1652) ; Statement: r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var3303 null-var1652)))
(declare-const var2141 Bool) ; Statement: z3 := @parameter9: boolean 
(assert (not (= var2141 null-Bool)))
(declare-const var2353 Bool) ; Statement: z4 := @parameter10: boolean 
(assert (not (= var2353 null-Bool)))
(declare-const var496 var1615) ; Statement: r9 := @parameter11: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var496 null-var1615)))
(declare-const var287 var3982) ; Statement: r20 := @parameter12: java.util.Map 
(assert (not (= var287 null-var3982)))
(define-const var678 var391 (var3302_getPersistentClass/561157946 var851)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>() 
(define-const var2628 Bool false) ; Statement: $z0 = r1 instanceof org.hibernate.mapping.RootClass 
 ; Statement: if $z0 != 0 goto r2 = (org.hibernate.mapping.RootClass) r1 
(assert (not (not (= (ite var2628 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3564 var1124 var1124-init) ; Statement: $r54 = new org.hibernate.AnnotationException 
(define-const var2973 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2973)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2973!1 String)
(assert (= var2973!1 ""))
(assert true)
(define-const var2064 String (append/672562846 var2973!1 "Unable to define/override @Id(s) on a subclass: ")) ; Statement: $r45 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to define/override @Id(s) on a subclass: ") 
(declare-const var2973!2 String)
(assert (= var2973!2 (str.++ var2973!1 "Unable to define/override @Id(s) on a subclass: ")))
(define-const var3364 String (var3302_getEntityName/406565313 var851)) ; Statement: $r44 = interfaceinvoke r0.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>() 
(assert true)
(define-const var3068 String (append/672562846 var2064 var3364)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44) 
(declare-const var2064!1 String)
(assert (= var2064!1 (str.++ var2064 var3364)))
(assert true)
(define-const var1552 String (toString/-2075883882 var3068)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3564 var1552)) ; Statement: specialinvoke $r54.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r47) 

(declare-const var3564!1 var1124)
(declare-const var1552!1 String)
(define-const var2632 var3225 (cast-from-var1124-to-var3225 var3564!1)) ; Statement: $r62 = (java.lang.Throwable) $r54 
 ; Statement: throw $r62 
(check-sat)
(get-model)
(get-unsat-core)
; {var3302_getPersistentClass/561157946=([org.hibernate.cfg.PropertyHolder], org.hibernate.mapping.PersistentClass), var1124-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3302_getEntityName/406565313=([org.hibernate.cfg.PropertyHolder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1124-to-var3225=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1063=r13, var372=null_type, var3559=r14, var1306=org.hibernate.cfg.PropertyData, var812=r4, var943=r27, var1741=org.hibernate.cfg.Ejb3Column, var3411=r6, var3302=org.hibernate.cfg.PropertyHolder, var851=r0, var2560=z1, var1294=org.hibernate.cfg.AccessType, var1426=r12, var1652=org.hibernate.cfg.annotations.EntityBinder, var3303=r28, var2141=z3, var2353=z4, var1615=org.hibernate.boot.spi.MetadataBuildingContext, var496=r9, var3982=java.util.Map, var287=r20, var391=org.hibernate.mapping.PersistentClass, var678=r1, var2628=$z0, var1124=org.hibernate.AnnotationException, var3564=$r54, var2973=$r53, var2064=$r45, var3364=$r44, var3068=$r46, var1552=$r47, var3225=java.lang.Throwable, var2632=$r62}
; {r13=var1063, null_type=var372, r14=var3559, org.hibernate.cfg.PropertyData=var1306, r4=var812, r27=var943, org.hibernate.cfg.Ejb3Column=var1741, r6=var3411, org.hibernate.cfg.PropertyHolder=var3302, r0=var851, z1=var2560, org.hibernate.cfg.AccessType=var1294, r12=var1426, org.hibernate.cfg.annotations.EntityBinder=var1652, r28=var3303, z3=var2141, z4=var2353, org.hibernate.boot.spi.MetadataBuildingContext=var1615, r9=var496, java.util.Map=var3982, r20=var287, org.hibernate.mapping.PersistentClass=var391, r1=var678, $z0=var2628, org.hibernate.AnnotationException=var1124, $r54=var3564, $r53=var2973, $r45=var2064, $r44=var3364, $r46=var3068, $r47=var1552, java.lang.Throwable=var3225, $r62=var2632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @parameter0: java.lang.String;	r14 := @parameter1: java.lang.String;	r4 := @parameter2: org.hibernate.cfg.PropertyData;	r27 := @parameter3: org.hibernate.cfg.PropertyData;	r6 := @parameter4: org.hibernate.cfg.Ejb3Column[];	r0 := @parameter5: org.hibernate.cfg.PropertyHolder;	z1 := @parameter6: boolean;	r12 := @parameter7: org.hibernate.cfg.AccessType;	r28 := @parameter8: org.hibernate.cfg.annotations.EntityBinder;	z3 := @parameter9: boolean;	z4 := @parameter10: boolean;	r9 := @parameter11: org.hibernate.boot.spi.MetadataBuildingContext;	r20 := @parameter12: java.util.Map;	r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyHolder: org.hibernate.mapping.PersistentClass getPersistentClass()>();	$z0 = r1 instanceof org.hibernate.mapping.RootClass;	if $z0 != 0 goto r2 = (org.hibernate.mapping.RootClass) r1;	$r54 = new org.hibernate.AnnotationException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to define/override @Id(s) on a subclass: ");	$r44 = interfaceinvoke r0.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>();	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r54.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r47);	$r62 = (java.lang.Throwable) $r54;	throw $r62
;block_num 2