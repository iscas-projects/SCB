(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var259 0)
(declare-sort var3711 0)
(declare-sort var1532 0)
(declare-sort var2208 0)
(declare-sort var1266 0)
(declare-sort var1090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var259) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var259) Int)
(declare-fun positionalParameterValues/-667021461 (var259) (Array Int var3711))
(declare-fun getLength-Arr-var3711-1 ((Array Int var3711)) Int)
(declare-fun namedParameters/-667021461 (var259) var1532)
(declare-fun filterKeys/-667021461 (var259) var2208)
(declare-fun customTransformer/-667021461 (var259) var1266)
(declare-fun tenantIdentifier/-667021461 (var259) String)
(declare-fun sqlQueryString/-667021461 (var259) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var259 var259)
(declare-const null-Int Int)
(declare-const null-var1532 var1532)
(declare-const null-var2208 var2208)
(declare-const null-var1266 var1266)
(declare-const null-String String)
(declare-const var959 var259) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var959 null-var259)))
(define-const var1316 Int (firstRow/-667021461 var959)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1316 null-Int))) ; Cond: $r1 != null 
(define-const var3424 Int (firstRow/-667021461 var959)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2853 Int (hashCode/569135069 var3424)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3191 Int (+ 481 var2853)) ; Statement: $i13 = 481 + $i14 
(define-const var3046 Int (* 37 var3191)) ; Statement: $i0 = 37 * $i13 
(define-const var987 Int (maxRows/-667021461 var959)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var987 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3976 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3528 Int (+ var3046 var3976)) ; Statement: i16 = $i0 + $i15 
(define-const var3638 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3952 (Array Int var3711) (positionalParameterValues/-667021461 var959)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3077 Int (getLength-Arr-var3711-1 var3952)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3638 var3077)) ; Cond: i17 >= $i18 
(define-const var3727 Int (* 37 var3528)) ; Statement: $i1 = 37 * i16 
(define-const var2695 var1532 (namedParameters/-667021461 var959)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2695 null-var1532)))) ; Negate: Cond: $r5 != null  
(define-const var1801 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2078 Int (+ var3727 var1801)) ; Statement: $i11 = $i1 + $i20 
(define-const var199 Int (* 37 var2078)) ; Statement: $i2 = 37 * $i11 
(define-const var2364 var2208 (filterKeys/-667021461 var959)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2364 null-var2208)))) ; Negate: Cond: $r7 != null  
(define-const var3885 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2531 Int (+ var199 var3885)) ; Statement: $i10 = $i2 + $i21 
(define-const var109 Int (* 37 var2531)) ; Statement: $i3 = 37 * $i10 
(define-const var1101 var1266 (customTransformer/-667021461 var959)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1101 null-var1266)))) ; Negate: Cond: $r9 != null  
(define-const var3188 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var3842 Int (+ var109 var3188)) ; Statement: $i9 = $i3 + $i22 
(define-const var2950 Int (* 37 var3842)) ; Statement: $i4 = 37 * $i9 
(define-const var489 String (tenantIdentifier/-667021461 var959)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var489 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1276 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1190 Int (+ var2950 var1276)) ; Statement: $i7 = $i4 + $i23 
(define-const var82 Int (* 37 var1190)) ; Statement: $i6 = 37 * $i7 
(define-const var797 String (sqlQueryString/-667021461 var959)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3626 Int (hashCode/-467973558 var797)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3618 Int (+ var82 var3626)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3711-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var259=org.hibernate.cache.spi.QueryKey, var959=r0, var1316=$r1, var3424=$r2, var2853=$i14, var3191=$i13, var3046=$i0, var987=$r3, var3976=$i15, var3528=i16, var3638=i17, var3711=java.lang.Object, var3952=$r20, var3077=$i18, var3727=$i1, var1532=java.util.Map, var2695=$r5, var1801=$i20, var2078=$i11, var199=$i2, var2208=java.util.Set, var2364=$r7, var3885=$i21, var2531=$i10, var109=$i3, var1266=org.hibernate.transform.CacheableResultTransformer, var1101=$r9, var3188=$i22, var3842=$i9, var2950=$i4, var489=$r11, var1090=null_type, var1276=$i23, var1190=$i7, var82=$i6, var797=$r13, var3626=$i5, var3618=$i8}
; {org.hibernate.cache.spi.QueryKey=var259, r0=var959, $r1=var1316, $r2=var3424, $i14=var2853, $i13=var3191, $i0=var3046, $r3=var987, $i15=var3976, i16=var3528, i17=var3638, java.lang.Object=var3711, $r20=var3952, $i18=var3077, $i1=var3727, java.util.Map=var1532, $r5=var2695, $i20=var1801, $i11=var2078, $i2=var199, java.util.Set=var2208, $r7=var2364, $i21=var3885, $i10=var2531, $i3=var109, org.hibernate.transform.CacheableResultTransformer=var1266, $r9=var1101, $i22=var3188, $i9=var3842, $i4=var2950, $r11=var489, null_type=var1090, $i23=var1276, $i7=var1190, $i6=var82, $r13=var797, $i5=var3626, $i8=var3618}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15