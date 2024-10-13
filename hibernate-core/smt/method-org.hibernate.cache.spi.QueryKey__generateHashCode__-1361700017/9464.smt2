(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var472 0)
(declare-sort var3465 0)
(declare-sort var1877 0)
(declare-sort var2515 0)
(declare-sort var63 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var472) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var472) Int)
(declare-fun positionalParameterValues/-667021461 (var472) (Array Int var3465))
(declare-fun getLength-Arr-var3465-1 ((Array Int var3465)) Int)
(declare-fun namedParameters/-667021461 (var472) var1877)
(declare-fun filterKeys/-667021461 (var472) var2515)
(declare-fun customTransformer/-667021461 (var472) var63)
(declare-fun tenantIdentifier/-667021461 (var472) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var472) String)
(declare-const null-var472 var472)
(declare-const null-Int Int)
(declare-const null-var1877 var1877)
(declare-const null-var2515 var2515)
(declare-const null-var63 var63)
(declare-const null-String String)
(declare-const var3306 var472) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3306 null-var472)))
(define-const var2576 Int (firstRow/-667021461 var3306)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2576 null-Int))) ; Cond: $r1 != null 
(define-const var1667 Int (firstRow/-667021461 var3306)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3550 Int (hashCode/569135069 var1667)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3371 Int (+ 481 var3550)) ; Statement: $i13 = 481 + $i14 
(define-const var1595 Int (* 37 var3371)) ; Statement: $i0 = 37 * $i13 
(define-const var694 Int (maxRows/-667021461 var3306)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var694 null-Int))) ; Cond: $r3 != null 
(define-const var2302 Int (maxRows/-667021461 var3306)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var2360 Int (hashCode/569135069 var2302)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1330 Int (+ var1595 var2360)) ; Statement: i16 = $i0 + $i15 
(define-const var1194 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3748 (Array Int var3465) (positionalParameterValues/-667021461 var3306)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1466 Int (getLength-Arr-var3465-1 var3748)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1194 var1466)) ; Cond: i17 >= $i18 
(define-const var1691 Int (* 37 var1330)) ; Statement: $i1 = 37 * i16 
(define-const var948 var1877 (namedParameters/-667021461 var3306)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var948 null-var1877)))) ; Negate: Cond: $r5 != null  
(define-const var1526 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2295 Int (+ var1691 var1526)) ; Statement: $i11 = $i1 + $i20 
(define-const var935 Int (* 37 var2295)) ; Statement: $i2 = 37 * $i11 
(define-const var2804 var2515 (filterKeys/-667021461 var3306)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2804 null-var2515)))) ; Negate: Cond: $r7 != null  
(define-const var984 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1092 Int (+ var935 var984)) ; Statement: $i10 = $i2 + $i21 
(define-const var2505 Int (* 37 var1092)) ; Statement: $i3 = 37 * $i10 
(define-const var3971 var63 (customTransformer/-667021461 var3306)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3971 null-var63)))) ; Negate: Cond: $r9 != null  
(define-const var3236 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var135 Int (+ var2505 var3236)) ; Statement: $i9 = $i3 + $i22 
(define-const var3693 Int (* 37 var135)) ; Statement: $i4 = 37 * $i9 
(define-const var2918 String (tenantIdentifier/-667021461 var3306)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2918 null-String))) ; Cond: $r11 != null 
(define-const var1708 String (tenantIdentifier/-667021461 var3306)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1614 Int (hashCode/-467973558 var1708)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3622 Int (+ var3693 var1614)) ; Statement: $i7 = $i4 + $i23 
(define-const var566 Int (* 37 var3622)) ; Statement: $i6 = 37 * $i7 
(define-const var3132 String (sqlQueryString/-667021461 var3306)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1698 Int (hashCode/-467973558 var3132)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var730 Int (+ var566 var1698)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3465-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var472=org.hibernate.cache.spi.QueryKey, var3306=r0, var2576=$r1, var1667=$r2, var3550=$i14, var3371=$i13, var1595=$i0, var694=$r3, var2302=$r4, var2360=$i15, var1330=i16, var1194=i17, var3465=java.lang.Object, var3748=$r20, var1466=$i18, var1691=$i1, var1877=java.util.Map, var948=$r5, var1526=$i20, var2295=$i11, var935=$i2, var2515=java.util.Set, var2804=$r7, var984=$i21, var1092=$i10, var2505=$i3, var63=org.hibernate.transform.CacheableResultTransformer, var3971=$r9, var3236=$i22, var135=$i9, var3693=$i4, var2918=$r11, var1025=null_type, var1708=$r12, var1614=$i23, var3622=$i7, var566=$i6, var3132=$r13, var1698=$i5, var730=$i8}
; {org.hibernate.cache.spi.QueryKey=var472, r0=var3306, $r1=var2576, $r2=var1667, $i14=var3550, $i13=var3371, $i0=var1595, $r3=var694, $r4=var2302, $i15=var2360, i16=var1330, i17=var1194, java.lang.Object=var3465, $r20=var3748, $i18=var1466, $i1=var1691, java.util.Map=var1877, $r5=var948, $i20=var1526, $i11=var2295, $i2=var935, java.util.Set=var2515, $r7=var2804, $i21=var984, $i10=var1092, $i3=var2505, org.hibernate.transform.CacheableResultTransformer=var63, $r9=var3971, $i22=var3236, $i9=var135, $i4=var3693, $r11=var2918, null_type=var1025, $r12=var1708, $i23=var1614, $i7=var3622, $i6=var566, $r13=var3132, $i5=var1698, $i8=var730}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15