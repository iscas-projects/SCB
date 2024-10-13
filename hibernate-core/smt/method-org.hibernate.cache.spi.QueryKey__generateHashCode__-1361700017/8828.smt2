(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var630 0)
(declare-sort var1283 0)
(declare-sort var1095 0)
(declare-sort var1468 0)
(declare-sort var3743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3406) Int)
(declare-fun maxRows/-667021461 (var3406) Int)
(declare-fun positionalParameterValues/-667021461 (var3406) (Array Int var630))
(declare-fun getLength-Arr-var630-1 ((Array Int var630)) Int)
(declare-fun namedParameters/-667021461 (var3406) var1283)
(declare-fun filterKeys/-667021461 (var3406) var1095)
(declare-fun var1095_hashCode/539623333 (var1095) Int)
(declare-fun customTransformer/-667021461 (var3406) var1468)
(declare-fun hashCode/1497633159 (var1468) Int)
(declare-fun tenantIdentifier/-667021461 (var3406) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3406) String)
(declare-const null-var3406 var3406)
(declare-const null-Int Int)
(declare-const null-var1283 var1283)
(declare-const null-var1095 var1095)
(declare-const null-var1468 var1468)
(declare-const null-String String)
(declare-const var3857 var3406) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3857 null-var3406)))
(define-const var2679 Int (firstRow/-667021461 var3857)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2679 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var412 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var210 Int (+ 481 var412)) ; Statement: $i13 = 481 + $i14 
(define-const var341 Int (* 37 var210)) ; Statement: $i0 = 37 * $i13 
(define-const var2111 Int (maxRows/-667021461 var3857)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2111 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var399 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1818 Int (+ var341 var399)) ; Statement: i16 = $i0 + $i15 
(define-const var3107 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2720 (Array Int var630) (positionalParameterValues/-667021461 var3857)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3930 Int (getLength-Arr-var630-1 var2720)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3107 var3930)) ; Cond: i17 >= $i18 
(define-const var451 Int (* 37 var1818)) ; Statement: $i1 = 37 * i16 
(define-const var973 var1283 (namedParameters/-667021461 var3857)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var973 null-var1283)))) ; Negate: Cond: $r5 != null  
(define-const var2958 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2329 Int (+ var451 var2958)) ; Statement: $i11 = $i1 + $i20 
(define-const var2867 Int (* 37 var2329)) ; Statement: $i2 = 37 * $i11 
(define-const var3592 var1095 (filterKeys/-667021461 var3857)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3592 null-var1095))) ; Cond: $r7 != null 
(define-const var2750 var1095 (filterKeys/-667021461 var3857)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3638 Int (var1095_hashCode/539623333 var2750)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var438 Int (+ var2867 var3638)) ; Statement: $i10 = $i2 + $i21 
(define-const var1458 Int (* 37 var438)) ; Statement: $i3 = 37 * $i10 
(define-const var3904 var1468 (customTransformer/-667021461 var3857)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3904 null-var1468))) ; Cond: $r9 != null 
(define-const var1834 var1468 (customTransformer/-667021461 var3857)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1825 Int (hashCode/1497633159 var1834)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1819 Int (+ var1458 var1825)) ; Statement: $i9 = $i3 + $i22 
(define-const var3378 Int (* 37 var1819)) ; Statement: $i4 = 37 * $i9 
(define-const var1158 String (tenantIdentifier/-667021461 var3857)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1158 null-String))) ; Cond: $r11 != null 
(define-const var2605 String (tenantIdentifier/-667021461 var3857)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var3198 Int (hashCode/-467973558 var2605)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3971 Int (+ var3378 var3198)) ; Statement: $i7 = $i4 + $i23 
(define-const var3525 Int (* 37 var3971)) ; Statement: $i6 = 37 * $i7 
(define-const var111 String (sqlQueryString/-667021461 var3857)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2576 Int (hashCode/-467973558 var111)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3139 Int (+ var3525 var2576)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var630-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1095_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3406=org.hibernate.cache.spi.QueryKey, var3857=r0, var2679=$r1, var412=$i14, var210=$i13, var341=$i0, var2111=$r3, var399=$i15, var1818=i16, var3107=i17, var630=java.lang.Object, var2720=$r20, var3930=$i18, var451=$i1, var1283=java.util.Map, var973=$r5, var2958=$i20, var2329=$i11, var2867=$i2, var1095=java.util.Set, var3592=$r7, var2750=$r8, var3638=$i21, var438=$i10, var1458=$i3, var1468=org.hibernate.transform.CacheableResultTransformer, var3904=$r9, var1834=$r10, var1825=$i22, var1819=$i9, var3378=$i4, var1158=$r11, var3743=null_type, var2605=$r12, var3198=$i23, var3971=$i7, var3525=$i6, var111=$r13, var2576=$i5, var3139=$i8}
; {org.hibernate.cache.spi.QueryKey=var3406, r0=var3857, $r1=var2679, $i14=var412, $i13=var210, $i0=var341, $r3=var2111, $i15=var399, i16=var1818, i17=var3107, java.lang.Object=var630, $r20=var2720, $i18=var3930, $i1=var451, java.util.Map=var1283, $r5=var973, $i20=var2958, $i11=var2329, $i2=var2867, java.util.Set=var1095, $r7=var3592, $r8=var2750, $i21=var3638, $i10=var438, $i3=var1458, org.hibernate.transform.CacheableResultTransformer=var1468, $r9=var3904, $r10=var1834, $i22=var1825, $i9=var1819, $i4=var3378, $r11=var1158, null_type=var3743, $r12=var2605, $i23=var3198, $i7=var3971, $i6=var3525, $r13=var111, $i5=var2576, $i8=var3139}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15