(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3228 0)
(declare-sort var617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cacheRegionName/2021632586 (var3228) String)
(declare-const null-var3228 var3228)
(declare-const null-String String)
(declare-const var1730 var3228) ; Statement: r1 := @this: org.hibernate.stat.internal.AbstractCacheableDataStatistics 
(assert (not (= var1730 null-var3228)))
(declare-const var1326 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1326 null-String)))
(assert true)
(define-const var1825 String (append/672562846 var1326 ",cacheRegion=")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheRegion=") 
(declare-const var1326!1 String)
(assert (= var1326!1 (str.++ var1326 ",cacheRegion=")))
(define-const var3773 String (cacheRegionName/2021632586 var1730)) ; Statement: $r2 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName> 
(assert true)
;(assert (append/672562846 var1825 var3773)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1825!1 String)
(assert (= var1825!1 (str.++ var1825 var3773)))
(define-const var162 String (cacheRegionName/2021632586 var1730)) ; Statement: $r4 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName> 
 ; Statement: if $r4 != null goto $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=") 
(assert (not (not (= var162 null-String)))) ; Negate: Cond: $r4 != null  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cacheRegionName/2021632586=([org.hibernate.stat.internal.AbstractCacheableDataStatistics], java.lang.String)}
; {var3228=org.hibernate.stat.internal.AbstractCacheableDataStatistics, var1730=r1, var1326=r0, var1825=$r3, var3773=$r2, var162=$r4, var617=null_type}
; {org.hibernate.stat.internal.AbstractCacheableDataStatistics=var3228, r1=var1730, r0=var1326, $r3=var1825, $r2=var3773, $r4=var162, null_type=var617}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: org.hibernate.stat.internal.AbstractCacheableDataStatistics;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheRegion=");	$r2 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r1.<org.hibernate.stat.internal.AbstractCacheableDataStatistics: java.lang.String cacheRegionName>;	if $r4 != null goto $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",cacheHitCount=");	return
;block_num 2