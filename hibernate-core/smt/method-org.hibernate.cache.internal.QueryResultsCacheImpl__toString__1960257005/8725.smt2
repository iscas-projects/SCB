(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var993 0)
(declare-sort var1293 0)
(declare-sort var26 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cacheRegion/-1535440363 (var993) var1293)
(declare-fun var26_getName/-839342387 (var26) String)
(declare-fun cast-from-var1293-to-var26 (var1293) var26)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var993 var993)
(declare-const var1450 var993) ; Statement: r1 := @this: org.hibernate.cache.internal.QueryResultsCacheImpl 
(assert (not (= var1450 null-var993)))
(define-const var1716 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1716)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1716!1 String)
(assert (= var1716!1 ""))
(assert true)
(define-const var97 String (append/672562846 var1716!1 "QueryResultsCache(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryResultsCache(") 
(declare-const var1716!2 String)
(assert (= var1716!2 (str.++ var1716!1 "QueryResultsCache(")))
(define-const var936 var1293 (cacheRegion/-1535440363 var1450)) ; Statement: $r2 = r1.<org.hibernate.cache.internal.QueryResultsCacheImpl: org.hibernate.cache.spi.QueryResultsRegion cacheRegion> 
(define-const var418 String (var26_getName/-839342387 (cast-from-var1293-to-var26 var936))) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.cache.spi.QueryResultsRegion: java.lang.String getName()>() 
(assert true)
(define-const var2865 String (append/672562846 var97 var418)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var97!1 String)
(assert (= var97!1 (str.++ var97 var418)))
(assert true)
(define-const var224 String (append/-1166366385 var2865 41)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2865!1 String)
(assert (str.prefixof var2865 var2865!1))
(assert true)
(define-const var804 String (toString/-2075883882 var224)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cacheRegion/-1535440363=([org.hibernate.cache.internal.QueryResultsCacheImpl], org.hibernate.cache.spi.QueryResultsRegion), var26_getName/-839342387=([org.hibernate.cache.spi.Region], java.lang.String), cast-from-var1293-to-var26=([org.hibernate.cache.spi.QueryResultsRegion], org.hibernate.cache.spi.Region), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var993=org.hibernate.cache.internal.QueryResultsCacheImpl, var1450=r1, var1716=$r0, var97=$r4, var1293=org.hibernate.cache.spi.QueryResultsRegion, var936=$r2, var26=org.hibernate.cache.spi.Region, var418=$r3, var2865=$r5, var224=$r6, var804=$r7}
; {org.hibernate.cache.internal.QueryResultsCacheImpl=var993, r1=var1450, $r0=var1716, $r4=var97, org.hibernate.cache.spi.QueryResultsRegion=var1293, $r2=var936, org.hibernate.cache.spi.Region=var26, $r3=var418, $r5=var2865, $r6=var224, $r7=var804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.internal.QueryResultsCacheImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("QueryResultsCache(");	$r2 = r1.<org.hibernate.cache.internal.QueryResultsCacheImpl: org.hibernate.cache.spi.QueryResultsRegion cacheRegion>;	$r3 = interfaceinvoke $r2.<org.hibernate.cache.spi.QueryResultsRegion: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1