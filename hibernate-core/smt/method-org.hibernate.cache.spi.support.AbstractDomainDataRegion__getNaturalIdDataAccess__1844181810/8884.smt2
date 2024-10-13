(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3026 0)
(declare-sort var3469 0)
(declare-sort var333 0)
(declare-sort var3047 0)
(declare-sort var1526 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun naturalIdDataAccessMap/-1926537321 (var3026) var333)
(declare-fun var333_get/1088891777 (var333 var3047) var3047)
(declare-fun cast-from-var3469-to-var3047 (var3469) var3047)
(declare-fun cast-from-var3047-to-var1526 (var3047) var1526)
(declare-fun var3175-init () var3175)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullPath/1660193712 (var3469) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3175 String) void)
(declare-const null-var3026 var3026)
(declare-const null-var3469 var3469)
(declare-const null-var1526 var1526)
(declare-const var2946 var3026) ; Statement: r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion 
(assert (not (= var2946 null-var3026)))
(declare-const var1567 var3469) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole 
(assert (not (= var1567 null-var3469)))
(define-const var3172 var333 (naturalIdDataAccessMap/-1926537321 var2946)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map naturalIdDataAccessMap> 
(define-const var563 var3047 (var333_get/1088891777 var3172 (cast-from-var3469-to-var3047 var1567))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2390 var1526 (cast-from-var3047-to-var1526 var563)) ; Statement: r4 = (org.hibernate.cache.spi.access.NaturalIdDataAccess) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2390 null-var1526)))) ; Negate: Cond: r4 != null  
(define-const var2721 var3175 var3175-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1439 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1439)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1439!1 String)
(assert (= var1439!1 ""))
(assert true)
(define-const var1177 String (append/672562846 var1439!1 "Caching was not configured for entity natural-id : ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for entity natural-id : ") 
(declare-const var1439!2 String)
(assert (= var1439!2 (str.++ var1439!1 "Caching was not configured for entity natural-id : ")))
(assert true)
(define-const var2118 String (getFullPath/1660193712 var1567)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var1262 String (append/672562846 var1177 var2118)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1177!1 String)
(assert (= var1177!1 (str.++ var1177 var2118)))
(assert true)
(define-const var2498 String (toString/-2075883882 var1262)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2721 var2498)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2721!1 var3175)
(declare-const var2498!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {naturalIdDataAccessMap/-1926537321=([org.hibernate.cache.spi.support.AbstractDomainDataRegion], java.util.Map), var333_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3469-to-var3047=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.Object), cast-from-var3047-to-var1526=([java.lang.Object], org.hibernate.cache.spi.access.NaturalIdDataAccess), var3175-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullPath/1660193712=([org.hibernate.metamodel.model.domain.NavigableRole], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3026=org.hibernate.cache.spi.support.AbstractDomainDataRegion, var2946=r0, var3469=org.hibernate.metamodel.model.domain.NavigableRole, var1567=r1, var333=java.util.Map, var3172=$r2, var3047=java.lang.Object, var563=$r3, var1526=org.hibernate.cache.spi.access.NaturalIdDataAccess, var2390=r4, var3175=java.lang.IllegalArgumentException, var2721=$r5, var1439=$r6, var1177=$r8, var2118=$r7, var1262=$r9, var2498=$r10}
; {org.hibernate.cache.spi.support.AbstractDomainDataRegion=var3026, r0=var2946, org.hibernate.metamodel.model.domain.NavigableRole=var3469, r1=var1567, java.util.Map=var333, $r2=var3172, java.lang.Object=var3047, $r3=var563, org.hibernate.cache.spi.access.NaturalIdDataAccess=var1526, r4=var2390, java.lang.IllegalArgumentException=var3175, $r5=var2721, $r6=var1439, $r8=var1177, $r7=var2118, $r9=var1262, $r10=var2498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.support.AbstractDomainDataRegion;	r1 := @parameter0: org.hibernate.metamodel.model.domain.NavigableRole;	$r2 = r0.<org.hibernate.cache.spi.support.AbstractDomainDataRegion: java.util.Map naturalIdDataAccessMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.cache.spi.access.NaturalIdDataAccess) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caching was not configured for entity natural-id : ");	$r7 = virtualinvoke r1.<org.hibernate.metamodel.model.domain.NavigableRole: java.lang.String getFullPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2