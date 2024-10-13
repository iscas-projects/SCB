(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort var3212 0)
(declare-sort var2264 0)
(declare-sort var3969 0)
(declare-sort var3406 0)
(declare-sort var2051 0)
(declare-sort var1252 0)
(declare-sort var3096 0)
(declare-sort var2580 0)
(declare-sort var1151 0)
(declare-sort var1489 0)
(declare-sort var1423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3212_getName/2109553381 (var3212) String)
(declare-fun var2264_get/1088891777 (var2264 var2580) var2580)
(declare-fun cast-from-String-to-var2580 (String) var2580)
(declare-fun cast-from-var2580-to-var1151 (var2580) var1151)
(declare-fun var1489-init () var1489)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2580) String)
(declare-fun cast-from-var3212-to-var2580 (var3212) var2580)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1489 String) void)
(declare-fun cast-from-var1489-to-var1423 (var1489) var1423)
(declare-const null-var2820 var2820)
(declare-const null-var3212 var3212)
(declare-const null-var2264 var2264)
(declare-const null-String String)
(declare-const null-var3406 var3406)
(declare-const null-Bool Bool)
(declare-const null-var2051 var2051)
(declare-const null-__Array__Int__var1252__ (Array Int var1252))
(declare-const null-__Array__Int__var3096__ (Array Int var3096))
(declare-const null-var1151 var1151)
(declare-const var1830 var2820) ; Statement: r6 := @this: org.hibernate.cfg.annotations.MapBinder 
(assert (not (= var1830 null-var2820)))
(declare-const var2386 var3212) ; Statement: r61 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var2386 null-var3212)))
(declare-const var3385 var2264) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var3385 null-var2264)))
(declare-const var1266 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1266 null-String)))
(declare-const var486 var3406) ; Statement: r1 := @parameter3: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var486 null-var3406)))
(declare-const var1000 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1000 null-Bool)))
(declare-const var1911 var2051) ; Statement: r9 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1911 null-var2051)))
(declare-const var1640 (Array Int var1252)) ; Statement: r22 := @parameter6: org.hibernate.cfg.Ejb3Column[] 
(assert (not (= var1640 null-__Array__Int__var1252__)))
(declare-const var1646 (Array Int var3096)) ; Statement: r31 := @parameter7: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var1646 null-__Array__Int__var3096__)))
(declare-const var3915 String) ; Statement: r69 := @parameter8: java.lang.String 
(assert (not (= var3915 null-String)))
 ; Statement: if r0 == null goto r89 = <java.lang.Void: java.lang.Class TYPE> 
(assert (not (= var1266 null-String))) ; Negate: Cond: r0 == null  
(define-const var793 String (var3212_getName/2109553381 var2386)) ; Statement: $r62 = interfaceinvoke r61.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>() 
(define-const var1197 var2580 (var2264_get/1088891777 var3385 (cast-from-String-to-var2580 var793))) ; Statement: $r63 = interfaceinvoke r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r62) 
(define-const var1333 var1151 (cast-from-var2580-to-var1151 var1197)) ; Statement: r84 = (org.hibernate.mapping.PersistentClass) $r63 
 ; Statement: if r84 != null goto r85 = staticinvoke <org.hibernate.cfg.BinderHelper: org.hibernate.mapping.Property findPropertyByName(org.hibernate.mapping.PersistentClass,java.lang.String)>(r84, r0) 
(assert (not (not (= var1333 null-var1151)))) ; Negate: Cond: r84 != null  
(define-const var1777 var1489 var1489-init) ; Statement: $r114 = new org.hibernate.AnnotationException 
(define-const var3770 String String-init) ; Statement: $r113 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3770)) ; Statement: specialinvoke $r113.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3770!1 String)
(assert (= var3770!1 ""))
(assert true)
(define-const var1914 String (append/672562846 var3770!1 "Associated class not found: ")) ; Statement: $r81 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Associated class not found: ") 
(declare-const var3770!2 String)
(assert (= var3770!2 (str.++ var3770!1 "Associated class not found: ")))
(assert true)
(define-const var3846 String (append/-1031950772 var1914 (cast-from-var3212-to-var2580 var2386))) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r61) 
(declare-const var1914!1 String)
(assert (str.prefixof var1914 var1914!1))
(assert true)
(define-const var3066 String (toString/-2075883882 var3846)) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1777 var3066)) ; Statement: specialinvoke $r114.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r83) 

