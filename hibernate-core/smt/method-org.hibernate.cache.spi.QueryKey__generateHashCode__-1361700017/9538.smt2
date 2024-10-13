(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3949 0)
(declare-sort var2181 0)
(declare-sort var1850 0)
(declare-sort var1541 0)
(declare-sort var2087 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3949) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var3949) Int)
(declare-fun positionalParameterValues/-667021461 (var3949) (Array Int var2181))
(declare-fun getLength-Arr-var2181-1 ((Array Int var2181)) Int)
(declare-fun namedParameters/-667021461 (var3949) var1850)
(declare-fun var1850_hashCode/1768810987 (var1850) Int)
(declare-fun filterKeys/-667021461 (var3949) var1541)
(declare-fun customTransformer/-667021461 (var3949) var2087)
(declare-fun tenantIdentifier/-667021461 (var3949) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3949) String)
(declare-const null-var3949 var3949)
(declare-const null-Int Int)
(declare-const null-var1850 var1850)
(declare-const null-var1541 var1541)
(declare-const null-var2087 var2087)
(declare-const null-String String)
(declare-const var1907 var3949) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1907 null-var3949)))
(define-const var325 Int (firstRow/-667021461 var1907)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var325 null-Int))) ; Cond: $r1 != null 
(define-const var1649 Int (firstRow/-667021461 var1907)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3078 Int (hashCode/569135069 var1649)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3796 Int (+ 481 var3078)) ; Statement: $i13 = 481 + $i14 
(define-const var3852 Int (* 37 var3796)) ; Statement: $i0 = 37 * $i13 
(define-const var1147 Int (maxRows/-667021461 var1907)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1147 null-Int))) ; Cond: $r3 != null 
(define-const var375 Int (maxRows/-667021461 var1907)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3802 Int (hashCode/569135069 var375)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1754 Int (+ var3852 var3802)) ; Statement: i16 = $i0 + $i15 
(define-const var2323 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1125 (Array Int var2181) (positionalParameterValues/-667021461 var1907)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1832 Int (getLength-Arr-var2181-1 var1125)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2323 var1832)) ; Cond: i17 >= $i18 
(define-const var962 Int (* 37 var1754)) ; Statement: $i1 = 37 * i16 
(define-const var3766 var1850 (namedParameters/-667021461 var1907)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3766 null-var1850))) ; Cond: $r5 != null 
(define-const var3463 var1850 (namedParameters/-667021461 var1907)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var710 Int (var1850_hashCode/1768810987 var3463)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3505 Int (+ var962 var710)) ; Statement: $i11 = $i1 + $i20 
(define-const var192 Int (* 37 var3505)) ; Statement: $i2 = 37 * $i11 
(define-const var2051 var1541 (filterKeys/-667021461 var1907)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2051 null-var1541)))) ; Negate: Cond: $r7 != null  
(define-const var607 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var783 Int (+ var192 var607)) ; Statement: $i10 = $i2 + $i21 
(define-const var3460 Int (* 37 var783)) ; Statement: $i3 = 37 * $i10 
(define-const var228 var2087 (customTransformer/-667021461 var1907)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var228 null-var2087)))) ; Negate: Cond: $r9 != null  
(define-const var1538 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var653 Int (+ var3460 var1538)) ; Statement: $i9 = $i3 + $i22 
(define-const var2306 Int (* 37 var653)) ; Statement: $i4 = 37 * $i9 
(define-const var2824 String (tenantIdentifier/-667021461 var1907)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2824 null-String))) ; Cond: $r11 != null 
(define-const var2780 String (tenantIdentifier/-667021461 var1907)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2816 Int (hashCode/-467973558 var2780)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2813 Int (+ var2306 var2816)) ; Statement: $i7 = $i4 + $i23 
(define-const var3364 Int (* 37 var2813)) ; Statement: $i6 = 37 * $i7 
(define-const var2187 String (sqlQueryString/-667021461 var1907)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1072 Int (hashCode/-467973558 var2187)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var729 Int (+ var3364 var1072)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2181-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var1850_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3949=org.hibernate.cache.spi.QueryKey, var1907=r0, var325=$r1, var1649=$r2, var3078=$i14, var3796=$i13, var3852=$i0, var1147=$r3, var375=$r4, var3802=$i15, var1754=i16, var2323=i17, var2181=java.lang.Object, var1125=$r20, var1832=$i18, var962=$i1, var1850=java.util.Map, var3766=$r5, var3463=$r6, var710=$i20, var3505=$i11, var192=$i2, var1541=java.util.Set, var2051=$r7, var607=$i21, var783=$i10, var3460=$i3, var2087=org.hibernate.transform.CacheableResultTransformer, var228=$r9, var1538=$i22, var653=$i9, var2306=$i4, var2824=$r11, var513=null_type, var2780=$r12, var2816=$i23, var2813=$i7, var3364=$i6, var2187=$r13, var1072=$i5, var729=$i8}
; {org.hibernate.cache.spi.QueryKey=var3949, r0=var1907, $r1=var325, $r2=var1649, $i14=var3078, $i13=var3796, $i0=var3852, $r3=var1147, $r4=var375, $i15=var3802, i16=var1754, i17=var2323, java.lang.Object=var2181, $r20=var1125, $i18=var1832, $i1=var962, java.util.Map=var1850, $r5=var3766, $r6=var3463, $i20=var710, $i11=var3505, $i2=var192, java.util.Set=var1541, $r7=var2051, $i21=var607, $i10=var783, $i3=var3460, org.hibernate.transform.CacheableResultTransformer=var2087, $r9=var228, $i22=var1538, $i9=var653, $i4=var2306, $r11=var2824, null_type=var513, $r12=var2780, $i23=var2816, $i7=var2813, $i6=var3364, $r13=var2187, $i5=var1072, $i8=var729}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15