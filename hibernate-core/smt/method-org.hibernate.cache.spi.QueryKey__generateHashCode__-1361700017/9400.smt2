(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var1963 0)
(declare-sort var544 0)
(declare-sort var3591 0)
(declare-sort var255 0)
(declare-sort var2794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2194) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var2194) Int)
(declare-fun positionalParameterValues/-667021461 (var2194) (Array Int var1963))
(declare-fun getLength-Arr-var1963-1 ((Array Int var1963)) Int)
(declare-fun namedParameters/-667021461 (var2194) var544)
(declare-fun var544_hashCode/1768810987 (var544) Int)
(declare-fun filterKeys/-667021461 (var2194) var3591)
(declare-fun customTransformer/-667021461 (var2194) var255)
(declare-fun hashCode/1497633159 (var255) Int)
(declare-fun tenantIdentifier/-667021461 (var2194) String)
(declare-fun sqlQueryString/-667021461 (var2194) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2194 var2194)
(declare-const null-Int Int)
(declare-const null-var544 var544)
(declare-const null-var3591 var3591)
(declare-const null-var255 var255)
(declare-const null-String String)
(declare-const var1400 var2194) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1400 null-var2194)))
(define-const var2825 Int (firstRow/-667021461 var1400)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2825 null-Int))) ; Cond: $r1 != null 
(define-const var3937 Int (firstRow/-667021461 var1400)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var890 Int (hashCode/569135069 var3937)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3205 Int (+ 481 var890)) ; Statement: $i13 = 481 + $i14 
(define-const var3883 Int (* 37 var3205)) ; Statement: $i0 = 37 * $i13 
(define-const var798 Int (maxRows/-667021461 var1400)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var798 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var9 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3328 Int (+ var3883 var9)) ; Statement: i16 = $i0 + $i15 
(define-const var3105 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var55 (Array Int var1963) (positionalParameterValues/-667021461 var1400)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var664 Int (getLength-Arr-var1963-1 var55)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3105 var664)) ; Cond: i17 >= $i18 
(define-const var2032 Int (* 37 var3328)) ; Statement: $i1 = 37 * i16 
(define-const var997 var544 (namedParameters/-667021461 var1400)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var997 null-var544))) ; Cond: $r5 != null 
(define-const var3315 var544 (namedParameters/-667021461 var1400)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3217 Int (var544_hashCode/1768810987 var3315)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1808 Int (+ var2032 var3217)) ; Statement: $i11 = $i1 + $i20 
(define-const var2764 Int (* 37 var1808)) ; Statement: $i2 = 37 * $i11 
(define-const var382 var3591 (filterKeys/-667021461 var1400)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var382 null-var3591)))) ; Negate: Cond: $r7 != null  
(define-const var2974 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2367 Int (+ var2764 var2974)) ; Statement: $i10 = $i2 + $i21 
(define-const var1061 Int (* 37 var2367)) ; Statement: $i3 = 37 * $i10 
(define-const var2429 var255 (customTransformer/-667021461 var1400)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2429 null-var255))) ; Cond: $r9 != null 
(define-const var436 var255 (customTransformer/-667021461 var1400)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var40 Int (hashCode/1497633159 var436)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3159 Int (+ var1061 var40)) ; Statement: $i9 = $i3 + $i22 
(define-const var2817 Int (* 37 var3159)) ; Statement: $i4 = 37 * $i9 
(define-const var1171 String (tenantIdentifier/-667021461 var1400)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1171 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3858 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var464 Int (+ var2817 var3858)) ; Statement: $i7 = $i4 + $i23 
(define-const var2939 Int (* 37 var464)) ; Statement: $i6 = 37 * $i7 
(define-const var539 String (sqlQueryString/-667021461 var1400)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3703 Int (hashCode/-467973558 var539)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2169 Int (+ var2939 var3703)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1963-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var544_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2194=org.hibernate.cache.spi.QueryKey, var1400=r0, var2825=$r1, var3937=$r2, var890=$i14, var3205=$i13, var3883=$i0, var798=$r3, var9=$i15, var3328=i16, var3105=i17, var1963=java.lang.Object, var55=$r20, var664=$i18, var2032=$i1, var544=java.util.Map, var997=$r5, var3315=$r6, var3217=$i20, var1808=$i11, var2764=$i2, var3591=java.util.Set, var382=$r7, var2974=$i21, var2367=$i10, var1061=$i3, var255=org.hibernate.transform.CacheableResultTransformer, var2429=$r9, var436=$r10, var40=$i22, var3159=$i9, var2817=$i4, var1171=$r11, var2794=null_type, var3858=$i23, var464=$i7, var2939=$i6, var539=$r13, var3703=$i5, var2169=$i8}
; {org.hibernate.cache.spi.QueryKey=var2194, r0=var1400, $r1=var2825, $r2=var3937, $i14=var890, $i13=var3205, $i0=var3883, $r3=var798, $i15=var9, i16=var3328, i17=var3105, java.lang.Object=var1963, $r20=var55, $i18=var664, $i1=var2032, java.util.Map=var544, $r5=var997, $r6=var3315, $i20=var3217, $i11=var1808, $i2=var2764, java.util.Set=var3591, $r7=var382, $i21=var2974, $i10=var2367, $i3=var1061, org.hibernate.transform.CacheableResultTransformer=var255, $r9=var2429, $r10=var436, $i22=var40, $i9=var3159, $i4=var2817, $r11=var1171, null_type=var2794, $i23=var3858, $i7=var464, $i6=var2939, $r13=var539, $i5=var3703, $i8=var2169}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15