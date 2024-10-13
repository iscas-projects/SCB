(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1121 0)
(declare-sort var1563 0)
(declare-sort var2263 0)
(declare-sort var2588 0)
(declare-sort var832 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1121) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1121) Int)
(declare-fun positionalParameterValues/-667021461 (var1121) (Array Int var1563))
(declare-fun getLength-Arr-var1563-1 ((Array Int var1563)) Int)
(declare-fun namedParameters/-667021461 (var1121) var2263)
(declare-fun filterKeys/-667021461 (var1121) var2588)
(declare-fun customTransformer/-667021461 (var1121) var832)
(declare-fun hashCode/1497633159 (var832) Int)
(declare-fun tenantIdentifier/-667021461 (var1121) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1121) String)
(declare-const null-var1121 var1121)
(declare-const null-Int Int)
(declare-const null-var2263 var2263)
(declare-const null-var2588 var2588)
(declare-const null-var832 var832)
(declare-const null-String String)
(declare-const var357 var1121) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var357 null-var1121)))
(define-const var1551 Int (firstRow/-667021461 var357)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1551 null-Int))) ; Cond: $r1 != null 
(define-const var3580 Int (firstRow/-667021461 var357)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var22 Int (hashCode/569135069 var3580)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var633 Int (+ 481 var22)) ; Statement: $i13 = 481 + $i14 
(define-const var2941 Int (* 37 var633)) ; Statement: $i0 = 37 * $i13 
(define-const var1203 Int (maxRows/-667021461 var357)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1203 null-Int))) ; Cond: $r3 != null 
(define-const var3685 Int (maxRows/-667021461 var357)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var542 Int (hashCode/569135069 var3685)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3340 Int (+ var2941 var542)) ; Statement: i16 = $i0 + $i15 
(define-const var1491 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1403 (Array Int var1563) (positionalParameterValues/-667021461 var357)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1229 Int (getLength-Arr-var1563-1 var1403)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1491 var1229)) ; Cond: i17 >= $i18 
(define-const var1857 Int (* 37 var3340)) ; Statement: $i1 = 37 * i16 
(define-const var218 var2263 (namedParameters/-667021461 var357)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var218 null-var2263)))) ; Negate: Cond: $r5 != null  
(define-const var2583 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var90 Int (+ var1857 var2583)) ; Statement: $i11 = $i1 + $i20 
(define-const var3850 Int (* 37 var90)) ; Statement: $i2 = 37 * $i11 
(define-const var1171 var2588 (filterKeys/-667021461 var357)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1171 null-var2588)))) ; Negate: Cond: $r7 != null  
(define-const var3308 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2712 Int (+ var3850 var3308)) ; Statement: $i10 = $i2 + $i21 
(define-const var1114 Int (* 37 var2712)) ; Statement: $i3 = 37 * $i10 
(define-const var3651 var832 (customTransformer/-667021461 var357)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3651 null-var832))) ; Cond: $r9 != null 
(define-const var1693 var832 (customTransformer/-667021461 var357)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var3012 Int (hashCode/1497633159 var1693)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2373 Int (+ var1114 var3012)) ; Statement: $i9 = $i3 + $i22 
(define-const var3433 Int (* 37 var2373)) ; Statement: $i4 = 37 * $i9 
(define-const var3901 String (tenantIdentifier/-667021461 var357)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3901 null-String))) ; Cond: $r11 != null 
(define-const var2244 String (tenantIdentifier/-667021461 var357)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2166 Int (hashCode/-467973558 var2244)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2702 Int (+ var3433 var2166)) ; Statement: $i7 = $i4 + $i23 
(define-const var673 Int (* 37 var2702)) ; Statement: $i6 = 37 * $i7 
(define-const var950 String (sqlQueryString/-667021461 var357)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1280 Int (hashCode/-467973558 var950)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3053 Int (+ var673 var1280)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1563-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1121=org.hibernate.cache.spi.QueryKey, var357=r0, var1551=$r1, var3580=$r2, var22=$i14, var633=$i13, var2941=$i0, var1203=$r3, var3685=$r4, var542=$i15, var3340=i16, var1491=i17, var1563=java.lang.Object, var1403=$r20, var1229=$i18, var1857=$i1, var2263=java.util.Map, var218=$r5, var2583=$i20, var90=$i11, var3850=$i2, var2588=java.util.Set, var1171=$r7, var3308=$i21, var2712=$i10, var1114=$i3, var832=org.hibernate.transform.CacheableResultTransformer, var3651=$r9, var1693=$r10, var3012=$i22, var2373=$i9, var3433=$i4, var3901=$r11, var3976=null_type, var2244=$r12, var2166=$i23, var2702=$i7, var673=$i6, var950=$r13, var1280=$i5, var3053=$i8}
; {org.hibernate.cache.spi.QueryKey=var1121, r0=var357, $r1=var1551, $r2=var3580, $i14=var22, $i13=var633, $i0=var2941, $r3=var1203, $r4=var3685, $i15=var542, i16=var3340, i17=var1491, java.lang.Object=var1563, $r20=var1403, $i18=var1229, $i1=var1857, java.util.Map=var2263, $r5=var218, $i20=var2583, $i11=var90, $i2=var3850, java.util.Set=var2588, $r7=var1171, $i21=var3308, $i10=var2712, $i3=var1114, org.hibernate.transform.CacheableResultTransformer=var832, $r9=var3651, $r10=var1693, $i22=var3012, $i9=var2373, $i4=var3433, $r11=var3901, null_type=var3976, $r12=var2244, $i23=var2166, $i7=var2702, $i6=var673, $r13=var950, $i5=var1280, $i8=var3053}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15