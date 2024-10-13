(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1274 0)
(declare-sort var237 0)
(declare-sort var3413 0)
(declare-sort var2074 0)
(declare-sort var2321 0)
(declare-sort var3750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1274) Int)
(declare-fun maxRows/-667021461 (var1274) Int)
(declare-fun positionalParameterValues/-667021461 (var1274) (Array Int var237))
(declare-fun getLength-Arr-var237-1 ((Array Int var237)) Int)
(declare-fun namedParameters/-667021461 (var1274) var3413)
(declare-fun var3413_hashCode/1768810987 (var3413) Int)
(declare-fun filterKeys/-667021461 (var1274) var2074)
(declare-fun var2074_hashCode/539623333 (var2074) Int)
(declare-fun customTransformer/-667021461 (var1274) var2321)
(declare-fun tenantIdentifier/-667021461 (var1274) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1274) String)
(declare-const null-var1274 var1274)
(declare-const null-Int Int)
(declare-const null-var3413 var3413)
(declare-const null-var2074 var2074)
(declare-const null-var2321 var2321)
(declare-const null-String String)
(declare-const var3166 var1274) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3166 null-var1274)))
(define-const var2353 Int (firstRow/-667021461 var3166)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2353 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var911 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var197 Int (+ 481 var911)) ; Statement: $i13 = 481 + $i14 
(define-const var1506 Int (* 37 var197)) ; Statement: $i0 = 37 * $i13 
(define-const var2312 Int (maxRows/-667021461 var3166)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2312 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2049 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3858 Int (+ var1506 var2049)) ; Statement: i16 = $i0 + $i15 
(define-const var3780 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3164 (Array Int var237) (positionalParameterValues/-667021461 var3166)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1836 Int (getLength-Arr-var237-1 var3164)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3780 var1836)) ; Cond: i17 >= $i18 
(define-const var3351 Int (* 37 var3858)) ; Statement: $i1 = 37 * i16 
(define-const var2630 var3413 (namedParameters/-667021461 var3166)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2630 null-var3413))) ; Cond: $r5 != null 
(define-const var759 var3413 (namedParameters/-667021461 var3166)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var2665 Int (var3413_hashCode/1768810987 var759)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1785 Int (+ var3351 var2665)) ; Statement: $i11 = $i1 + $i20 
(define-const var84 Int (* 37 var1785)) ; Statement: $i2 = 37 * $i11 
(define-const var375 var2074 (filterKeys/-667021461 var3166)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var375 null-var2074))) ; Cond: $r7 != null 
(define-const var2591 var2074 (filterKeys/-667021461 var3166)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3733 Int (var2074_hashCode/539623333 var2591)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2904 Int (+ var84 var3733)) ; Statement: $i10 = $i2 + $i21 
(define-const var715 Int (* 37 var2904)) ; Statement: $i3 = 37 * $i10 
(define-const var2077 var2321 (customTransformer/-667021461 var3166)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2077 null-var2321)))) ; Negate: Cond: $r9 != null  
(define-const var292 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var353 Int (+ var715 var292)) ; Statement: $i9 = $i3 + $i22 
(define-const var670 Int (* 37 var353)) ; Statement: $i4 = 37 * $i9 
(define-const var1457 String (tenantIdentifier/-667021461 var3166)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1457 null-String))) ; Cond: $r11 != null 
(define-const var3797 String (tenantIdentifier/-667021461 var3166)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1609 Int (hashCode/-467973558 var3797)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2009 Int (+ var670 var1609)) ; Statement: $i7 = $i4 + $i23 
(define-const var1968 Int (* 37 var2009)) ; Statement: $i6 = 37 * $i7 
(define-const var927 String (sqlQueryString/-667021461 var3166)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2146 Int (hashCode/-467973558 var927)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1550 Int (+ var1968 var2146)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var237-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3413_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var2074_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1274=org.hibernate.cache.spi.QueryKey, var3166=r0, var2353=$r1, var911=$i14, var197=$i13, var1506=$i0, var2312=$r3, var2049=$i15, var3858=i16, var3780=i17, var237=java.lang.Object, var3164=$r20, var1836=$i18, var3351=$i1, var3413=java.util.Map, var2630=$r5, var759=$r6, var2665=$i20, var1785=$i11, var84=$i2, var2074=java.util.Set, var375=$r7, var2591=$r8, var3733=$i21, var2904=$i10, var715=$i3, var2321=org.hibernate.transform.CacheableResultTransformer, var2077=$r9, var292=$i22, var353=$i9, var670=$i4, var1457=$r11, var3750=null_type, var3797=$r12, var1609=$i23, var2009=$i7, var1968=$i6, var927=$r13, var2146=$i5, var1550=$i8}
; {org.hibernate.cache.spi.QueryKey=var1274, r0=var3166, $r1=var2353, $i14=var911, $i13=var197, $i0=var1506, $r3=var2312, $i15=var2049, i16=var3858, i17=var3780, java.lang.Object=var237, $r20=var3164, $i18=var1836, $i1=var3351, java.util.Map=var3413, $r5=var2630, $r6=var759, $i20=var2665, $i11=var1785, $i2=var84, java.util.Set=var2074, $r7=var375, $r8=var2591, $i21=var3733, $i10=var2904, $i3=var715, org.hibernate.transform.CacheableResultTransformer=var2321, $r9=var2077, $i22=var292, $i9=var353, $i4=var670, $r11=var1457, null_type=var3750, $r12=var3797, $i23=var1609, $i7=var2009, $i6=var1968, $r13=var927, $i5=var2146, $i8=var1550}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15