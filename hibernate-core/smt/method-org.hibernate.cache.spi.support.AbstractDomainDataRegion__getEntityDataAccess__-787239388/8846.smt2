(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var299 0)
(declare-sort var2025 0)
(declare-sort var1150 0)
(declare-sort var1421 0)
(declare-sort var2170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityDataAccessMap/-1926537321 (var2637) var2025)
(declare-fun var2025_get/1088891777 (var2025 var1150) var1150)
(declare-fun cast-from-var299-to-var1150 (var299) var1150)
(declare-fun cast-from-var1150-to-var1421 (var1150) var1421)
(declare-fun var2170-init () var2170)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullPath/1660193712 (var299) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2170 String) void)
(declare-const null-var2637 var2637)
(declare-const null-var299 var299)
(declare-const null-var1421 var1421)
(declare-const var1641 var2637) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var1641 null-var2637)))
(declare-const var3945 var299) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var3945 null-var299)))
(define-const var662 var2025 (entityDataAccessMap/-1926537321 var1641)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map entityDataAccessMap> 
(define-const var3422 var1150 (var2025_get/1088891777 var662 (cast-from-var299-to-var1150 var3945))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1238 var1421 (cast-from-var1150-to-var1421 var3422)) ; Statement: r4 = (org.hibernate.cache.spi.access.EntityDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1238 null-var1421)))) ; Negate: Cond: r4 != null  
(define-const var2297 var2170 var2170-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1560 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1560)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1560!1 String)
(assert (= var1560!1 ""))
(assert true)
(define-const var2365 String (append/672562846 var1560!1 "Caching was not configured for entity : ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for entity : ") 
(declare-const var1560!2 String)
(assert (= var1560!2 (str.++ var1560!1 "Caching was not configured for entity : ")))
(assert true)
(define-const var1974 String (getFullPath/1660193712 var3945)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var30 String (append/672562846 var2365 var1974)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2365!1 String)
(assert (= var2365!1 (str.++ var2365 var1974)))
(assert true)
(define-const var983 String (toString/-2075883882 var30)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2297 var983)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2297!1 var2170)
(declare-const var983!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {entityDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var2025_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var299-to-var1150=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var1150-to-var1421=([java.lang.Object], org.hibernate.cache.spi.access.EntityDataAccess), var2170-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2637=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var1641=r0, var299=org.hibernate.metamodel.model.domain.NavigableRole, var3945=r1, var2025=java.util.Map, var662=$r2, var1150=java.lang.Object, var3422=$r3, var1421=org.hibernate.cache.spi.access.EntityDataAccess, var1238=r4, var2170=java.lang.IllegalArgumentException, var2297=$r5, var1560=$r6, var2365=$r8, var1974=$r7, var30=$r9, var983=$r10}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var2637, r0=var1641, org.hibernate.metamodel.model.domain.NavigableRole=var299, r1=var3945, java.util.Map=var2025, $r2=var662, java.lang.Object=var1150, $r3=var3422, org.hibernate.cache.spi.access.EntityDataAccess=var1421, r4=var1238, java.lang.IllegalArgumentException=var2170, $r5=var2297, $r6=var1560, $r8=var2365, $r7=var1974, $r9=var30, $r10=var983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map entityDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.EntityDataAccess) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for entity : ");	$r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2