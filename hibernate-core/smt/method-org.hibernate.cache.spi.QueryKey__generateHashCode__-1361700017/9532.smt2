(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var1581 0)
(declare-sort var2800 0)
(declare-sort var2872 0)
(declare-sort var2182 0)
(declare-sort var345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1752) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1752) Int)
(declare-fun positionalParameterValues/-667021461 (var1752) (Array Int var1581))
(declare-fun getLength-Arr-var1581-1 ((Array Int var1581)) Int)
(declare-fun namedParameters/-667021461 (var1752) var2800)
(declare-fun var2800_hashCode/1768810987 (var2800) Int)
(declare-fun filterKeys/-667021461 (var1752) var2872)
(declare-fun customTransformer/-667021461 (var1752) var2182)
(declare-fun tenantIdentifier/-667021461 (var1752) String)
(declare-fun sqlQueryString/-667021461 (var1752) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1752 var1752)
(declare-const null-Int Int)
(declare-const null-var2800 var2800)
(declare-const null-var2872 var2872)
(declare-const null-var2182 var2182)
(declare-const null-String String)
(declare-const var3091 var1752) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3091 null-var1752)))
(define-const var655 Int (firstRow/-667021461 var3091)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var655 null-Int))) ; Cond: $r1 != null 
(define-const var3745 Int (firstRow/-667021461 var3091)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var1616 Int (hashCode/569135069 var3745)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3563 Int (+ 481 var1616)) ; Statement: $i13 = 481 + $i14 
(define-const var18 Int (* 37 var3563)) ; Statement: $i0 = 37 * $i13 
(define-const var3695 Int (maxRows/-667021461 var3091)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3695 null-Int))) ; Cond: $r3 != null 
(define-const var1389 Int (maxRows/-667021461 var3091)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1533 Int (hashCode/569135069 var1389)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var39 Int (+ var18 var1533)) ; Statement: i16 = $i0 + $i15 
(define-const var1904 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var783 (Array Int var1581) (positionalParameterValues/-667021461 var3091)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2663 Int (getLength-Arr-var1581-1 var783)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1904 var2663)) ; Cond: i17 >= $i18 
(define-const var3618 Int (* 37 var39)) ; Statement: $i1 = 37 * i16 
(define-const var220 var2800 (namedParameters/-667021461 var3091)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var220 null-var2800))) ; Cond: $r5 != null 
(define-const var2786 var2800 (namedParameters/-667021461 var3091)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var437 Int (var2800_hashCode/1768810987 var2786)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2921 Int (+ var3618 var437)) ; Statement: $i11 = $i1 + $i20 
(define-const var2270 Int (* 37 var2921)) ; Statement: $i2 = 37 * $i11 
(define-const var3107 var2872 (filterKeys/-667021461 var3091)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3107 null-var2872)))) ; Negate: Cond: $r7 != null  
(define-const var3705 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2111 Int (+ var2270 var3705)) ; Statement: $i10 = $i2 + $i21 
(define-const var1208 Int (* 37 var2111)) ; Statement: $i3 = 37 * $i10 
(define-const var1591 var2182 (customTransformer/-667021461 var3091)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1591 null-var2182)))) ; Negate: Cond: $r9 != null  
(define-const var2158 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2737 Int (+ var1208 var2158)) ; Statement: $i9 = $i3 + $i22 
(define-const var768 Int (* 37 var2737)) ; Statement: $i4 = 37 * $i9 
(define-const var1134 String (tenantIdentifier/-667021461 var3091)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1134 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var265 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1306 Int (+ var768 var265)) ; Statement: $i7 = $i4 + $i23 
(define-const var438 Int (* 37 var1306)) ; Statement: $i6 = 37 * $i7 
(define-const var1048 String (sqlQueryString/-667021461 var3091)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1729 Int (hashCode/-467973558 var1048)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var139 Int (+ var438 var1729)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1581-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2800_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1752=org.hibernate.cache.spi.QueryKey, var3091=r0, var655=$r1, var3745=$r2, var1616=$i14, var3563=$i13, var18=$i0, var3695=$r3, var1389=$r4, var1533=$i15, var39=i16, var1904=i17, var1581=java.lang.Object, var783=$r20, var2663=$i18, var3618=$i1, var2800=java.util.Map, var220=$r5, var2786=$r6, var437=$i20, var2921=$i11, var2270=$i2, var2872=java.util.Set, var3107=$r7, var3705=$i21, var2111=$i10, var1208=$i3, var2182=org.hibernate.transform.CacheableResultTransformer, var1591=$r9, var2158=$i22, var2737=$i9, var768=$i4, var1134=$r11, var345=null_type, var265=$i23, var1306=$i7, var438=$i6, var1048=$r13, var1729=$i5, var139=$i8}
; {org.hibernate.cache.spi.QueryKey=var1752, r0=var3091, $r1=var655, $r2=var3745, $i14=var1616, $i13=var3563, $i0=var18, $r3=var3695, $r4=var1389, $i15=var1533, i16=var39, i17=var1904, java.lang.Object=var1581, $r20=var783, $i18=var2663, $i1=var3618, java.util.Map=var2800, $r5=var220, $r6=var2786, $i20=var437, $i11=var2921, $i2=var2270, java.util.Set=var2872, $r7=var3107, $i21=var3705, $i10=var2111, $i3=var1208, org.hibernate.transform.CacheableResultTransformer=var2182, $r9=var1591, $i22=var2158, $i9=var2737, $i4=var768, $r11=var1134, null_type=var345, $i23=var265, $i7=var1306, $i6=var438, $r13=var1048, $i5=var1729, $i8=var139}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15