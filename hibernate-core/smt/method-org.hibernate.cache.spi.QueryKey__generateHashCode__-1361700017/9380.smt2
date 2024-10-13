(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1404 0)
(declare-sort var3538 0)
(declare-sort var2914 0)
(declare-sort var1120 0)
(declare-sort var520 0)
(declare-sort var154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1404) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1404) Int)
(declare-fun positionalParameterValues/-667021461 (var1404) (Array Int var3538))
(declare-fun getLength-Arr-var3538-1 ((Array Int var3538)) Int)
(declare-fun namedParameters/-667021461 (var1404) var2914)
(declare-fun var2914_hashCode/1768810987 (var2914) Int)
(declare-fun filterKeys/-667021461 (var1404) var1120)
(declare-fun customTransformer/-667021461 (var1404) var520)
(declare-fun tenantIdentifier/-667021461 (var1404) String)
(declare-fun sqlQueryString/-667021461 (var1404) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1404 var1404)
(declare-const null-Int Int)
(declare-const null-var2914 var2914)
(declare-const null-var1120 var1120)
(declare-const null-var520 var520)
(declare-const null-String String)
(declare-const var14 var1404) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var14 null-var1404)))
(define-const var1145 Int (firstRow/-667021461 var14)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1145 null-Int))) ; Cond: $r1 != null 
(define-const var3154 Int (firstRow/-667021461 var14)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var951 Int (hashCode/569135069 var3154)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1622 Int (+ 481 var951)) ; Statement: $i13 = 481 + $i14 
(define-const var3348 Int (* 37 var1622)) ; Statement: $i0 = 37 * $i13 
(define-const var3292 Int (maxRows/-667021461 var14)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3292 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2237 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2113 Int (+ var3348 var2237)) ; Statement: i16 = $i0 + $i15 
(define-const var2869 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3224 (Array Int var3538) (positionalParameterValues/-667021461 var14)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1298 Int (getLength-Arr-var3538-1 var3224)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2869 var1298)) ; Cond: i17 >= $i18 
(define-const var3017 Int (* 37 var2113)) ; Statement: $i1 = 37 * i16 
(define-const var675 var2914 (namedParameters/-667021461 var14)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var675 null-var2914))) ; Cond: $r5 != null 
(define-const var2349 var2914 (namedParameters/-667021461 var14)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var193 Int (var2914_hashCode/1768810987 var2349)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3007 Int (+ var3017 var193)) ; Statement: $i11 = $i1 + $i20 
(define-const var62 Int (* 37 var3007)) ; Statement: $i2 = 37 * $i11 
(define-const var3261 var1120 (filterKeys/-667021461 var14)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3261 null-var1120)))) ; Negate: Cond: $r7 != null  
(define-const var3992 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1903 Int (+ var62 var3992)) ; Statement: $i10 = $i2 + $i21 
(define-const var964 Int (* 37 var1903)) ; Statement: $i3 = 37 * $i10 
(define-const var51 var520 (customTransformer/-667021461 var14)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var51 null-var520)))) ; Negate: Cond: $r9 != null  
(define-const var1567 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2446 Int (+ var964 var1567)) ; Statement: $i9 = $i3 + $i22 
(define-const var1581 Int (* 37 var2446)) ; Statement: $i4 = 37 * $i9 
(define-const var298 String (tenantIdentifier/-667021461 var14)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var298 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2071 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var2615 Int (+ var1581 var2071)) ; Statement: $i7 = $i4 + $i23 
(define-const var1136 Int (* 37 var2615)) ; Statement: $i6 = 37 * $i7 
(define-const var2789 String (sqlQueryString/-667021461 var14)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2039 Int (hashCode/-467973558 var2789)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var710 Int (+ var1136 var2039)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3538-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2914_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1404=org.hibernate.cache.spi.QueryKey, var14=r0, var1145=$r1, var3154=$r2, var951=$i14, var1622=$i13, var3348=$i0, var3292=$r3, var2237=$i15, var2113=i16, var2869=i17, var3538=java.lang.Object, var3224=$r20, var1298=$i18, var3017=$i1, var2914=java.util.Map, var675=$r5, var2349=$r6, var193=$i20, var3007=$i11, var62=$i2, var1120=java.util.Set, var3261=$r7, var3992=$i21, var1903=$i10, var964=$i3, var520=org.hibernate.transform.CacheableResultTransformer, var51=$r9, var1567=$i22, var2446=$i9, var1581=$i4, var298=$r11, var154=null_type, var2071=$i23, var2615=$i7, var1136=$i6, var2789=$r13, var2039=$i5, var710=$i8}
; {org.hibernate.cache.spi.QueryKey=var1404, r0=var14, $r1=var1145, $r2=var3154, $i14=var951, $i13=var1622, $i0=var3348, $r3=var3292, $i15=var2237, i16=var2113, i17=var2869, java.lang.Object=var3538, $r20=var3224, $i18=var1298, $i1=var3017, java.util.Map=var2914, $r5=var675, $r6=var2349, $i20=var193, $i11=var3007, $i2=var62, java.util.Set=var1120, $r7=var3261, $i21=var3992, $i10=var1903, $i3=var964, org.hibernate.transform.CacheableResultTransformer=var520, $r9=var51, $i22=var1567, $i9=var2446, $i4=var1581, $r11=var298, null_type=var154, $i23=var2071, $i7=var2615, $i6=var1136, $r13=var2789, $i5=var2039, $i8=var710}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15