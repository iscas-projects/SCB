(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var738 0)
(declare-sort var3931 0)
(declare-sort var1691 0)
(declare-sort var1832 0)
(declare-sort var3373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var138) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var138) Int)
(declare-fun positionalParameterValues/-667021461 (var138) (Array Int var738))
(declare-fun getLength-Arr-var738-1 ((Array Int var738)) Int)
(declare-fun namedParameters/-667021461 (var138) var3931)
(declare-fun var3931_hashCode/1768810987 (var3931) Int)
(declare-fun filterKeys/-667021461 (var138) var1691)
(declare-fun var1691_hashCode/539623333 (var1691) Int)
(declare-fun customTransformer/-667021461 (var138) var1832)
(declare-fun tenantIdentifier/-667021461 (var138) String)
(declare-fun sqlQueryString/-667021461 (var138) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var138 var138)
(declare-const null-Int Int)
(declare-const null-var3931 var3931)
(declare-const null-var1691 var1691)
(declare-const null-var1832 var1832)
(declare-const null-String String)
(declare-const var2600 var138) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2600 null-var138)))
(define-const var1546 Int (firstRow/-667021461 var2600)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1546 null-Int))) ; Cond: $r1 != null 
(define-const var2940 Int (firstRow/-667021461 var2600)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3704 Int (hashCode/569135069 var2940)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var390 Int (+ 481 var3704)) ; Statement: $i13 = 481 + $i14 
(define-const var2707 Int (* 37 var390)) ; Statement: $i0 = 37 * $i13 
(define-const var2411 Int (maxRows/-667021461 var2600)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2411 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2450 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var712 Int (+ var2707 var2450)) ; Statement: i16 = $i0 + $i15 
(define-const var1630 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1755 (Array Int var738) (positionalParameterValues/-667021461 var2600)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3392 Int (getLength-Arr-var738-1 var1755)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1630 var3392)) ; Cond: i17 >= $i18 
(define-const var1836 Int (* 37 var712)) ; Statement: $i1 = 37 * i16 
(define-const var3014 var3931 (namedParameters/-667021461 var2600)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3014 null-var3931))) ; Cond: $r5 != null 
(define-const var2936 var3931 (namedParameters/-667021461 var2600)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1529 Int (var3931_hashCode/1768810987 var2936)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1989 Int (+ var1836 var1529)) ; Statement: $i11 = $i1 + $i20 
(define-const var2702 Int (* 37 var1989)) ; Statement: $i2 = 37 * $i11 
(define-const var3851 var1691 (filterKeys/-667021461 var2600)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3851 null-var1691))) ; Cond: $r7 != null 
(define-const var3607 var1691 (filterKeys/-667021461 var2600)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2988 Int (var1691_hashCode/539623333 var3607)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var751 Int (+ var2702 var2988)) ; Statement: $i10 = $i2 + $i21 
(define-const var3738 Int (* 37 var751)) ; Statement: $i3 = 37 * $i10 
(define-const var167 var1832 (customTransformer/-667021461 var2600)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var167 null-var1832)))) ; Negate: Cond: $r9 != null  
(define-const var1916 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2699 Int (+ var3738 var1916)) ; Statement: $i9 = $i3 + $i22 
(define-const var2636 Int (* 37 var2699)) ; Statement: $i4 = 37 * $i9 
(define-const var1763 String (tenantIdentifier/-667021461 var2600)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1763 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var466 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var128 Int (+ var2636 var466)) ; Statement: $i7 = $i4 + $i23 
(define-const var1353 Int (* 37 var128)) ; Statement: $i6 = 37 * $i7 
(define-const var1250 String (sqlQueryString/-667021461 var2600)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1447 Int (hashCode/-467973558 var1250)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2627 Int (+ var1353 var1447)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var738-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3931_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1691_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var138=org.hibernate.cache.spi.QueryKey, var2600=r0, var1546=$r1, var2940=$r2, var3704=$i14, var390=$i13, var2707=$i0, var2411=$r3, var2450=$i15, var712=i16, var1630=i17, var738=java.lang.Object, var1755=$r20, var3392=$i18, var1836=$i1, var3931=java.util.Map, var3014=$r5, var2936=$r6, var1529=$i20, var1989=$i11, var2702=$i2, var1691=java.util.Set, var3851=$r7, var3607=$r8, var2988=$i21, var751=$i10, var3738=$i3, var1832=org.hibernate.transform.CacheableResultTransformer, var167=$r9, var1916=$i22, var2699=$i9, var2636=$i4, var1763=$r11, var3373=null_type, var466=$i23, var128=$i7, var1353=$i6, var1250=$r13, var1447=$i5, var2627=$i8}
; {org.hibernate.cache.spi.QueryKey=var138, r0=var2600, $r1=var1546, $r2=var2940, $i14=var3704, $i13=var390, $i0=var2707, $r3=var2411, $i15=var2450, i16=var712, i17=var1630, java.lang.Object=var738, $r20=var1755, $i18=var3392, $i1=var1836, java.util.Map=var3931, $r5=var3014, $r6=var2936, $i20=var1529, $i11=var1989, $i2=var2702, java.util.Set=var1691, $r7=var3851, $r8=var3607, $i21=var2988, $i10=var751, $i3=var3738, org.hibernate.transform.CacheableResultTransformer=var1832, $r9=var167, $i22=var1916, $i9=var2699, $i4=var2636, $r11=var1763, null_type=var3373, $i23=var466, $i7=var128, $i6=var1353, $r13=var1250, $i5=var1447, $i8=var2627}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15