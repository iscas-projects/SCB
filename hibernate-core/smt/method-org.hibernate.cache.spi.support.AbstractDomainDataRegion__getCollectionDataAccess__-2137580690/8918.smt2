(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var1481 0)
(declare-sort var978 0)
(declare-sort var1019 0)
(declare-sort var155 0)
(declare-sort var2547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionDataAccessMap/-1926537321 (var3502) var978)
(declare-fun var978_get/1088891777 (var978 var1019) var1019)
(declare-fun cast-from-var1481-to-var1019 (var1481) var1019)
(declare-fun cast-from-var1019-to-var155 (var1019) var155)
(declare-fun var2547-init () var2547)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullPath/1660193712 (var1481) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2547 String) void)
(declare-const null-var3502 var3502)
(declare-const null-var1481 var1481)
(declare-const null-var155 var155)
(declare-const var3624 var3502) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var3624 null-var3502)))
(declare-const var941 var1481) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var941 null-var1481)))
(define-const var1247 var978 (collectionDataAccessMap/-1926537321 var3624)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map collectionDataAccessMap> 
(define-const var88 var1019 (var978_get/1088891777 var1247 (cast-from-var1481-to-var1019 var941))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3935 var155 (cast-from-var1019-to-var155 var88)) ; Statement: r4 = (org.hibernate.cache.spi.access.CollectionDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var3935 null-var155)))) ; Negate: Cond: r4 != null  
(define-const var537 var2547 var2547-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var29 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var29)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var29!1 String)
(assert (= var29!1 ""))
(assert true)
(define-const var2482 String (append/672562846 var29!1 "Caching was not configured for collection : ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for collection : ") 
(declare-const var29!2 String)
(assert (= var29!2 (str.++ var29!1 "Caching was not configured for collection : ")))
(assert true)
(define-const var1963 String (getFullPath/1660193712 var941)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var2342 String (append/672562846 var2482 var1963)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2482!1 String)
(assert (= var2482!1 (str.++ var2482 var1963)))
(assert true)
(define-const var183 String (toString/-2075883882 var2342)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var537 var183)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var537!1 var2547)
(declare-const var183!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var978_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1481-to-var1019=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var1019-to-var155=([java.lang.Object], org.hibernate.cache.spi.access.CollectionDataAccess), var2547-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3502=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var3624=r0, var1481=org.hibernate.metamodel.model.domain.NavigableRole, var941=r1, var978=java.util.Map, var1247=$r2, var1019=java.lang.Object, var88=$r3, var155=org.hibernate.cache.spi.access.CollectionDataAccess, var3935=r4, var2547=java.lang.IllegalArgumentException, var537=$r5, var29=$r6, var2482=$r8, var1963=$r7, var2342=$r9, var183=$r10}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var3502, r0=var3624, org.hibernate.metamodel.model.domain.NavigableRole=var1481, r1=var941, java.util.Map=var978, $r2=var1247, java.lang.Object=var1019, $r3=var88, org.hibernate.cache.spi.access.CollectionDataAccess=var155, r4=var3935, java.lang.IllegalArgumentException=var2547, $r5=var537, $r6=var29, $r8=var2482, $r7=var1963, $r9=var2342, $r10=var183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map collectionDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.CollectionDataAccess) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for collection : ");	$r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2