(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var2660 0)
(declare-sort var1150 0)
(declare-sort var3822 0)
(declare-sort var1105 0)
(declare-sort var269 0)
(declare-sort var2510 0)
(declare-sort var1274 0)
(declare-sort var930 0)
(declare-sort var3846 0)
(declare-sort var2316 0)
(declare-sort var3702 0)
(declare-sort var731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var269!class ClassObject)
(declare-const var2510!class ClassObject)
(declare-fun var2660_getAnnotation/549133788 (var2660 ClassObject) var1105)
(declare-fun cast-from-var1105-to-var269 (var1105) var269)
(declare-fun cast-from-var1105-to-var2510 (var1105) var2510)
(declare-fun isCached/-1293733177 (var2649) Bool)
(declare-fun cacheConcurrentStrategy/-1293733177 (var2649) String)
(declare-fun cacheRegion/-1293733177 (var2649) String)
(declare-fun cacheLazyProperty/-1293733177 (var2649) Bool)
(declare-fun persistentClass/-1293733177 (var2649) var930)
(declare-fun var269_usage/-1014700404 (var269) var3846)
(declare-fun var2649_resolveCacheConcurrencyStrategy/1000331891 (var3846) String)
(declare-fun var269_region/-1182599094 (var269) String)
(declare-fun var269_include/531159412 (var269) String)
(declare-fun toLowerCase/1946809429 (String var2316) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3702-init () var3702)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun annotatedClass/-1293733177 (var2649) var2660)
(declare-fun var2660_getName/2109553381 (var2660) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3702 String) void)
(declare-fun cast-from-var3702-to-var731 (var3702) var731)
(declare-const null-var2649 var2649)
(declare-const null-var2660 var2660)
(declare-const null-var1150 var1150)
(declare-const null-var3822 var3822)
(declare-const null-String String)
(declare-const null-var269 var269)
(declare-const var2316-ROOT var2316)
(declare-const var1556 var2649) ; Statement: r5 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1556 null-var2649)))
(declare-const var714 var2660) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var714 null-var2660)))
(declare-const var2492 var1150) ; Statement: r7 := @parameter1: javax.persistence.SharedCacheMode 
(assert (not (= var2492 null-var1150)))
(declare-const var1398 var3822) ; Statement: r31 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1398 null-var3822)))
(define-const var2705 var1105 (var2660_getAnnotation/549133788 var714 var269!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Cache;") 
(define-const var2814 var269 (cast-from-var1105-to-var269 var2705)) ; Statement: r2 = (org.hibernate.annotations.Cache) $r1 
(define-const var630 var1105 (var2660_getAnnotation/549133788 var714 var2510!class)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Cacheable;") 
(define-const var1212 var2510 (cast-from-var1105-to-var2510 var630)) ; Statement: r4 = (javax.persistence.Cacheable) $r3 
(declare-const var1556!1 var2649)
(assert (not (= var1556!1 null-var2649)))
(assert (= (isCached/-1293733177 var1556!1) (ite (= 1 0) true false))) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: boolean isCached> = 0 
(declare-const var1556!2 var2649)
(assert (not (= var1556!2 null-var2649)))
(assert (= (cacheConcurrentStrategy/-1293733177 var1556!2) null-String)) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheConcurrentStrategy> = null 
(declare-const var1556!3 var2649)
(assert (not (= var1556!3 null-var2649)))
(assert (= (cacheRegion/-1293733177 var1556!3) null-String)) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheRegion> = null 
(declare-const var1556!4 var2649)
(assert (not (= var1556!4 null-var2649)))
(assert (= (cacheLazyProperty/-1293733177 var1556!4) (ite (= 1 1) true false))) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1 
(define-const var943 var930 (persistentClass/-1293733177 var1556!4)) ; Statement: $r6 = r5.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass> 
(define-const var3808 Bool false) ; Statement: $z0 = $r6 instanceof org.hibernate.mapping.RootClass 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3808 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var728 var269 var2814) ; Statement: r44 = r2 
 ; Statement: if r2 == null goto $r32 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>() 
(assert (not (= var2814 null-var269))) ; Negate: Cond: r2 == null  
(declare-const var1556!5 var2649)
(assert (not (= var1556!5 null-var2649)))
(assert (= (isCached/-1293733177 var1556!5) (ite (= 1 1) true false))) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: boolean isCached> = 1 
 ; Statement: goto [?= $r45 = interfaceinvoke r44.<org.hibernate.annotations.Cache: org.hibernate.annotations.CacheConcurrencyStrategy usage()>()] 
(assert true) ; Non Conditional
(define-const var3365 var3846 (var269_usage/-1014700404 var728)) ; Statement: $r45 = interfaceinvoke r44.<org.hibernate.annotations.Cache: org.hibernate.annotations.CacheConcurrencyStrategy usage()>() 
(define-const var3595 String (var2649_resolveCacheConcurrencyStrategy/1000331891 var3365)) ; Statement: $r46 = staticinvoke <org.hibernate.cfg.annotations.EntityBinder: java.lang.String resolveCacheConcurrencyStrategy(org.hibernate.annotations.CacheConcurrencyStrategy)>($r45) 
(declare-const var1556!6 var2649)
(assert (not (= var1556!6 null-var2649)))
(assert (= (cacheConcurrentStrategy/-1293733177 var1556!6) var3595)) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheConcurrentStrategy> = $r46 
(define-const var3441 String (var269_region/-1182599094 var728)) ; Statement: $r47 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String region()>() 
(declare-const var1556!7 var2649)
(assert (not (= var1556!7 null-var2649)))
(assert (= (cacheRegion/-1293733177 var1556!7) var3441)) ; Statement: r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheRegion> = $r47 
(define-const var2692 String (var269_include/531159412 var728)) ; Statement: $r48 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String include()>() 
(define-const var303 var2316 var2316-ROOT) ; Statement: $r49 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1364 String (toLowerCase/1946809429 var2692 var303)) ; Statement: $r50 = virtualinvoke $r48.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r49) 
(define-const var3224 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var1660 Int (hashCode/-467973558 var1364)) ; Statement: $i5 = virtualinvoke $r50.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i5) {     case 96673: goto $z7 = virtualinvoke $r50.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 1358348916: goto $z6 = virtualinvoke $r50.<java.lang.String: boolean equals(java.lang.Object)>("non-lazy");     default: goto lookupswitch(b4) {     case 0: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1;     case 1: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 0;     default: goto $r55 = new org.hibernate.AnnotationException; }; } 
(assert (and (not (= var1660 1358348916)) (and (not (= var1660 96673)) true))) ; Intersect: Negate: Cond: $i5 == 1358348916   and Intersect: Negate: Cond: $i5 == 96673   and Non Conditional  
 ; Statement: lookupswitch(b4) {     case 0: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1;     case 1: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 0;     default: goto $r55 = new org.hibernate.AnnotationException; } 
