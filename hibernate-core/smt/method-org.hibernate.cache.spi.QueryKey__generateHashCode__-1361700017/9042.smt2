(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3877 0)
(declare-sort var1016 0)
(declare-sort var2256 0)
(declare-sort var1614 0)
(declare-sort var3006 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3877) Int)
(declare-fun maxRows/-667021461 (var3877) Int)
(declare-fun positionalParameterValues/-667021461 (var3877) (Array Int var1016))
(declare-fun getLength-Arr-var1016-1 ((Array Int var1016)) Int)
(declare-fun namedParameters/-667021461 (var3877) var2256)
(declare-fun var2256_hashCode/1768810987 (var2256) Int)
(declare-fun filterKeys/-667021461 (var3877) var1614)
(declare-fun var1614_hashCode/539623333 (var1614) Int)
(declare-fun customTransformer/-667021461 (var3877) var3006)
(declare-fun hashCode/1497633159 (var3006) Int)
(declare-fun tenantIdentifier/-667021461 (var3877) String)
(declare-fun sqlQueryString/-667021461 (var3877) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3877 var3877)
(declare-const null-Int Int)
(declare-const null-var2256 var2256)
(declare-const null-var1614 var1614)
(declare-const null-var3006 var3006)
(declare-const null-String String)
(declare-const var2390 var3877) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2390 null-var3877)))
(define-const var1838 Int (firstRow/-667021461 var2390)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1838 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1508 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3343 Int (+ 481 var1508)) ; Statement: $i13 = 481 + $i14 
(define-const var1657 Int (* 37 var3343)) ; Statement: $i0 = 37 * $i13 
(define-const var3983 Int (maxRows/-667021461 var2390)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3983 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1878 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3407 Int (+ var1657 var1878)) ; Statement: i16 = $i0 + $i15 
(define-const var2771 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3577 (Array Int var1016) (positionalParameterValues/-667021461 var2390)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2924 Int (getLength-Arr-var1016-1 var3577)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2771 var2924)) ; Cond: i17 >= $i18 
(define-const var3978 Int (* 37 var3407)) ; Statement: $i1 = 37 * i16 
(define-const var3129 var2256 (namedParameters/-667021461 var2390)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3129 null-var2256))) ; Cond: $r5 != null 
(define-const var2930 var2256 (namedParameters/-667021461 var2390)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3204 Int (var2256_hashCode/1768810987 var2930)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var816 Int (+ var3978 var3204)) ; Statement: $i11 = $i1 + $i20 
(define-const var1295 Int (* 37 var816)) ; Statement: $i2 = 37 * $i11 
(define-const var1864 var1614 (filterKeys/-667021461 var2390)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1864 null-var1614))) ; Cond: $r7 != null 
(define-const var2480 var1614 (filterKeys/-667021461 var2390)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2051 Int (var1614_hashCode/539623333 var2480)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3467 Int (+ var1295 var2051)) ; Statement: $i10 = $i2 + $i21 
(define-const var3996 Int (* 37 var3467)) ; Statement: $i3 = 37 * $i10 
(define-const var2085 var3006 (customTransformer/-667021461 var2390)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2085 null-var3006))) ; Cond: $r9 != null 
(define-const var1064 var3006 (customTransformer/-667021461 var2390)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var805 Int (hashCode/1497633159 var1064)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3231 Int (+ var3996 var805)) ; Statement: $i9 = $i3 + $i22 
(define-const var916 Int (* 37 var3231)) ; Statement: $i4 = 37 * $i9 
(define-const var59 String (tenantIdentifier/-667021461 var2390)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var59 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var552 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var838 Int (+ var916 var552)) ; Statement: $i7 = $i4 + $i23 
(define-const var1219 Int (* 37 var838)) ; Statement: $i6 = 37 * $i7 
(define-const var964 String (sqlQueryString/-667021461 var2390)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1644 Int (hashCode/-467973558 var964)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3087 Int (+ var1219 var1644)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1016-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2256_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1614_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3877=org.hibernate.cache.spi.QueryKey, var2390=r0, var1838=$r1, var1508=$i14, var3343=$i13, var1657=$i0, var3983=$r3, var1878=$i15, var3407=i16, var2771=i17, var1016=java.lang.Object, var3577=$r20, var2924=$i18, var3978=$i1, var2256=java.util.Map, var3129=$r5, var2930=$r6, var3204=$i20, var816=$i11, var1295=$i2, var1614=java.util.Set, var1864=$r7, var2480=$r8, var2051=$i21, var3467=$i10, var3996=$i3, var3006=org.hibernate.transform.CacheableResultTransformer, var2085=$r9, var1064=$r10, var805=$i22, var3231=$i9, var916=$i4, var59=$r11, var2248=null_type, var552=$i23, var838=$i7, var1219=$i6, var964=$r13, var1644=$i5, var3087=$i8}
; {org.hibernate.cache.spi.QueryKey=var3877, r0=var2390, $r1=var1838, $i14=var1508, $i13=var3343, $i0=var1657, $r3=var3983, $i15=var1878, i16=var3407, i17=var2771, java.lang.Object=var1016, $r20=var3577, $i18=var2924, $i1=var3978, java.util.Map=var2256, $r5=var3129, $r6=var2930, $i20=var3204, $i11=var816, $i2=var1295, java.util.Set=var1614, $r7=var1864, $r8=var2480, $i21=var2051, $i10=var3467, $i3=var3996, org.hibernate.transform.CacheableResultTransformer=var3006, $r9=var2085, $r10=var1064, $i22=var805, $i9=var3231, $i4=var916, $r11=var59, null_type=var2248, $i23=var552, $i7=var838, $i6=var1219, $r13=var964, $i5=var1644, $i8=var3087}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15