(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1094 0)
(declare-sort var3571 0)
(declare-sort var2505 0)
(declare-sort var2949 0)
(declare-sort var1666 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1094) Int)
(declare-fun maxRows/-667021461 (var1094) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1094) (Array Int var3571))
(declare-fun getLength-Arr-var3571-1 ((Array Int var3571)) Int)
(declare-fun namedParameters/-667021461 (var1094) var2505)
(declare-fun var2505_hashCode/1768810987 (var2505) Int)
(declare-fun filterKeys/-667021461 (var1094) var2949)
(declare-fun customTransformer/-667021461 (var1094) var1666)
(declare-fun tenantIdentifier/-667021461 (var1094) String)
(declare-fun sqlQueryString/-667021461 (var1094) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1094 var1094)
(declare-const null-Int Int)
(declare-const null-var2505 var2505)
(declare-const null-var2949 var2949)
(declare-const null-var1666 var1666)
(declare-const null-String String)
(declare-const var683 var1094) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var683 null-var1094)))
(define-const var2556 Int (firstRow/-667021461 var683)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2556 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2174 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3700 Int (+ 481 var2174)) ; Statement: $i13 = 481 + $i14 
(define-const var532 Int (* 37 var3700)) ; Statement: $i0 = 37 * $i13 
(define-const var3254 Int (maxRows/-667021461 var683)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3254 null-Int))) ; Cond: $r3 != null 
(define-const var408 Int (maxRows/-667021461 var683)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1297 Int (hashCode/569135069 var408)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var126 Int (+ var532 var1297)) ; Statement: i16 = $i0 + $i15 
(define-const var2288 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var492 (Array Int var3571) (positionalParameterValues/-667021461 var683)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3133 Int (getLength-Arr-var3571-1 var492)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2288 var3133)) ; Cond: i17 >= $i18 
(define-const var317 Int (* 37 var126)) ; Statement: $i1 = 37 * i16 
(define-const var3106 var2505 (namedParameters/-667021461 var683)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3106 null-var2505))) ; Cond: $r5 != null 
(define-const var3979 var2505 (namedParameters/-667021461 var683)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var402 Int (var2505_hashCode/1768810987 var3979)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var302 Int (+ var317 var402)) ; Statement: $i11 = $i1 + $i20 
(define-const var3912 Int (* 37 var302)) ; Statement: $i2 = 37 * $i11 
(define-const var1616 var2949 (filterKeys/-667021461 var683)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1616 null-var2949)))) ; Negate: Cond: $r7 != null  
(define-const var912 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1100 Int (+ var3912 var912)) ; Statement: $i10 = $i2 + $i21 
(define-const var1703 Int (* 37 var1100)) ; Statement: $i3 = 37 * $i10 
(define-const var3496 var1666 (customTransformer/-667021461 var683)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3496 null-var1666)))) ; Negate: Cond: $r9 != null  
(define-const var617 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1150 Int (+ var1703 var617)) ; Statement: $i9 = $i3 + $i22 
(define-const var3843 Int (* 37 var1150)) ; Statement: $i4 = 37 * $i9 
(define-const var1674 String (tenantIdentifier/-667021461 var683)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1674 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1621 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3338 Int (+ var3843 var1621)) ; Statement: $i7 = $i4 + $i23 
(define-const var471 Int (* 37 var3338)) ; Statement: $i6 = 37 * $i7 
(define-const var367 String (sqlQueryString/-667021461 var683)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3478 Int (hashCode/-467973558 var367)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var737 Int (+ var471 var3478)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3571-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2505_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1094=org.hibernate.cache.spi.QueryKey, var683=r0, var2556=$r1, var2174=$i14, var3700=$i13, var532=$i0, var3254=$r3, var408=$r4, var1297=$i15, var126=i16, var2288=i17, var3571=java.lang.Object, var492=$r20, var3133=$i18, var317=$i1, var2505=java.util.Map, var3106=$r5, var3979=$r6, var402=$i20, var302=$i11, var3912=$i2, var2949=java.util.Set, var1616=$r7, var912=$i21, var1100=$i10, var1703=$i3, var1666=org.hibernate.transform.CacheableResultTransformer, var3496=$r9, var617=$i22, var1150=$i9, var3843=$i4, var1674=$r11, var2159=null_type, var1621=$i23, var3338=$i7, var471=$i6, var367=$r13, var3478=$i5, var737=$i8}
; {org.hibernate.cache.spi.QueryKey=var1094, r0=var683, $r1=var2556, $i14=var2174, $i13=var3700, $i0=var532, $r3=var3254, $r4=var408, $i15=var1297, i16=var126, i17=var2288, java.lang.Object=var3571, $r20=var492, $i18=var3133, $i1=var317, java.util.Map=var2505, $r5=var3106, $r6=var3979, $i20=var402, $i11=var302, $i2=var3912, java.util.Set=var2949, $r7=var1616, $i21=var912, $i10=var1100, $i3=var1703, org.hibernate.transform.CacheableResultTransformer=var1666, $r9=var3496, $i22=var617, $i9=var1150, $i4=var3843, $r11=var1674, null_type=var2159, $i23=var1621, $i7=var3338, $i6=var471, $r13=var367, $i5=var3478, $i8=var737}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15