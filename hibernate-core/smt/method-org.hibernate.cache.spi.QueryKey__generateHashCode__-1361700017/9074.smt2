(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1624 0)
(declare-sort var498 0)
(declare-sort var412 0)
(declare-sort var1146 0)
(declare-sort var3433 0)
(declare-sort var3347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1624) Int)
(declare-fun maxRows/-667021461 (var1624) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1624) (Array Int var498))
(declare-fun getLength-Arr-var498-1 ((Array Int var498)) Int)
(declare-fun namedParameters/-667021461 (var1624) var412)
(declare-fun filterKeys/-667021461 (var1624) var1146)
(declare-fun customTransformer/-667021461 (var1624) var3433)
(declare-fun tenantIdentifier/-667021461 (var1624) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1624) String)
(declare-const null-var1624 var1624)
(declare-const null-Int Int)
(declare-const null-var412 var412)
(declare-const null-var1146 var1146)
(declare-const null-var3433 var3433)
(declare-const null-String String)
(declare-const var1725 var1624) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1725 null-var1624)))
(define-const var3282 Int (firstRow/-667021461 var1725)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3282 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var3493 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var178 Int (+ 481 var3493)) ; Statement: $i13 = 481 + $i14 
(define-const var1506 Int (* 37 var178)) ; Statement: $i0 = 37 * $i13 
(define-const var1589 Int (maxRows/-667021461 var1725)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1589 null-Int))) ; Cond: $r3 != null 
(define-const var2538 Int (maxRows/-667021461 var1725)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var138 Int (hashCode/569135069 var2538)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1285 Int (+ var1506 var138)) ; Statement: i16 = $i0 + $i15 
(define-const var1356 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3780 (Array Int var498) (positionalParameterValues/-667021461 var1725)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3269 Int (getLength-Arr-var498-1 var3780)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1356 var3269)) ; Cond: i17 >= $i18 
(define-const var3222 Int (* 37 var1285)) ; Statement: $i1 = 37 * i16 
(define-const var1420 var412 (namedParameters/-667021461 var1725)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1420 null-var412)))) ; Negate: Cond: $r5 != null  
(define-const var3026 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var3972 Int (+ var3222 var3026)) ; Statement: $i11 = $i1 + $i20 
(define-const var922 Int (* 37 var3972)) ; Statement: $i2 = 37 * $i11 
(define-const var1599 var1146 (filterKeys/-667021461 var1725)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1599 null-var1146)))) ; Negate: Cond: $r7 != null  
(define-const var266 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var995 Int (+ var922 var266)) ; Statement: $i10 = $i2 + $i21 
(define-const var3863 Int (* 37 var995)) ; Statement: $i3 = 37 * $i10 
(define-const var2171 var3433 (customTransformer/-667021461 var1725)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2171 null-var3433)))) ; Negate: Cond: $r9 != null  
(define-const var169 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1975 Int (+ var3863 var169)) ; Statement: $i9 = $i3 + $i22 
(define-const var58 Int (* 37 var1975)) ; Statement: $i4 = 37 * $i9 
(define-const var905 String (tenantIdentifier/-667021461 var1725)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var905 null-String))) ; Cond: $r11 != null 
(define-const var1242 String (tenantIdentifier/-667021461 var1725)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1885 Int (hashCode/-467973558 var1242)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2999 Int (+ var58 var1885)) ; Statement: $i7 = $i4 + $i23 
(define-const var2557 Int (* 37 var2999)) ; Statement: $i6 = 37 * $i7 
(define-const var705 String (sqlQueryString/-667021461 var1725)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1937 Int (hashCode/-467973558 var705)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2983 Int (+ var2557 var1937)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var498-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1624=org.hibernate.cache.spi.QueryKey, var1725=r0, var3282=$r1, var3493=$i14, var178=$i13, var1506=$i0, var1589=$r3, var2538=$r4, var138=$i15, var1285=i16, var1356=i17, var498=java.lang.Object, var3780=$r20, var3269=$i18, var3222=$i1, var412=java.util.Map, var1420=$r5, var3026=$i20, var3972=$i11, var922=$i2, var1146=java.util.Set, var1599=$r7, var266=$i21, var995=$i10, var3863=$i3, var3433=org.hibernate.transform.CacheableResultTransformer, var2171=$r9, var169=$i22, var1975=$i9, var58=$i4, var905=$r11, var3347=null_type, var1242=$r12, var1885=$i23, var2999=$i7, var2557=$i6, var705=$r13, var1937=$i5, var2983=$i8}
; {org.hibernate.cache.spi.QueryKey=var1624, r0=var1725, $r1=var3282, $i14=var3493, $i13=var178, $i0=var1506, $r3=var1589, $r4=var2538, $i15=var138, i16=var1285, i17=var1356, java.lang.Object=var498, $r20=var3780, $i18=var3269, $i1=var3222, java.util.Map=var412, $r5=var1420, $i20=var3026, $i11=var3972, $i2=var922, java.util.Set=var1146, $r7=var1599, $i21=var266, $i10=var995, $i3=var3863, org.hibernate.transform.CacheableResultTransformer=var3433, $r9=var2171, $i22=var169, $i9=var1975, $i4=var58, $r11=var905, null_type=var3347, $r12=var1242, $i23=var1885, $i7=var2999, $i6=var2557, $r13=var705, $i5=var1937, $i8=var2983}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15