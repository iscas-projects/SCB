(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort var3513 0)
(declare-sort var3359 0)
(declare-sort var2874 0)
(declare-sort var868 0)
(declare-sort var2906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1842) Int)
(declare-fun maxRows/-667021461 (var1842) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1842) (Array Int var3513))
(declare-fun getLength-Arr-var3513-1 ((Array Int var3513)) Int)
(declare-fun namedParameters/-667021461 (var1842) var3359)
(declare-fun var3359_hashCode/1768810987 (var3359) Int)
(declare-fun filterKeys/-667021461 (var1842) var2874)
(declare-fun customTransformer/-667021461 (var1842) var868)
(declare-fun hashCode/1497633159 (var868) Int)
(declare-fun tenantIdentifier/-667021461 (var1842) String)
(declare-fun sqlQueryString/-667021461 (var1842) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1842 var1842)
(declare-const null-Int Int)
(declare-const null-var3359 var3359)
(declare-const null-var2874 var2874)
(declare-const null-var868 var868)
(declare-const null-String String)
(declare-const var3008 var1842) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3008 null-var1842)))
(define-const var3409 Int (firstRow/-667021461 var3008)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3409 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var340 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var897 Int (+ 481 var340)) ; Statement: $i13 = 481 + $i14 
(define-const var2975 Int (* 37 var897)) ; Statement: $i0 = 37 * $i13 
(define-const var2562 Int (maxRows/-667021461 var3008)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2562 null-Int))) ; Cond: $r3 != null 
(define-const var1948 Int (maxRows/-667021461 var3008)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3686 Int (hashCode/569135069 var1948)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1370 Int (+ var2975 var3686)) ; Statement: i16 = $i0 + $i15 
(define-const var1447 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1732 (Array Int var3513) (positionalParameterValues/-667021461 var3008)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3071 Int (getLength-Arr-var3513-1 var1732)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1447 var3071)) ; Cond: i17 >= $i18 
(define-const var3323 Int (* 37 var1370)) ; Statement: $i1 = 37 * i16 
(define-const var2452 var3359 (namedParameters/-667021461 var3008)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2452 null-var3359))) ; Cond: $r5 != null 
(define-const var2166 var3359 (namedParameters/-667021461 var3008)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var528 Int (var3359_hashCode/1768810987 var2166)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2123 Int (+ var3323 var528)) ; Statement: $i11 = $i1 + $i20 
(define-const var2435 Int (* 37 var2123)) ; Statement: $i2 = 37 * $i11 
(define-const var1331 var2874 (filterKeys/-667021461 var3008)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1331 null-var2874)))) ; Negate: Cond: $r7 != null  
(define-const var3558 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3109 Int (+ var2435 var3558)) ; Statement: $i10 = $i2 + $i21 
(define-const var2239 Int (* 37 var3109)) ; Statement: $i3 = 37 * $i10 
(define-const var2759 var868 (customTransformer/-667021461 var3008)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2759 null-var868))) ; Cond: $r9 != null 
(define-const var1723 var868 (customTransformer/-667021461 var3008)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2095 Int (hashCode/1497633159 var1723)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2537 Int (+ var2239 var2095)) ; Statement: $i9 = $i3 + $i22 
(define-const var722 Int (* 37 var2537)) ; Statement: $i4 = 37 * $i9 
(define-const var510 String (tenantIdentifier/-667021461 var3008)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var510 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var771 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var2315 Int (+ var722 var771)) ; Statement: $i7 = $i4 + $i23 
(define-const var1016 Int (* 37 var2315)) ; Statement: $i6 = 37 * $i7 
(define-const var342 String (sqlQueryString/-667021461 var3008)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var749 Int (hashCode/-467973558 var342)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2099 Int (+ var1016 var749)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3513-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3359_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1842=org.hibernate.cache.spi.QueryKey, var3008=r0, var3409=$r1, var340=$i14, var897=$i13, var2975=$i0, var2562=$r3, var1948=$r4, var3686=$i15, var1370=i16, var1447=i17, var3513=java.lang.Object, var1732=$r20, var3071=$i18, var3323=$i1, var3359=java.util.Map, var2452=$r5, var2166=$r6, var528=$i20, var2123=$i11, var2435=$i2, var2874=java.util.Set, var1331=$r7, var3558=$i21, var3109=$i10, var2239=$i3, var868=org.hibernate.transform.CacheableResultTransformer, var2759=$r9, var1723=$r10, var2095=$i22, var2537=$i9, var722=$i4, var510=$r11, var2906=null_type, var771=$i23, var2315=$i7, var1016=$i6, var342=$r13, var749=$i5, var2099=$i8}
; {org.hibernate.cache.spi.QueryKey=var1842, r0=var3008, $r1=var3409, $i14=var340, $i13=var897, $i0=var2975, $r3=var2562, $r4=var1948, $i15=var3686, i16=var1370, i17=var1447, java.lang.Object=var3513, $r20=var1732, $i18=var3071, $i1=var3323, java.util.Map=var3359, $r5=var2452, $r6=var2166, $i20=var528, $i11=var2123, $i2=var2435, java.util.Set=var2874, $r7=var1331, $i21=var3558, $i10=var3109, $i3=var2239, org.hibernate.transform.CacheableResultTransformer=var868, $r9=var2759, $r10=var1723, $i22=var2095, $i9=var2537, $i4=var722, $r11=var510, null_type=var2906, $i23=var771, $i7=var2315, $i6=var1016, $r13=var342, $i5=var749, $i8=var2099}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15