(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1900 0)
(declare-sort var1582 0)
(declare-sort var3758 0)
(declare-sort var225 0)
(declare-sort var2884 0)
(declare-sort var1837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1900) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1900) Int)
(declare-fun positionalParameterValues/-667021461 (var1900) (Array Int var1582))
(declare-fun getLength-Arr-var1582-1 ((Array Int var1582)) Int)
(declare-fun namedParameters/-667021461 (var1900) var3758)
(declare-fun var3758_hashCode/1768810987 (var3758) Int)
(declare-fun filterKeys/-667021461 (var1900) var225)
(declare-fun var225_hashCode/539623333 (var225) Int)
(declare-fun customTransformer/-667021461 (var1900) var2884)
(declare-fun hashCode/1497633159 (var2884) Int)
(declare-fun tenantIdentifier/-667021461 (var1900) String)
(declare-fun sqlQueryString/-667021461 (var1900) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1900 var1900)
(declare-const null-Int Int)
(declare-const null-var3758 var3758)
(declare-const null-var225 var225)
(declare-const null-var2884 var2884)
(declare-const null-String String)
(declare-const var2249 var1900) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2249 null-var1900)))
(define-const var2523 Int (firstRow/-667021461 var2249)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2523 null-Int))) ; Cond: $r1 != null 
(define-const var712 Int (firstRow/-667021461 var2249)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2748 Int (hashCode/569135069 var712)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var25 Int (+ 481 var2748)) ; Statement: $i13 = 481 + $i14 
(define-const var2321 Int (* 37 var25)) ; Statement: $i0 = 37 * $i13 
(define-const var3891 Int (maxRows/-667021461 var2249)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3891 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var667 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var326 Int (+ var2321 var667)) ; Statement: i16 = $i0 + $i15 
(define-const var3038 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3420 (Array Int var1582) (positionalParameterValues/-667021461 var2249)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2407 Int (getLength-Arr-var1582-1 var3420)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3038 var2407)) ; Cond: i17 >= $i18 
(define-const var376 Int (* 37 var326)) ; Statement: $i1 = 37 * i16 
(define-const var530 var3758 (namedParameters/-667021461 var2249)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var530 null-var3758))) ; Cond: $r5 != null 
(define-const var3836 var3758 (namedParameters/-667021461 var2249)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var2780 Int (var3758_hashCode/1768810987 var3836)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3774 Int (+ var376 var2780)) ; Statement: $i11 = $i1 + $i20 
(define-const var432 Int (* 37 var3774)) ; Statement: $i2 = 37 * $i11 
(define-const var2058 var225 (filterKeys/-667021461 var2249)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var2058 null-var225))) ; Cond: $r7 != null 
(define-const var674 var225 (filterKeys/-667021461 var2249)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2046 Int (var225_hashCode/539623333 var674)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2494 Int (+ var432 var2046)) ; Statement: $i10 = $i2 + $i21 
(define-const var1465 Int (* 37 var2494)) ; Statement: $i3 = 37 * $i10 
(define-const var1069 var2884 (customTransformer/-667021461 var2249)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1069 null-var2884))) ; Cond: $r9 != null 
(define-const var2929 var2884 (customTransformer/-667021461 var2249)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1241 Int (hashCode/1497633159 var2929)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2566 Int (+ var1465 var1241)) ; Statement: $i9 = $i3 + $i22 
(define-const var1454 Int (* 37 var2566)) ; Statement: $i4 = 37 * $i9 
(define-const var1387 String (tenantIdentifier/-667021461 var2249)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1387 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2590 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1862 Int (+ var1454 var2590)) ; Statement: $i7 = $i4 + $i23 
(define-const var1210 Int (* 37 var1862)) ; Statement: $i6 = 37 * $i7 
(define-const var441 String (sqlQueryString/-667021461 var2249)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2847 Int (hashCode/-467973558 var441)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3313 Int (+ var1210 var2847)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1582-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3758_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var225_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1900=org.hibernate.cache.spi.QueryKey, var2249=r0, var2523=$r1, var712=$r2, var2748=$i14, var25=$i13, var2321=$i0, var3891=$r3, var667=$i15, var326=i16, var3038=i17, var1582=java.lang.Object, var3420=$r20, var2407=$i18, var376=$i1, var3758=java.util.Map, var530=$r5, var3836=$r6, var2780=$i20, var3774=$i11, var432=$i2, var225=java.util.Set, var2058=$r7, var674=$r8, var2046=$i21, var2494=$i10, var1465=$i3, var2884=org.hibernate.transform.CacheableResultTransformer, var1069=$r9, var2929=$r10, var1241=$i22, var2566=$i9, var1454=$i4, var1387=$r11, var1837=null_type, var2590=$i23, var1862=$i7, var1210=$i6, var441=$r13, var2847=$i5, var3313=$i8}
; {org.hibernate.cache.spi.QueryKey=var1900, r0=var2249, $r1=var2523, $r2=var712, $i14=var2748, $i13=var25, $i0=var2321, $r3=var3891, $i15=var667, i16=var326, i17=var3038, java.lang.Object=var1582, $r20=var3420, $i18=var2407, $i1=var376, java.util.Map=var3758, $r5=var530, $r6=var3836, $i20=var2780, $i11=var3774, $i2=var432, java.util.Set=var225, $r7=var2058, $r8=var674, $i21=var2046, $i10=var2494, $i3=var1465, org.hibernate.transform.CacheableResultTransformer=var2884, $r9=var1069, $r10=var2929, $i22=var1241, $i9=var2566, $i4=var1454, $r11=var1387, null_type=var1837, $i23=var2590, $i7=var1862, $i6=var1210, $r13=var441, $i5=var2847, $i8=var3313}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15