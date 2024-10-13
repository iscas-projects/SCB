(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var3578 0)
(declare-sort var1960 0)
(declare-sort var401 0)
(declare-sort var3377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun sqlQueryString/-667021461 (var86) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun positionalParameterValues/-667021461 (var86) (Array Int var3578))
(declare-fun namedParameters/-667021461 (var86) var1960)
(declare-fun filterKeys/-667021461 (var86) var401)
(declare-fun firstRow/-667021461 (var86) Int)
(declare-fun maxRows/-667021461 (var86) Int)
(declare-fun customTransformer/-667021461 (var86) var3377)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var86 var86)
(declare-const null-__Array__Int__var3578__ (Array Int var3578))
(declare-const null-var1960 var1960)
(declare-const null-var401 var401)
(declare-const null-Int Int)
(declare-const null-var3377 var3377)
(declare-const var526 var86) ; Statement: r1 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var526 null-var86)))
(define-const var2510 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2510 "sql: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("sql: ") 
(declare-const var2510!1 String)
(assert (= var2510!1 "sql: "))
(define-const var1388 String (sqlQueryString/-667021461 var526)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var366 String (append/672562846 var2510!1 var1388)) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2510!2 String)
(assert (= var2510!2 (str.++ var2510!1 var1388)))
(define-const var1482 (Array Int var3578) (positionalParameterValues/-667021461 var526)) ; Statement: $r4 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r4 == null goto $r5 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (= var1482 null-__Array__Int__var3578__)) ; Cond: $r4 == null 
(define-const var3093 var1960 (namedParameters/-667021461 var526)) ; Statement: $r5 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 == null goto $r6 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (= var3093 null-var1960)) ; Cond: $r5 == null 
(define-const var2160 var401 (filterKeys/-667021461 var526)) ; Statement: $r6 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r6 == null goto $r7 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (= var2160 null-var401)) ; Cond: $r6 == null 
(define-const var1308 Int (firstRow/-667021461 var526)) ; Statement: $r7 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r7 == null goto $r8 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (= var1308 null-Int)) ; Cond: $r7 == null 
(define-const var2268 Int (maxRows/-667021461 var526)) ; Statement: $r8 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r8 == null goto $r9 = r1.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (= var2268 null-Int)) ; Cond: $r8 == null 
(define-const var3090 var3377 (customTransformer/-667021461 var526)) ; Statement: $r9 = r1.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 == null goto $r10 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3090 null-var3377)) ; Cond: $r9 == null 
(assert true)
(define-const var3860 String (toString/-2075883882 var366)) ; Statement: $r10 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var86=org.hibernate.cache.spi.QueryKey, var526=r1, var2510=$r0, var1388=$r2, var366=r3, var3578=java.lang.Object, var1482=$r4, var1960=java.util.Map, var3093=$r5, var401=java.util.Set, var2160=$r6, var1308=$r7, var2268=$r8, var3377=org.hibernate.transform.CacheableResultTransformer, var3090=$r9, var3860=$r10}
; {org.hibernate.cache.spi.QueryKey=var86, r1=var526, $r0=var2510, $r2=var1388, r3=var366, java.lang.Object=var3578, $r4=var1482, java.util.Map=var1960, $r5=var3093, java.util.Set=var401, $r6=var2160, $r7=var1308, $r8=var2268, org.hibernate.transform.CacheableResultTransformer=var3377, $r9=var3090, $r10=var3860}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.QueryKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("sql: ");	$r2 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	if $r4 == null goto $r5 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r5 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 == null goto $r6 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r6 = r1.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r6 == null goto $r7 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r7 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r7 == null goto $r8 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r8 = r1.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r8 == null goto $r9 = r1.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r9 = r1.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 == null goto $r10 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7