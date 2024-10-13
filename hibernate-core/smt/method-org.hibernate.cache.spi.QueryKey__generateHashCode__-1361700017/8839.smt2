(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var931 0)
(declare-sort var2474 0)
(declare-sort var3969 0)
(declare-sort var3778 0)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var136) Int)
(declare-fun maxRows/-667021461 (var136) Int)
(declare-fun positionalParameterValues/-667021461 (var136) (Array Int var931))
(declare-fun getLength-Arr-var931-1 ((Array Int var931)) Int)
(declare-fun namedParameters/-667021461 (var136) var2474)
(declare-fun var2474_hashCode/1768810987 (var2474) Int)
(declare-fun filterKeys/-667021461 (var136) var3969)
(declare-fun customTransformer/-667021461 (var136) var3778)
(declare-fun tenantIdentifier/-667021461 (var136) String)
(declare-fun sqlQueryString/-667021461 (var136) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var136 var136)
(declare-const null-Int Int)
(declare-const null-var2474 var2474)
(declare-const null-var3969 var3969)
(declare-const null-var3778 var3778)
(declare-const null-String String)
(declare-const var3691 var136) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3691 null-var136)))
(define-const var2270 Int (firstRow/-667021461 var3691)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2270 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var630 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var1864 Int (+ 481 var630)) ; Statement: $i13 = 481 + $i14 
(define-const var758 Int (* 37 var1864)) ; Statement: $i0 = 37 * $i13 
(define-const var3448 Int (maxRows/-667021461 var3691)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3448 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3286 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2521 Int (+ var758 var3286)) ; Statement: i16 = $i0 + $i15 
(define-const var602 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3895 (Array Int var931) (positionalParameterValues/-667021461 var3691)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var493 Int (getLength-Arr-var931-1 var3895)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var602 var493)) ; Cond: i17 >= $i18 
(define-const var1162 Int (* 37 var2521)) ; Statement: $i1 = 37 * i16 
(define-const var3740 var2474 (namedParameters/-667021461 var3691)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3740 null-var2474))) ; Cond: $r5 != null 
(define-const var3094 var2474 (namedParameters/-667021461 var3691)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var2661 Int (var2474_hashCode/1768810987 var3094)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var376 Int (+ var1162 var2661)) ; Statement: $i11 = $i1 + $i20 
(define-const var594 Int (* 37 var376)) ; Statement: $i2 = 37 * $i11 
(define-const var993 var3969 (filterKeys/-667021461 var3691)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var993 null-var3969)))) ; Negate: Cond: $r7 != null  
(define-const var2656 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1201 Int (+ var594 var2656)) ; Statement: $i10 = $i2 + $i21 
(define-const var2716 Int (* 37 var1201)) ; Statement: $i3 = 37 * $i10 
(define-const var1914 var3778 (customTransformer/-667021461 var3691)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1914 null-var3778)))) ; Negate: Cond: $r9 != null  
(define-const var3377 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1408 Int (+ var2716 var3377)) ; Statement: $i9 = $i3 + $i22 
(define-const var3242 Int (* 37 var1408)) ; Statement: $i4 = 37 * $i9 
(define-const var1163 String (tenantIdentifier/-667021461 var3691)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1163 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2378 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var331 Int (+ var3242 var2378)) ; Statement: $i7 = $i4 + $i23 
(define-const var3099 Int (* 37 var331)) ; Statement: $i6 = 37 * $i7 
(define-const var2497 String (sqlQueryString/-667021461 var3691)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1396 Int (hashCode/-467973558 var2497)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3977 Int (+ var3099 var1396)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var931-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2474_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var136=org.hibernate.cache.spi.QueryKey, var3691=r0, var2270=$r1, var630=$i14, var1864=$i13, var758=$i0, var3448=$r3, var3286=$i15, var2521=i16, var602=i17, var931=java.lang.Object, var3895=$r20, var493=$i18, var1162=$i1, var2474=java.util.Map, var3740=$r5, var3094=$r6, var2661=$i20, var376=$i11, var594=$i2, var3969=java.util.Set, var993=$r7, var2656=$i21, var1201=$i10, var2716=$i3, var3778=org.hibernate.transform.CacheableResultTransformer, var1914=$r9, var3377=$i22, var1408=$i9, var3242=$i4, var1163=$r11, var2117=null_type, var2378=$i23, var331=$i7, var3099=$i6, var2497=$r13, var1396=$i5, var3977=$i8}
; {org.hibernate.cache.spi.QueryKey=var136, r0=var3691, $r1=var2270, $i14=var630, $i13=var1864, $i0=var758, $r3=var3448, $i15=var3286, i16=var2521, i17=var602, java.lang.Object=var931, $r20=var3895, $i18=var493, $i1=var1162, java.util.Map=var2474, $r5=var3740, $r6=var3094, $i20=var2661, $i11=var376, $i2=var594, java.util.Set=var3969, $r7=var993, $i21=var2656, $i10=var1201, $i3=var2716, org.hibernate.transform.CacheableResultTransformer=var3778, $r9=var1914, $i22=var3377, $i9=var1408, $i4=var3242, $r11=var1163, null_type=var2117, $i23=var2378, $i7=var331, $i6=var3099, $r13=var2497, $i5=var1396, $i8=var3977}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15