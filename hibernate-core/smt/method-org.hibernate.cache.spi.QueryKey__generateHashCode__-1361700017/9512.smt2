(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3272 0)
(declare-sort var1492 0)
(declare-sort var1224 0)
(declare-sort var597 0)
(declare-sort var2450 0)
(declare-sort var2724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3272) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var3272) Int)
(declare-fun positionalParameterValues/-667021461 (var3272) (Array Int var1492))
(declare-fun getLength-Arr-var1492-1 ((Array Int var1492)) Int)
(declare-fun namedParameters/-667021461 (var3272) var1224)
(declare-fun filterKeys/-667021461 (var3272) var597)
(declare-fun var597_hashCode/539623333 (var597) Int)
(declare-fun customTransformer/-667021461 (var3272) var2450)
(declare-fun hashCode/1497633159 (var2450) Int)
(declare-fun tenantIdentifier/-667021461 (var3272) String)
(declare-fun sqlQueryString/-667021461 (var3272) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3272 var3272)
(declare-const null-Int Int)
(declare-const null-var1224 var1224)
(declare-const null-var597 var597)
(declare-const null-var2450 var2450)
(declare-const null-String String)
(declare-const var2824 var3272) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2824 null-var3272)))
(define-const var3603 Int (firstRow/-667021461 var2824)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3603 null-Int))) ; Cond: $r1 != null 
(define-const var677 Int (firstRow/-667021461 var2824)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2351 Int (hashCode/569135069 var677)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var583 Int (+ 481 var2351)) ; Statement: $i13 = 481 + $i14 
(define-const var2136 Int (* 37 var583)) ; Statement: $i0 = 37 * $i13 
(define-const var2871 Int (maxRows/-667021461 var2824)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2871 null-Int))) ; Cond: $r3 != null 
(define-const var3764 Int (maxRows/-667021461 var2824)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var2670 Int (hashCode/569135069 var3764)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3710 Int (+ var2136 var2670)) ; Statement: i16 = $i0 + $i15 
(define-const var1183 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1805 (Array Int var1492) (positionalParameterValues/-667021461 var2824)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2086 Int (getLength-Arr-var1492-1 var1805)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1183 var2086)) ; Cond: i17 >= $i18 
(define-const var173 Int (* 37 var3710)) ; Statement: $i1 = 37 * i16 
(define-const var1408 var1224 (namedParameters/-667021461 var2824)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1408 null-var1224)))) ; Negate: Cond: $r5 != null  
(define-const var3379 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1891 Int (+ var173 var3379)) ; Statement: $i11 = $i1 + $i20 
(define-const var2394 Int (* 37 var1891)) ; Statement: $i2 = 37 * $i11 
(define-const var1529 var597 (filterKeys/-667021461 var2824)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1529 null-var597))) ; Cond: $r7 != null 
(define-const var3858 var597 (filterKeys/-667021461 var2824)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2204 Int (var597_hashCode/539623333 var3858)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2103 Int (+ var2394 var2204)) ; Statement: $i10 = $i2 + $i21 
(define-const var3544 Int (* 37 var2103)) ; Statement: $i3 = 37 * $i10 
(define-const var3067 var2450 (customTransformer/-667021461 var2824)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3067 null-var2450))) ; Cond: $r9 != null 
(define-const var2776 var2450 (customTransformer/-667021461 var2824)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1325 Int (hashCode/1497633159 var2776)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var950 Int (+ var3544 var1325)) ; Statement: $i9 = $i3 + $i22 
(define-const var1192 Int (* 37 var950)) ; Statement: $i4 = 37 * $i9 
(define-const var2241 String (tenantIdentifier/-667021461 var2824)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2241 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3468 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var2435 Int (+ var1192 var3468)) ; Statement: $i7 = $i4 + $i23 
(define-const var2384 Int (* 37 var2435)) ; Statement: $i6 = 37 * $i7 
(define-const var477 String (sqlQueryString/-667021461 var2824)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1116 Int (hashCode/-467973558 var477)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var73 Int (+ var2384 var1116)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1492-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var597_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3272=org.hibernate.cache.spi.QueryKey, var2824=r0, var3603=$r1, var677=$r2, var2351=$i14, var583=$i13, var2136=$i0, var2871=$r3, var3764=$r4, var2670=$i15, var3710=i16, var1183=i17, var1492=java.lang.Object, var1805=$r20, var2086=$i18, var173=$i1, var1224=java.util.Map, var1408=$r5, var3379=$i20, var1891=$i11, var2394=$i2, var597=java.util.Set, var1529=$r7, var3858=$r8, var2204=$i21, var2103=$i10, var3544=$i3, var2450=org.hibernate.transform.CacheableResultTransformer, var3067=$r9, var2776=$r10, var1325=$i22, var950=$i9, var1192=$i4, var2241=$r11, var2724=null_type, var3468=$i23, var2435=$i7, var2384=$i6, var477=$r13, var1116=$i5, var73=$i8}
; {org.hibernate.cache.spi.QueryKey=var3272, r0=var2824, $r1=var3603, $r2=var677, $i14=var2351, $i13=var583, $i0=var2136, $r3=var2871, $r4=var3764, $i15=var2670, i16=var3710, i17=var1183, java.lang.Object=var1492, $r20=var1805, $i18=var2086, $i1=var173, java.util.Map=var1224, $r5=var1408, $i20=var3379, $i11=var1891, $i2=var2394, java.util.Set=var597, $r7=var1529, $r8=var3858, $i21=var2204, $i10=var2103, $i3=var3544, org.hibernate.transform.CacheableResultTransformer=var2450, $r9=var3067, $r10=var2776, $i22=var1325, $i9=var950, $i4=var1192, $r11=var2241, null_type=var2724, $i23=var3468, $i7=var2435, $i6=var2384, $r13=var477, $i5=var1116, $i8=var73}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15