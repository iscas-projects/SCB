(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3431 0)
(declare-sort var764 0)
(declare-sort var581 0)
(declare-sort var402 0)
(declare-sort var3610 0)
(declare-sort var2763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3431) Int)
(declare-fun maxRows/-667021461 (var3431) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var3431) (Array Int var764))
(declare-fun getLength-Arr-var764-1 ((Array Int var764)) Int)
(declare-fun namedParameters/-667021461 (var3431) var581)
(declare-fun var581_hashCode/1768810987 (var581) Int)
(declare-fun filterKeys/-667021461 (var3431) var402)
(declare-fun customTransformer/-667021461 (var3431) var3610)
(declare-fun tenantIdentifier/-667021461 (var3431) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3431) String)
(declare-const null-var3431 var3431)
(declare-const null-Int Int)
(declare-const null-var581 var581)
(declare-const null-var402 var402)
(declare-const null-var3610 var3610)
(declare-const null-String String)
(declare-const var3627 var3431) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3627 null-var3431)))
(define-const var549 Int (firstRow/-667021461 var3627)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var549 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var498 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var267 Int (+ 481 var498)) ; Statement: $i13 = 481 + $i14 
(define-const var894 Int (* 37 var267)) ; Statement: $i0 = 37 * $i13 
(define-const var1211 Int (maxRows/-667021461 var3627)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1211 null-Int))) ; Cond: $r3 != null 
(define-const var3218 Int (maxRows/-667021461 var3627)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1340 Int (hashCode/569135069 var3218)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2101 Int (+ var894 var1340)) ; Statement: i16 = $i0 + $i15 
(define-const var2473 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3398 (Array Int var764) (positionalParameterValues/-667021461 var3627)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3942 Int (getLength-Arr-var764-1 var3398)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2473 var3942)) ; Cond: i17 >= $i18 
(define-const var1056 Int (* 37 var2101)) ; Statement: $i1 = 37 * i16 
(define-const var3210 var581 (namedParameters/-667021461 var3627)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3210 null-var581))) ; Cond: $r5 != null 
(define-const var2214 var581 (namedParameters/-667021461 var3627)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var287 Int (var581_hashCode/1768810987 var2214)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3 Int (+ var1056 var287)) ; Statement: $i11 = $i1 + $i20 
(define-const var2065 Int (* 37 var3)) ; Statement: $i2 = 37 * $i11 
(define-const var2486 var402 (filterKeys/-667021461 var3627)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2486 null-var402)))) ; Negate: Cond: $r7 != null  
(define-const var2895 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var617 Int (+ var2065 var2895)) ; Statement: $i10 = $i2 + $i21 
(define-const var3821 Int (* 37 var617)) ; Statement: $i3 = 37 * $i10 
(define-const var3700 var3610 (customTransformer/-667021461 var3627)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3700 null-var3610)))) ; Negate: Cond: $r9 != null  
(define-const var2109 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var3390 Int (+ var3821 var2109)) ; Statement: $i9 = $i3 + $i22 
(define-const var2036 Int (* 37 var3390)) ; Statement: $i4 = 37 * $i9 
(define-const var1744 String (tenantIdentifier/-667021461 var3627)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1744 null-String))) ; Cond: $r11 != null 
(define-const var2962 String (tenantIdentifier/-667021461 var3627)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var687 Int (hashCode/-467973558 var2962)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3609 Int (+ var2036 var687)) ; Statement: $i7 = $i4 + $i23 
(define-const var2967 Int (* 37 var3609)) ; Statement: $i6 = 37 * $i7 
(define-const var1196 String (sqlQueryString/-667021461 var3627)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1074 Int (hashCode/-467973558 var1196)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3454 Int (+ var2967 var1074)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var764-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var581_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3431=org.hibernate.cache.spi.QueryKey, var3627=r0, var549=$r1, var498=$i14, var267=$i13, var894=$i0, var1211=$r3, var3218=$r4, var1340=$i15, var2101=i16, var2473=i17, var764=java.lang.Object, var3398=$r20, var3942=$i18, var1056=$i1, var581=java.util.Map, var3210=$r5, var2214=$r6, var287=$i20, var3=$i11, var2065=$i2, var402=java.util.Set, var2486=$r7, var2895=$i21, var617=$i10, var3821=$i3, var3610=org.hibernate.transform.CacheableResultTransformer, var3700=$r9, var2109=$i22, var3390=$i9, var2036=$i4, var1744=$r11, var2763=null_type, var2962=$r12, var687=$i23, var3609=$i7, var2967=$i6, var1196=$r13, var1074=$i5, var3454=$i8}
; {org.hibernate.cache.spi.QueryKey=var3431, r0=var3627, $r1=var549, $i14=var498, $i13=var267, $i0=var894, $r3=var1211, $r4=var3218, $i15=var1340, i16=var2101, i17=var2473, java.lang.Object=var764, $r20=var3398, $i18=var3942, $i1=var1056, java.util.Map=var581, $r5=var3210, $r6=var2214, $i20=var287, $i11=var3, $i2=var2065, java.util.Set=var402, $r7=var2486, $i21=var2895, $i10=var617, $i3=var3821, org.hibernate.transform.CacheableResultTransformer=var3610, $r9=var3700, $i22=var2109, $i9=var3390, $i4=var2036, $r11=var1744, null_type=var2763, $r12=var2962, $i23=var687, $i7=var3609, $i6=var2967, $r13=var1196, $i5=var1074, $i8=var3454}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15