(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var3652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cacheRegionName/2021632586 (var51) String)
(declare-fun getCacheHitCount/643873733 (var51) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun getCacheMissCount/-1738464666 (var51) Int)
(declare-fun getCachePutCount/1089969985 (var51) Int)
(declare-const null-var51 var51)
(declare-const null-String String)
(declare-const var2031 var51) ; Statement: r1 := @this: org.hibernate.stat.internal.AbstractCacheableDataStatistics 
(assert (not (= var2031 null-var51)))
(declare-const var402 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var402 null-String)))
(assert true)
(define-const var2207 String (append/672562846 var402 ",cacheRegion=")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheRegion=") 
(declare-const var402!1 String)
(assert (= var402!1 (str.++ var402 ",cacheRegion=")))
(define-const var727 String (cacheRegionName/2021632586 var2031)) ; Statement: $r2 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName> 
(assert true)
;(assert (append/672562846 var2207 var727)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2207!1 String)
(assert (= var2207!1 (str.++ var2207 var727)))
(define-const var1573 String (cacheRegionName/2021632586 var2031)) ; Statement: $r4 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName> 
 ; Statement: if $r4 != null goto $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=") 
(assert (not (= var1573 null-String))) ; Cond: $r4 != null 
(assert true)
(define-const var1452 String (append/672562846 var402!1 ",cacheHitCount=")) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=") 
(declare-const var402!2 String)
(assert (= var402!2 (str.++ var402!1 ",cacheHitCount=")))
(assert true)
(define-const var2485 Int (getCacheHitCount/643873733 var2031)) ; Statement: $l0 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCacheHitCount()>() 
(assert true)
(define-const var3968 String (append/-901862667 var1452 var2485)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1452!1 String)
(assert (str.prefixof var1452 var1452!1))
(assert true)
(define-const var3184 String (append/672562846 var3968 ",cacheMissCount=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheMissCount=") 
(declare-const var3968!1 String)
(assert (= var3968!1 (str.++ var3968 ",cacheMissCount=")))
(assert true)
(define-const var2827 Int (getCacheMissCount/-1738464666 var2031)) ; Statement: $l1 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCacheMissCount()>() 
(assert true)
(define-const var2704 String (append/-901862667 var3184 var2827)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3184!1 String)
(assert (str.prefixof var3184 var3184!1))
(assert true)
(define-const var365 String (append/672562846 var2704 ",cachePutCount=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cachePutCount=") 
(declare-const var2704!1 String)
(assert (= var2704!1 (str.++ var2704 ",cachePutCount=")))
(assert true)
(define-const var3480 Int (getCachePutCount/1089969985 var2031)) ; Statement: $l2 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCachePutCount()>() 
(assert true)
;(assert (append/-901862667 var365 var3480)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var365!1 String)
(assert (str.prefixof var365 var365!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cacheRegionName/2021632586=([org.hibernate.stat.internal.AbstractCacheableDataStatistics], java.lang.String), getCacheHitCount/643873733=([org.hibernate.stat.internal.AbstractCacheableDataStatistics], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), getCacheMissCount/-1738464666=([org.hibernate.stat.internal.AbstractCacheableDataStatistics], long), getCachePutCount/1089969985=([org.hibernate.stat.internal.AbstractCacheableDataStatistics], long)}
; {var51=org.hibernate.stat.internal.AbstractCacheableDataStatistics, var2031=r1, var402=r0, var2207=$r3, var727=$r2, var1573=$r4, var3652=null_type, var1452=$r5, var2485=$l0, var3968=$r6, var3184=$r7, var2827=$l1, var2704=$r8, var365=$r9, var3480=$l2}
; {org.hibernate.stat.internal.AbstractCacheableDataStatistics=var51, r1=var2031, r0=var402, $r3=var2207, $r2=var727, $r4=var1573, null_type=var3652, $r5=var1452, $l0=var2485, $r6=var3968, $r7=var3184, $l1=var2827, $r8=var2704, $r9=var365, $l2=var3480}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 3}
;stmts r1 := @this: org.hibernate.stat.internal.AbstractCacheableDataStatistics;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheRegion=");	$r2 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName>;	if $r4 != null goto $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=");	$r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=");	$l0 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCacheHitCount()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheMissCount=");	$l1 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCacheMissCount()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cachePutCount=");	$l2 = virtualinvoke r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: long getCachePutCount()>();	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	return
;block_num 2