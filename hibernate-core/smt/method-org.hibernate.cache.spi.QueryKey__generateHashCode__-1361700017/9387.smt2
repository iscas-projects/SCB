(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var927 0)
(declare-sort var2561 0)
(declare-sort var1059 0)
(declare-sort var3172 0)
(declare-sort var3141 0)
(declare-sort var1078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var927) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var927) Int)
(declare-fun positionalParameterValues/-667021461 (var927) (Array Int var2561))
(declare-fun getLength-Arr-var2561-1 ((Array Int var2561)) Int)
(declare-fun namedParameters/-667021461 (var927) var1059)
(declare-fun var1059_hashCode/1768810987 (var1059) Int)
(declare-fun filterKeys/-667021461 (var927) var3172)
(declare-fun customTransformer/-667021461 (var927) var3141)
(declare-fun tenantIdentifier/-667021461 (var927) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var927) String)
(declare-const null-var927 var927)
(declare-const null-Int Int)
(declare-const null-var1059 var1059)
(declare-const null-var3172 var3172)
(declare-const null-var3141 var3141)
(declare-const null-String String)
(declare-const var1527 var927) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1527 null-var927)))
(define-const var37 Int (firstRow/-667021461 var1527)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var37 null-Int))) ; Cond: $r1 != null 
(define-const var514 Int (firstRow/-667021461 var1527)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var1897 Int (hashCode/569135069 var514)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3016 Int (+ 481 var1897)) ; Statement: $i13 = 481 + $i14 
(define-const var2215 Int (* 37 var3016)) ; Statement: $i0 = 37 * $i13 
(define-const var1834 Int (maxRows/-667021461 var1527)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1834 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3415 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2194 Int (+ var2215 var3415)) ; Statement: i16 = $i0 + $i15 
(define-const var3737 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3087 (Array Int var2561) (positionalParameterValues/-667021461 var1527)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2473 Int (getLength-Arr-var2561-1 var3087)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3737 var2473)) ; Cond: i17 >= $i18 
(define-const var1681 Int (* 37 var2194)) ; Statement: $i1 = 37 * i16 
(define-const var3552 var1059 (namedParameters/-667021461 var1527)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3552 null-var1059))) ; Cond: $r5 != null 
(define-const var271 var1059 (namedParameters/-667021461 var1527)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var573 Int (var1059_hashCode/1768810987 var271)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var58 Int (+ var1681 var573)) ; Statement: $i11 = $i1 + $i20 
(define-const var1421 Int (* 37 var58)) ; Statement: $i2 = 37 * $i11 
(define-const var1452 var3172 (filterKeys/-667021461 var1527)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1452 null-var3172)))) ; Negate: Cond: $r7 != null  
(define-const var143 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2532 Int (+ var1421 var143)) ; Statement: $i10 = $i2 + $i21 
(define-const var610 Int (* 37 var2532)) ; Statement: $i3 = 37 * $i10 
(define-const var1080 var3141 (customTransformer/-667021461 var1527)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1080 null-var3141)))) ; Negate: Cond: $r9 != null  
(define-const var439 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1715 Int (+ var610 var439)) ; Statement: $i9 = $i3 + $i22 
(define-const var1245 Int (* 37 var1715)) ; Statement: $i4 = 37 * $i9 
(define-const var3508 String (tenantIdentifier/-667021461 var1527)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3508 null-String))) ; Cond: $r11 != null 
(define-const var777 String (tenantIdentifier/-667021461 var1527)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2444 Int (hashCode/-467973558 var777)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1939 Int (+ var1245 var2444)) ; Statement: $i7 = $i4 + $i23 
(define-const var3550 Int (* 37 var1939)) ; Statement: $i6 = 37 * $i7 
(define-const var2772 String (sqlQueryString/-667021461 var1527)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2731 Int (hashCode/-467973558 var2772)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2542 Int (+ var3550 var2731)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2561-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var1059_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var927=org.hibernate.cache.spi.QueryKey, var1527=r0, var37=$r1, var514=$r2, var1897=$i14, var3016=$i13, var2215=$i0, var1834=$r3, var3415=$i15, var2194=i16, var3737=i17, var2561=java.lang.Object, var3087=$r20, var2473=$i18, var1681=$i1, var1059=java.util.Map, var3552=$r5, var271=$r6, var573=$i20, var58=$i11, var1421=$i2, var3172=java.util.Set, var1452=$r7, var143=$i21, var2532=$i10, var610=$i3, var3141=org.hibernate.transform.CacheableResultTransformer, var1080=$r9, var439=$i22, var1715=$i9, var1245=$i4, var3508=$r11, var1078=null_type, var777=$r12, var2444=$i23, var1939=$i7, var3550=$i6, var2772=$r13, var2731=$i5, var2542=$i8}
; {org.hibernate.cache.spi.QueryKey=var927, r0=var1527, $r1=var37, $r2=var514, $i14=var1897, $i13=var3016, $i0=var2215, $r3=var1834, $i15=var3415, i16=var2194, i17=var3737, java.lang.Object=var2561, $r20=var3087, $i18=var2473, $i1=var1681, java.util.Map=var1059, $r5=var3552, $r6=var271, $i20=var573, $i11=var58, $i2=var1421, java.util.Set=var3172, $r7=var1452, $i21=var143, $i10=var2532, $i3=var610, org.hibernate.transform.CacheableResultTransformer=var3141, $r9=var1080, $i22=var439, $i9=var1715, $i4=var1245, $r11=var3508, null_type=var1078, $r12=var777, $i23=var2444, $i7=var1939, $i6=var3550, $r13=var2772, $i5=var2731, $i8=var2542}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15