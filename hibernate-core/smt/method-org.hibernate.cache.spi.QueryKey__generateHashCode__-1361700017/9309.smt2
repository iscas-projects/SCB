(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var683 0)
(declare-sort var2520 0)
(declare-sort var1777 0)
(declare-sort var1787 0)
(declare-sort var843 0)
(declare-sort var3273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var683) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var683) Int)
(declare-fun positionalParameterValues/-667021461 (var683) (Array Int var2520))
(declare-fun getLength-Arr-var2520-1 ((Array Int var2520)) Int)
(declare-fun namedParameters/-667021461 (var683) var1777)
(declare-fun filterKeys/-667021461 (var683) var1787)
(declare-fun customTransformer/-667021461 (var683) var843)
(declare-fun tenantIdentifier/-667021461 (var683) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var683) String)
(declare-const null-var683 var683)
(declare-const null-Int Int)
(declare-const null-var1777 var1777)
(declare-const null-var1787 var1787)
(declare-const null-var843 var843)
(declare-const null-String String)
(declare-const var3312 var683) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3312 null-var683)))
(define-const var1843 Int (firstRow/-667021461 var3312)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1843 null-Int))) ; Cond: $r1 != null 
(define-const var1700 Int (firstRow/-667021461 var3312)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3647 Int (hashCode/569135069 var1700)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3347 Int (+ 481 var3647)) ; Statement: $i13 = 481 + $i14 
(define-const var1347 Int (* 37 var3347)) ; Statement: $i0 = 37 * $i13 
(define-const var1094 Int (maxRows/-667021461 var3312)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1094 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3786 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3745 Int (+ var1347 var3786)) ; Statement: i16 = $i0 + $i15 
(define-const var954 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2632 (Array Int var2520) (positionalParameterValues/-667021461 var3312)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1519 Int (getLength-Arr-var2520-1 var2632)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var954 var1519)) ; Cond: i17 >= $i18 
(define-const var3293 Int (* 37 var3745)) ; Statement: $i1 = 37 * i16 
(define-const var1253 var1777 (namedParameters/-667021461 var3312)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1253 null-var1777)))) ; Negate: Cond: $r5 != null  
(define-const var168 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1188 Int (+ var3293 var168)) ; Statement: $i11 = $i1 + $i20 
(define-const var2954 Int (* 37 var1188)) ; Statement: $i2 = 37 * $i11 
(define-const var3981 var1787 (filterKeys/-667021461 var3312)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3981 null-var1787)))) ; Negate: Cond: $r7 != null  
(define-const var969 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2063 Int (+ var2954 var969)) ; Statement: $i10 = $i2 + $i21 
(define-const var2969 Int (* 37 var2063)) ; Statement: $i3 = 37 * $i10 
(define-const var1380 var843 (customTransformer/-667021461 var3312)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1380 null-var843)))) ; Negate: Cond: $r9 != null  
(define-const var1189 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var3281 Int (+ var2969 var1189)) ; Statement: $i9 = $i3 + $i22 
(define-const var25 Int (* 37 var3281)) ; Statement: $i4 = 37 * $i9 
(define-const var2635 String (tenantIdentifier/-667021461 var3312)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2635 null-String))) ; Cond: $r11 != null 
(define-const var1690 String (tenantIdentifier/-667021461 var3312)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var471 Int (hashCode/-467973558 var1690)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2112 Int (+ var25 var471)) ; Statement: $i7 = $i4 + $i23 
(define-const var2754 Int (* 37 var2112)) ; Statement: $i6 = 37 * $i7 
(define-const var2541 String (sqlQueryString/-667021461 var3312)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3304 Int (hashCode/-467973558 var2541)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1298 Int (+ var2754 var3304)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2520-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var683=org.hibernate.cache.spi.QueryKey, var3312=r0, var1843=$r1, var1700=$r2, var3647=$i14, var3347=$i13, var1347=$i0, var1094=$r3, var3786=$i15, var3745=i16, var954=i17, var2520=java.lang.Object, var2632=$r20, var1519=$i18, var3293=$i1, var1777=java.util.Map, var1253=$r5, var168=$i20, var1188=$i11, var2954=$i2, var1787=java.util.Set, var3981=$r7, var969=$i21, var2063=$i10, var2969=$i3, var843=org.hibernate.transform.CacheableResultTransformer, var1380=$r9, var1189=$i22, var3281=$i9, var25=$i4, var2635=$r11, var3273=null_type, var1690=$r12, var471=$i23, var2112=$i7, var2754=$i6, var2541=$r13, var3304=$i5, var1298=$i8}
; {org.hibernate.cache.spi.QueryKey=var683, r0=var3312, $r1=var1843, $r2=var1700, $i14=var3647, $i13=var3347, $i0=var1347, $r3=var1094, $i15=var3786, i16=var3745, i17=var954, java.lang.Object=var2520, $r20=var2632, $i18=var1519, $i1=var3293, java.util.Map=var1777, $r5=var1253, $i20=var168, $i11=var1188, $i2=var2954, java.util.Set=var1787, $r7=var3981, $i21=var969, $i10=var2063, $i3=var2969, org.hibernate.transform.CacheableResultTransformer=var843, $r9=var1380, $i22=var1189, $i9=var3281, $i4=var25, $r11=var2635, null_type=var3273, $r12=var1690, $i23=var471, $i7=var2112, $i6=var2754, $r13=var2541, $i5=var3304, $i8=var1298}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15