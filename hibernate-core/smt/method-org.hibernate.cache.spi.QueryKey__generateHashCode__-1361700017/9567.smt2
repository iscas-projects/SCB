(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1303 0)
(declare-sort var2029 0)
(declare-sort var330 0)
(declare-sort var2644 0)
(declare-sort var2693 0)
(declare-sort var532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1303) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1303) Int)
(declare-fun positionalParameterValues/-667021461 (var1303) (Array Int var2029))
(declare-fun getLength-Arr-var2029-1 ((Array Int var2029)) Int)
(declare-fun namedParameters/-667021461 (var1303) var330)
(declare-fun var330_hashCode/1768810987 (var330) Int)
(declare-fun filterKeys/-667021461 (var1303) var2644)
(declare-fun customTransformer/-667021461 (var1303) var2693)
(declare-fun hashCode/1497633159 (var2693) Int)
(declare-fun tenantIdentifier/-667021461 (var1303) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1303) String)
(declare-const null-var1303 var1303)
(declare-const null-Int Int)
(declare-const null-var330 var330)
(declare-const null-var2644 var2644)
(declare-const null-var2693 var2693)
(declare-const null-String String)
(declare-const var1312 var1303) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1312 null-var1303)))
(define-const var376 Int (firstRow/-667021461 var1312)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var376 null-Int))) ; Cond: $r1 != null 
(define-const var3008 Int (firstRow/-667021461 var1312)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3746 Int (hashCode/569135069 var3008)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var161 Int (+ 481 var3746)) ; Statement: $i13 = 481 + $i14 
(define-const var1347 Int (* 37 var161)) ; Statement: $i0 = 37 * $i13 
(define-const var3207 Int (maxRows/-667021461 var1312)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3207 null-Int))) ; Cond: $r3 != null 
(define-const var800 Int (maxRows/-667021461 var1312)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var705 Int (hashCode/569135069 var800)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1677 Int (+ var1347 var705)) ; Statement: i16 = $i0 + $i15 
(define-const var897 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3669 (Array Int var2029) (positionalParameterValues/-667021461 var1312)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2274 Int (getLength-Arr-var2029-1 var3669)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var897 var2274)) ; Cond: i17 >= $i18 
(define-const var3683 Int (* 37 var1677)) ; Statement: $i1 = 37 * i16 
(define-const var2095 var330 (namedParameters/-667021461 var1312)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2095 null-var330))) ; Cond: $r5 != null 
(define-const var716 var330 (namedParameters/-667021461 var1312)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1773 Int (var330_hashCode/1768810987 var716)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1774 Int (+ var3683 var1773)) ; Statement: $i11 = $i1 + $i20 
(define-const var1282 Int (* 37 var1774)) ; Statement: $i2 = 37 * $i11 
(define-const var996 var2644 (filterKeys/-667021461 var1312)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var996 null-var2644)))) ; Negate: Cond: $r7 != null  
(define-const var3827 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3575 Int (+ var1282 var3827)) ; Statement: $i10 = $i2 + $i21 
(define-const var1679 Int (* 37 var3575)) ; Statement: $i3 = 37 * $i10 
(define-const var2809 var2693 (customTransformer/-667021461 var1312)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2809 null-var2693))) ; Cond: $r9 != null 
(define-const var571 var2693 (customTransformer/-667021461 var1312)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var764 Int (hashCode/1497633159 var571)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1611 Int (+ var1679 var764)) ; Statement: $i9 = $i3 + $i22 
(define-const var3586 Int (* 37 var1611)) ; Statement: $i4 = 37 * $i9 
(define-const var3646 String (tenantIdentifier/-667021461 var1312)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3646 null-String))) ; Cond: $r11 != null 
(define-const var182 String (tenantIdentifier/-667021461 var1312)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2683 Int (hashCode/-467973558 var182)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3009 Int (+ var3586 var2683)) ; Statement: $i7 = $i4 + $i23 
(define-const var1021 Int (* 37 var3009)) ; Statement: $i6 = 37 * $i7 
(define-const var2070 String (sqlQueryString/-667021461 var1312)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var370 Int (hashCode/-467973558 var2070)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var64 Int (+ var1021 var370)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2029-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var330_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1303=org.hibernate.cache.spi.QueryKey, var1312=r0, var376=$r1, var3008=$r2, var3746=$i14, var161=$i13, var1347=$i0, var3207=$r3, var800=$r4, var705=$i15, var1677=i16, var897=i17, var2029=java.lang.Object, var3669=$r20, var2274=$i18, var3683=$i1, var330=java.util.Map, var2095=$r5, var716=$r6, var1773=$i20, var1774=$i11, var1282=$i2, var2644=java.util.Set, var996=$r7, var3827=$i21, var3575=$i10, var1679=$i3, var2693=org.hibernate.transform.CacheableResultTransformer, var2809=$r9, var571=$r10, var764=$i22, var1611=$i9, var3586=$i4, var3646=$r11, var532=null_type, var182=$r12, var2683=$i23, var3009=$i7, var1021=$i6, var2070=$r13, var370=$i5, var64=$i8}
; {org.hibernate.cache.spi.QueryKey=var1303, r0=var1312, $r1=var376, $r2=var3008, $i14=var3746, $i13=var161, $i0=var1347, $r3=var3207, $r4=var800, $i15=var705, i16=var1677, i17=var897, java.lang.Object=var2029, $r20=var3669, $i18=var2274, $i1=var3683, java.util.Map=var330, $r5=var2095, $r6=var716, $i20=var1773, $i11=var1774, $i2=var1282, java.util.Set=var2644, $r7=var996, $i21=var3827, $i10=var3575, $i3=var1679, org.hibernate.transform.CacheableResultTransformer=var2693, $r9=var2809, $r10=var571, $i22=var764, $i9=var1611, $i4=var3586, $r11=var3646, null_type=var532, $r12=var182, $i23=var2683, $i7=var3009, $i6=var1021, $r13=var2070, $i5=var370, $i8=var64}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15