(assert (and (not (= var3224 1)) (and (not (= var3224 0)) true))) ; Intersect: Negate: Cond: b4 == 1   and Intersect: Negate: Cond: b4 == 0   and Non Conditional  
(define-const var1003 var3702 var3702-init) ; Statement: $r55 = new org.hibernate.AnnotationException 
(define-const var3847 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3847)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3847!1 String)
(assert (= var3847!1 ""))
(assert true)
(define-const var2360 String (append/672562846 var3847!1 "Unknown @Cache.include value [")) ; Statement: $r37 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown @Cache.include value [") 
(declare-const var3847!2 String)
(assert (= var3847!2 (str.++ var3847!1 "Unknown @Cache.include value [")))
(define-const var1999 String (var269_include/531159412 var728)) ; Statement: $r36 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String include()>() 
(assert true)
(define-const var1570 String (append/672562846 var2360 var1999)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2360!1 String)
(assert (= var2360!1 (str.++ var2360 var1999)))
(assert true)
(define-const var1683 String (append/672562846 var1570 "] : ")) ; Statement: $r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] : ") 
(declare-const var1570!1 String)
(assert (= var1570!1 (str.++ var1570 "] : ")))
(define-const var2943 var2660 (annotatedClass/-1293733177 var1556!7)) ; Statement: $r39 = r5.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass> 
(define-const var1957 String (var2660_getName/2109553381 var2943)) ; Statement: $r40 = interfaceinvoke $r39.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>() 
(assert true)
(define-const var3302 String (append/672562846 var1683 var1957)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1683!1 String)
(assert (= var1683!1 (str.++ var1683 var1957)))
(assert true)
(define-const var3385 String (toString/-2075883882 var3302)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1003 var3385)) ; Statement: specialinvoke $r55.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r43) 