(declare-const var1777!1 var1489)
(declare-const var3066!1 String)
(define-const var387 var1423 (cast-from-var1489-to-var1423 var1777!1)) ; Statement: $r125 = (java.lang.Throwable) $r114 
 ; Statement: throw $r125 
(check-sat)
(get-model)
(get-unsat-core)
; {var3212_getName/2109553381=([org.hibernate.annotations.common.reflection.XClass], java.lang.String), var2264_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2580=([java.lang.String], java.lang.Object), cast-from-var2580-to-var1151=([java.lang.Object], org.hibernate.mapping.PersistentClass), var1489-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3212-to-var2580=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1489-to-var1423=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2820=org.hibernate.cfg.annotations.MapBinder, var1830=r6, var3212=org.hibernate.annotations.common.reflection.XClass, var2386=r61, var2264=java.util.Map, var3385=r4, var1266=r0, var3969=null_type, var3406=org.hibernate.annotations.common.reflection.XProperty, var486=r1, var1000=z3, var2051=org.hibernate.boot.spi.MetadataBuildingContext, var1911=r9, var1252=org.hibernate.cfg.Ejb3Column, var1640=r22, var3096=org.hibernate.cfg.Ejb3JoinColumn, var1646=r31, var3915=r69, var793=$r62, var2580=java.lang.Object, var1197=$r63, var1151=org.hibernate.mapping.PersistentClass, var1333=r84, var1489=org.hibernate.AnnotationException, var1777=$r114, var3770=$r113, var1914=$r81, var3846=$r82, var3066=$r83, var1423=java.lang.Throwable, var387=$r125}
; {org.hibernate.cfg.annotations.MapBinder=var2820, r6=var1830, org.hibernate.annotations.common.reflection.XClass=var3212, r61=var2386, java.util.Map=var2264, r4=var3385, r0=var1266, null_type=var3969, org.hibernate.annotations.common.reflection.XProperty=var3406, r1=var486, z3=var1000, org.hibernate.boot.spi.MetadataBuildingContext=var2051, r9=var1911, org.hibernate.cfg.Ejb3Column=var1252, r22=var1640, org.hibernate.cfg.Ejb3JoinColumn=var3096, r31=var1646, r69=var3915, $r62=var793, java.lang.Object=var2580, $r63=var1197, org.hibernate.mapping.PersistentClass=var1151, r84=var1333, org.hibernate.AnnotationException=var1489, $r114=var1777, $r113=var3770, $r81=var1914, $r82=var3846, $r83=var3066, java.lang.Throwable=var1423, $r125=var387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cfg.annotations.MapBinder;	r61 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r4 := @parameter1: java.util.Map;	r0 := @parameter2: java.lang.String;	r1 := @parameter3: org.hibernate.annotations.common.reflection.XProperty;	z3 := @parameter4: boolean;	r9 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	r22 := @parameter6: org.hibernate.cfg.Ejb3Column[];	r31 := @parameter7: org.hibernate.cfg.Ejb3JoinColumn[];	r69 := @parameter8: java.lang.String;	if r0 == null goto r89 = <java.lang.Void: java.lang.Class TYPE>;	$r62 = interfaceinvoke r61.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>();	$r63 = interfaceinvoke r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r62);	r84 = (org.hibernate.mapping.PersistentClass) $r63;	if r84 != null goto r85 = staticinvoke <org.hibernate.cfg.BinderHelper: org.hibernate.mapping.Property findPropertyByName(org.hibernate.mapping.PersistentClass,java.lang.String)>(r84, r0);	$r114 = new org.hibernate.AnnotationException;	$r113 = new java.lang.StringBuilder;	specialinvoke $r113.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r113.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Associated class not found: ");	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r61);	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r114.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r83);	$r125 = (java.lang.Throwable) $r114;	throw $r125
;block_num 3