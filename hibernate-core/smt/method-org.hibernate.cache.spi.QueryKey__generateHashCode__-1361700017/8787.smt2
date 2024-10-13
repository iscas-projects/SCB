(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3930 0)
(declare-sort var3936 0)
(declare-sort var1700 0)
(declare-sort var1679 0)
(declare-sort var3311 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3930) Int)
(declare-fun maxRows/-667021461 (var3930) Int)
(declare-fun positionalParameterValues/-667021461 (var3930) (Array Int var3936))
(declare-fun getLength-Arr-var3936-1 ((Array Int var3936)) Int)
(declare-fun namedParameters/-667021461 (var3930) var1700)
(declare-fun filterKeys/-667021461 (var3930) var1679)
(declare-fun customTransformer/-667021461 (var3930) var3311)
(declare-fun hashCode/1497633159 (var3311) Int)
(declare-fun tenantIdentifier/-667021461 (var3930) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3930) String)
(declare-const null-var3930 var3930)
(declare-const null-Int Int)
(declare-const null-var1700 var1700)
(declare-const null-var1679 var1679)
(declare-const null-var3311 var3311)
(declare-const null-String String)
(declare-const var1235 var3930) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1235 null-var3930)))
(define-const var1105 Int (firstRow/-667021461 var1235)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1105 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var56 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var103 Int (+ 481 var56)) ; Statement: $i13 = 481 + $i14 
(define-const var1304 Int (* 37 var103)) ; Statement: $i0 = 37 * $i13 
(define-const var1692 Int (maxRows/-667021461 var1235)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1692 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1861 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1600 Int (+ var1304 var1861)) ; Statement: i16 = $i0 + $i15 
(define-const var1036 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1611 (Array Int var3936) (positionalParameterValues/-667021461 var1235)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var108 Int (getLength-Arr-var3936-1 var1611)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1036 var108)) ; Cond: i17 >= $i18 
(define-const var950 Int (* 37 var1600)) ; Statement: $i1 = 37 * i16 
(define-const var3742 var1700 (namedParameters/-667021461 var1235)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3742 null-var1700)))) ; Negate: Cond: $r5 != null  
(define-const var3203 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2962 Int (+ var950 var3203)) ; Statement: $i11 = $i1 + $i20 
(define-const var2836 Int (* 37 var2962)) ; Statement: $i2 = 37 * $i11 
(define-const var2550 var1679 (filterKeys/-667021461 var1235)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2550 null-var1679)))) ; Negate: Cond: $r7 != null  
(define-const var2708 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3465 Int (+ var2836 var2708)) ; Statement: $i10 = $i2 + $i21 
(define-const var2247 Int (* 37 var3465)) ; Statement: $i3 = 37 * $i10 
(define-const var3057 var3311 (customTransformer/-667021461 var1235)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3057 null-var3311))) ; Cond: $r9 != null 
(define-const var713 var3311 (customTransformer/-667021461 var1235)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2875 Int (hashCode/1497633159 var713)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3416 Int (+ var2247 var2875)) ; Statement: $i9 = $i3 + $i22 
(define-const var317 Int (* 37 var3416)) ; Statement: $i4 = 37 * $i9 
(define-const var3703 String (tenantIdentifier/-667021461 var1235)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3703 null-String))) ; Cond: $r11 != null 
(define-const var3473 String (tenantIdentifier/-667021461 var1235)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var3603 Int (hashCode/-467973558 var3473)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2774 Int (+ var317 var3603)) ; Statement: $i7 = $i4 + $i23 
(define-const var2949 Int (* 37 var2774)) ; Statement: $i6 = 37 * $i7 
(define-const var129 String (sqlQueryString/-667021461 var1235)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3123 Int (hashCode/-467973558 var129)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2904 Int (+ var2949 var3123)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3936-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3930=org.hibernate.cache.spi.QueryKey, var1235=r0, var1105=$r1, var56=$i14, var103=$i13, var1304=$i0, var1692=$r3, var1861=$i15, var1600=i16, var1036=i17, var3936=java.lang.Object, var1611=$r20, var108=$i18, var950=$i1, var1700=java.util.Map, var3742=$r5, var3203=$i20, var2962=$i11, var2836=$i2, var1679=java.util.Set, var2550=$r7, var2708=$i21, var3465=$i10, var2247=$i3, var3311=org.hibernate.transform.CacheableResultTransformer, var3057=$r9, var713=$r10, var2875=$i22, var3416=$i9, var317=$i4, var3703=$r11, var78=null_type, var3473=$r12, var3603=$i23, var2774=$i7, var2949=$i6, var129=$r13, var3123=$i5, var2904=$i8}
; {org.hibernate.cache.spi.QueryKey=var3930, r0=var1235, $r1=var1105, $i14=var56, $i13=var103, $i0=var1304, $r3=var1692, $i15=var1861, i16=var1600, i17=var1036, java.lang.Object=var3936, $r20=var1611, $i18=var108, $i1=var950, java.util.Map=var1700, $r5=var3742, $i20=var3203, $i11=var2962, $i2=var2836, java.util.Set=var1679, $r7=var2550, $i21=var2708, $i10=var3465, $i3=var2247, org.hibernate.transform.CacheableResultTransformer=var3311, $r9=var3057, $r10=var713, $i22=var2875, $i9=var3416, $i4=var317, $r11=var3703, null_type=var78, $r12=var3473, $i23=var3603, $i7=var2774, $i6=var2949, $r13=var129, $i5=var3123, $i8=var2904}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15