(declare-const var1003!1 var3702)
(declare-const var3385!1 String)
(define-const var3833 var731 (cast-from-var3702-to-var731 var1003!1)) ; Statement: $r58 = (java.lang.Throwable) $r55 
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var2660_getAnnotation/549133788=([org.hibernate.annotations.common.reflection.XClass, java.lang.Class], java.lang.annotation.Annotation), cast-from-var1105-to-var269=([java.lang.annotation.Annotation], org.hibernate.annotations.Cache), cast-from-var1105-to-var2510=([java.lang.annotation.Annotation], javax.persistence.Cacheable), isCached/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], boolean), cacheConcurrentStrategy/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], java.lang.String), cacheRegion/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], java.lang.String), cacheLazyProperty/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], boolean), persistentClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.mapping.PersistentClass), var269_usage/-1014700404=([org.hibernate.annotations.Cache], org.hibernate.annotations.CacheConcurrencyStrategy), var2649_resolveCacheConcurrencyStrategy/1000331891=([org.hibernate.annotations.CacheConcurrencyStrategy], java.lang.String), var269_region/-1182599094=([org.hibernate.annotations.Cache], java.lang.String), var269_include/531159412=([org.hibernate.annotations.Cache], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3702-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), annotatedClass/-1293733177=([org.hibernate.cfg.annotations.EntityBinder], org.hibernate.annotations.common.reflection.XClass), var2660_getName/2109553381=([org.hibernate.annotations.common.reflection.XClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3702-to-var731=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2649=org.hibernate.cfg.annotations.EntityBinder, var1556=r5, var2660=org.hibernate.annotations.common.reflection.XClass, var714=r0, var1150=javax.persistence.SharedCacheMode, var2492=r7, var3822=org.hibernate.boot.spi.MetadataBuildingContext, var1398=r31, var1105=java.lang.annotation.Annotation, var269=org.hibernate.annotations.Cache, var2705=$r1, var2814=r2, var2510=javax.persistence.Cacheable, var630=$r3, var1212=r4, var1274=null_type, var930=org.hibernate.mapping.PersistentClass, var943=$r6, var3808=$z0, var728=r44, var3846=org.hibernate.annotations.CacheConcurrencyStrategy, var3365=$r45, var3595=$r46, var3441=$r47, var2692=$r48, var2316=java.util.Locale, var303=$r49, var1364=$r50, var3224=b4, var1660=$i5, var3702=org.hibernate.AnnotationException, var1003=$r55, var3847=$r54, var2360=$r37, var1999=$r36, var1570=$r38, var1683=$r41, var2943=$r39, var1957=$r40, var3302=$r42, var3385=$r43, var731=java.lang.Throwable, var3833=$r58}
; {org.hibernate.cfg.annotations.EntityBinder=var2649, r5=var1556, org.hibernate.annotations.common.reflection.XClass=var2660, r0=var714, javax.persistence.SharedCacheMode=var1150, r7=var2492, org.hibernate.boot.spi.MetadataBuildingContext=var3822, r31=var1398, java.lang.annotation.Annotation=var1105, org.hibernate.annotations.Cache=var269, $r1=var2705, r2=var2814, javax.persistence.Cacheable=var2510, $r3=var630, r4=var1212, null_type=var1274, org.hibernate.mapping.PersistentClass=var930, $r6=var943, $z0=var3808, r44=var728, org.hibernate.annotations.CacheConcurrencyStrategy=var3846, $r45=var3365, $r46=var3595, $r47=var3441, $r48=var2692, java.util.Locale=var2316, $r49=var303, $r50=var1364, b4=var3224, $i5=var1660, org.hibernate.AnnotationException=var3702, $r55=var1003, $r54=var3847, $r37=var2360, $r36=var1999, $r38=var1570, $r41=var1683, $r39=var2943, $r40=var1957, $r42=var3302, $r43=var3385, java.lang.Throwable=var731, $r58=var3833}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r7 := @parameter1: javax.persistence.SharedCacheMode;	r31 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	$r1 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Cache;");	r2 = (org.hibernate.annotations.Cache) $r1;	$r3 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Cacheable;");	r4 = (javax.persistence.Cacheable) $r3;	r5.<org.hibernate.cfg.annotations.EntityBinder: boolean isCached> = 0;	r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheConcurrentStrategy> = null;	r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheRegion> = null;	r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1;	$r6 = r5.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.mapping.PersistentClass persistentClass>;	$z0 = $r6 instanceof org.hibernate.mapping.RootClass;	if $z0 == 0 goto (branch);	r44 = r2;	if r2 == null goto $r32 = interfaceinvoke r0.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>();	r5.<org.hibernate.cfg.annotations.EntityBinder: boolean isCached> = 1;	goto [?= $r45 = interfaceinvoke r44.<org.hibernate.annotations.Cache: org.hibernate.annotations.CacheConcurrencyStrategy usage()>()];	$r45 = interfaceinvoke r44.<org.hibernate.annotations.Cache: org.hibernate.annotations.CacheConcurrencyStrategy usage()>();	$r46 = staticinvoke <org.hibernate.cfg.annotations.EntityBinder: java.lang.String resolveCacheConcurrencyStrategy(org.hibernate.annotations.CacheConcurrencyStrategy)>($r45);	r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheConcurrentStrategy> = $r46;	$r47 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String region()>();	r5.<org.hibernate.cfg.annotations.EntityBinder: java.lang.String cacheRegion> = $r47;	$r48 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String include()>();	$r49 = <java.util.Locale: java.util.Locale ROOT>;	$r50 = virtualinvoke $r48.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r49);	b4 = -1;	$i5 = virtualinvoke $r50.<java.lang.String: int hashCode()>();	lookupswitch($i5) {     case 96673: goto $z7 = virtualinvoke $r50.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 1358348916: goto $z6 = virtualinvoke $r50.<java.lang.String: boolean equals(java.lang.Object)>("non-lazy");     default: goto lookupswitch(b4) {     case 0: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1;     case 1: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 0;     default: goto $r55 = new org.hibernate.AnnotationException; }; };	lookupswitch(b4) {     case 0: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 1;     case 1: goto r5.<org.hibernate.cfg.annotations.EntityBinder: boolean cacheLazyProperty> = 0;     default: goto $r55 = new org.hibernate.AnnotationException; };	$r55 = new org.hibernate.AnnotationException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown @Cache.include value [");	$r36 = interfaceinvoke r44.<org.hibernate.annotations.Cache: java.lang.String include()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r41 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] : ");	$r39 = r5.<org.hibernate.cfg.annotations.EntityBinder: org.hibernate.annotations.common.reflection.XClass annotatedClass>;	$r40 = interfaceinvoke $r39.<org.hibernate.annotations.common.reflection.XClass: java.lang.String getName()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r43);	$r58 = (java.lang.Throwable) $r55;	throw $r58
;block_num 6