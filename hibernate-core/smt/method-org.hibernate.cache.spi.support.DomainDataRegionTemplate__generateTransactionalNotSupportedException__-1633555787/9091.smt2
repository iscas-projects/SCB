(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2108 0)
(declare-sort var2699 0)
(declare-sort var865 0)
(declare-sort var931 0)
(declare-sort var43 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2699-init () var2699)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRegionFactory/1626038036 (var931) var865)
(declare-fun cast-from-var2108-to-var931 (var2108) var931)
(declare-fun append/-1031950772 (String var43) String)
(declare-fun cast-from-var865-to-var43 (var865) var43)
(declare-fun getExternalName/1590936462 (var1025) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2699 String) void)
(declare-const null-var2108 var2108)
(declare-const var1025-TRANSACTIONAL var1025)
(declare-const var2255 var2108) ; Statement: r2 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate 
(assert (not (= var2255 null-var2108)))
(define-const var1923 var2699 var2699-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var273 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var273)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var273!1 String)
(assert (= var273!1 ""))
(assert true)
(define-const var2548 String (append/672562846 var273!1 "Cache provider [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cache provider [") 
(declare-const var273!2 String)
(assert (= var273!2 (str.++ var273!1 "Cache provider [")))
(assert true)
(define-const var3072 var865 (getRegionFactory/1626038036 (cast-from-var2108-to-var931 var2255))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.RegionFactory getRegionFactory()>() 
(assert true)
(define-const var3731 String (append/-1031950772 var2548 (cast-from-var865-to-var43 var3072))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2548!1 String)
(assert (str.prefixof var2548 var2548!1))
(assert true)
(define-const var841 String (append/672562846 var3731 "] does not support `")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not support `") 
(declare-const var3731!1 String)
(assert (= var3731!1 (str.++ var3731 "] does not support `")))
(define-const var3655 var1025 var1025-TRANSACTIONAL) ; Statement: $r6 = <org.hibernate.cache.spi.access.AccessType: org.hibernate.cache.spi.access.AccessType TRANSACTIONAL> 
(assert true)
(define-const var251 String (getExternalName/1590936462 var3655)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>() 
(assert true)
(define-const var434 String (append/672562846 var841 var251)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var841!1 String)
(assert (= var841!1 (str.++ var841 var251)))
(assert true)
(define-const var956 String (append/672562846 var434 "` access")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("` access") 
(declare-const var434!1 String)
(assert (= var434!1 (str.++ var434 "` access")))
(assert true)
(define-const var2724 String (toString/-2075883882 var956)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1923 var2724)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r11) 

(declare-const var1923!1 var2699)
(declare-const var2724!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2699-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRegionFactory/1626038036=([org.hibernate.cache.spi.support.AbstractRegion], org.hibernate.cache.spi.RegionFactory), cast-from-var2108-to-var931=([org.hibernate.cache.spi.support.DomainDataRegionTemplate], org.hibernate.cache.spi.support.AbstractRegion), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var865-to-var43=([org.hibernate.cache.spi.RegionFactory], java.lang.Object), getExternalName/1590936462=([org.hibernate.cache.spi.access.AccessType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2108=org.hibernate.cache.spi.support.DomainDataRegionTemplate, var2255=r2, var2699=java.lang.UnsupportedOperationException, var1923=$r0, var273=$r1, var2548=$r4, var865=org.hibernate.cache.spi.RegionFactory, var931=org.hibernate.cache.spi.support.AbstractRegion, var3072=$r3, var43=java.lang.Object, var3731=$r5, var841=$r8, var1025=org.hibernate.cache.spi.access.AccessType, var3655=$r6, var251=$r7, var434=$r9, var956=$r10, var2724=$r11}
; {org.hibernate.cache.spi.support.DomainDataRegionTemplate=var2108, r2=var2255, java.lang.UnsupportedOperationException=var2699, $r0=var1923, $r1=var273, $r4=var2548, org.hibernate.cache.spi.RegionFactory=var865, org.hibernate.cache.spi.support.AbstractRegion=var931, $r3=var3072, java.lang.Object=var43, $r5=var3731, $r8=var841, org.hibernate.cache.spi.access.AccessType=var1025, $r6=var3655, $r7=var251, $r9=var434, $r10=var956, $r11=var2724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.cache.spi.support.DomainDataRegionTemplate;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cache provider [");	$r3 = virtualinvoke r2.<org.hibernate.cache.spi.support.DomainDataRegionTemplate: org.hibernate.cache.spi.RegionFactory getRegionFactory()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not support `");	$r6 = <org.hibernate.cache.spi.access.AccessType: org.hibernate.cache.spi.access.AccessType TRANSACTIONAL>;	$r7 = virtualinvoke $r6.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("` access");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r11);	return $r0
;block_num 1