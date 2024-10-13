(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1231 0)
(declare-sort var151 0)
(declare-sort var3635 0)
(declare-sort var769 0)
(declare-sort var2281 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1231) Int)
(declare-fun maxRows/-667021461 (var1231) Int)
(declare-fun positionalParameterValues/-667021461 (var1231) (Array Int var151))
(declare-fun getLength-Arr-var151-1 ((Array Int var151)) Int)
(declare-fun namedParameters/-667021461 (var1231) var3635)
(declare-fun filterKeys/-667021461 (var1231) var769)
(declare-fun customTransformer/-667021461 (var1231) var2281)
(declare-fun tenantIdentifier/-667021461 (var1231) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1231) String)
(declare-const null-var1231 var1231)
(declare-const null-Int Int)
(declare-const null-var3635 var3635)
(declare-const null-var769 var769)
(declare-const null-var2281 var2281)
(declare-const null-String String)
(declare-const var2921 var1231) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2921 null-var1231)))
(define-const var2326 Int (firstRow/-667021461 var2921)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2326 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1838 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var1651 Int (+ 481 var1838)) ; Statement: $i13 = 481 + $i14 
(define-const var2529 Int (* 37 var1651)) ; Statement: $i0 = 37 * $i13 
(define-const var851 Int (maxRows/-667021461 var2921)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var851 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1213 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3702 Int (+ var2529 var1213)) ; Statement: i16 = $i0 + $i15 
(define-const var719 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1667 (Array Int var151) (positionalParameterValues/-667021461 var2921)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2718 Int (getLength-Arr-var151-1 var1667)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var719 var2718)) ; Cond: i17 >= $i18 
(define-const var1018 Int (* 37 var3702)) ; Statement: $i1 = 37 * i16 
(define-const var1912 var3635 (namedParameters/-667021461 var2921)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1912 null-var3635)))) ; Negate: Cond: $r5 != null  
(define-const var3710 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var566 Int (+ var1018 var3710)) ; Statement: $i11 = $i1 + $i20 
(define-const var3445 Int (* 37 var566)) ; Statement: $i2 = 37 * $i11 
(define-const var1640 var769 (filterKeys/-667021461 var2921)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1640 null-var769)))) ; Negate: Cond: $r7 != null  
(define-const var3540 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3085 Int (+ var3445 var3540)) ; Statement: $i10 = $i2 + $i21 
(define-const var494 Int (* 37 var3085)) ; Statement: $i3 = 37 * $i10 
(define-const var3825 var2281 (customTransformer/-667021461 var2921)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3825 null-var2281)))) ; Negate: Cond: $r9 != null  
(define-const var2040 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1387 Int (+ var494 var2040)) ; Statement: $i9 = $i3 + $i22 
(define-const var841 Int (* 37 var1387)) ; Statement: $i4 = 37 * $i9 
(define-const var1698 String (tenantIdentifier/-667021461 var2921)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1698 null-String))) ; Cond: $r11 != null 
(define-const var2740 String (tenantIdentifier/-667021461 var2921)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2208 Int (hashCode/-467973558 var2740)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3899 Int (+ var841 var2208)) ; Statement: $i7 = $i4 + $i23 
(define-const var3301 Int (* 37 var3899)) ; Statement: $i6 = 37 * $i7 
(define-const var2321 String (sqlQueryString/-667021461 var2921)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2504 Int (hashCode/-467973558 var2321)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3162 Int (+ var3301 var2504)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var151-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1231=org.hibernate.cache.spi.QueryKey, var2921=r0, var2326=$r1, var1838=$i14, var1651=$i13, var2529=$i0, var851=$r3, var1213=$i15, var3702=i16, var719=i17, var151=java.lang.Object, var1667=$r20, var2718=$i18, var1018=$i1, var3635=java.util.Map, var1912=$r5, var3710=$i20, var566=$i11, var3445=$i2, var769=java.util.Set, var1640=$r7, var3540=$i21, var3085=$i10, var494=$i3, var2281=org.hibernate.transform.CacheableResultTransformer, var3825=$r9, var2040=$i22, var1387=$i9, var841=$i4, var1698=$r11, var1536=null_type, var2740=$r12, var2208=$i23, var3899=$i7, var3301=$i6, var2321=$r13, var2504=$i5, var3162=$i8}
; {org.hibernate.cache.spi.QueryKey=var1231, r0=var2921, $r1=var2326, $i14=var1838, $i13=var1651, $i0=var2529, $r3=var851, $i15=var1213, i16=var3702, i17=var719, java.lang.Object=var151, $r20=var1667, $i18=var2718, $i1=var1018, java.util.Map=var3635, $r5=var1912, $i20=var3710, $i11=var566, $i2=var3445, java.util.Set=var769, $r7=var1640, $i21=var3540, $i10=var3085, $i3=var494, org.hibernate.transform.CacheableResultTransformer=var2281, $r9=var3825, $i22=var2040, $i9=var1387, $i4=var841, $r11=var1698, null_type=var1536, $r12=var2740, $i23=var2208, $i7=var3899, $i6=var3301, $r13=var2321, $i5=var2504, $i8=var3162}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15