(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1914 0)
(declare-sort var3592 0)
(declare-sort var1437 0)
(declare-sort var3008 0)
(declare-sort var3915 0)
(declare-sort var3026 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1914) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1914) Int)
(declare-fun positionalParameterValues/-667021461 (var1914) (Array Int var3592))
(declare-fun getLength-Arr-var3592-1 ((Array Int var3592)) Int)
(declare-fun namedParameters/-667021461 (var1914) var1437)
(declare-fun filterKeys/-667021461 (var1914) var3008)
(declare-fun var3008_hashCode/539623333 (var3008) Int)
(declare-fun customTransformer/-667021461 (var1914) var3915)
(declare-fun hashCode/1497633159 (var3915) Int)
(declare-fun tenantIdentifier/-667021461 (var1914) String)
(declare-fun sqlQueryString/-667021461 (var1914) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1914 var1914)
(declare-const null-Int Int)
(declare-const null-var1437 var1437)
(declare-const null-var3008 var3008)
(declare-const null-var3915 var3915)
(declare-const null-String String)
(declare-const var1211 var1914) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1211 null-var1914)))
(define-const var1546 Int (firstRow/-667021461 var1211)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1546 null-Int))) ; Cond: $r1 != null 
(define-const var2344 Int (firstRow/-667021461 var1211)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var1474 Int (hashCode/569135069 var2344)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3771 Int (+ 481 var1474)) ; Statement: $i13 = 481 + $i14 
(define-const var2284 Int (* 37 var3771)) ; Statement: $i0 = 37 * $i13 
(define-const var3540 Int (maxRows/-667021461 var1211)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3540 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1449 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var844 Int (+ var2284 var1449)) ; Statement: i16 = $i0 + $i15 
(define-const var2263 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2031 (Array Int var3592) (positionalParameterValues/-667021461 var1211)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1510 Int (getLength-Arr-var3592-1 var2031)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2263 var1510)) ; Cond: i17 >= $i18 
(define-const var1384 Int (* 37 var844)) ; Statement: $i1 = 37 * i16 
(define-const var2635 var1437 (namedParameters/-667021461 var1211)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2635 null-var1437)))) ; Negate: Cond: $r5 != null  
(define-const var1433 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2670 Int (+ var1384 var1433)) ; Statement: $i11 = $i1 + $i20 
(define-const var1162 Int (* 37 var2670)) ; Statement: $i2 = 37 * $i11 
(define-const var125 var3008 (filterKeys/-667021461 var1211)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var125 null-var3008))) ; Cond: $r7 != null 
(define-const var1718 var3008 (filterKeys/-667021461 var1211)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3490 Int (var3008_hashCode/539623333 var1718)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2997 Int (+ var1162 var3490)) ; Statement: $i10 = $i2 + $i21 
(define-const var3042 Int (* 37 var2997)) ; Statement: $i3 = 37 * $i10 
(define-const var56 var3915 (customTransformer/-667021461 var1211)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var56 null-var3915))) ; Cond: $r9 != null 
(define-const var2293 var3915 (customTransformer/-667021461 var1211)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2341 Int (hashCode/1497633159 var2293)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var634 Int (+ var3042 var2341)) ; Statement: $i9 = $i3 + $i22 
(define-const var2369 Int (* 37 var634)) ; Statement: $i4 = 37 * $i9 
(define-const var2804 String (tenantIdentifier/-667021461 var1211)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2804 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var459 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var330 Int (+ var2369 var459)) ; Statement: $i7 = $i4 + $i23 
(define-const var1661 Int (* 37 var330)) ; Statement: $i6 = 37 * $i7 
(define-const var3300 String (sqlQueryString/-667021461 var1211)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2494 Int (hashCode/-467973558 var3300)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3345 Int (+ var1661 var2494)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3592-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3008_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1914=org.hibernate.cache.spi.QueryKey, var1211=r0, var1546=$r1, var2344=$r2, var1474=$i14, var3771=$i13, var2284=$i0, var3540=$r3, var1449=$i15, var844=i16, var2263=i17, var3592=java.lang.Object, var2031=$r20, var1510=$i18, var1384=$i1, var1437=java.util.Map, var2635=$r5, var1433=$i20, var2670=$i11, var1162=$i2, var3008=java.util.Set, var125=$r7, var1718=$r8, var3490=$i21, var2997=$i10, var3042=$i3, var3915=org.hibernate.transform.CacheableResultTransformer, var56=$r9, var2293=$r10, var2341=$i22, var634=$i9, var2369=$i4, var2804=$r11, var3026=null_type, var459=$i23, var330=$i7, var1661=$i6, var3300=$r13, var2494=$i5, var3345=$i8}
; {org.hibernate.cache.spi.QueryKey=var1914, r0=var1211, $r1=var1546, $r2=var2344, $i14=var1474, $i13=var3771, $i0=var2284, $r3=var3540, $i15=var1449, i16=var844, i17=var2263, java.lang.Object=var3592, $r20=var2031, $i18=var1510, $i1=var1384, java.util.Map=var1437, $r5=var2635, $i20=var1433, $i11=var2670, $i2=var1162, java.util.Set=var3008, $r7=var125, $r8=var1718, $i21=var3490, $i10=var2997, $i3=var3042, org.hibernate.transform.CacheableResultTransformer=var3915, $r9=var56, $r10=var2293, $i22=var2341, $i9=var634, $i4=var2369, $r11=var2804, null_type=var3026, $i23=var459, $i7=var330, $i6=var1661, $r13=var3300, $i5=var2494, $i8=var3345}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15