(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var584 0)
(declare-sort var1495 0)
(declare-sort var3340 0)
(declare-sort var3018 0)
(declare-sort var1283 0)
(declare-sort var1351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var584) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var584) Int)
(declare-fun positionalParameterValues/-667021461 (var584) (Array Int var1495))
(declare-fun getLength-Arr-var1495-1 ((Array Int var1495)) Int)
(declare-fun namedParameters/-667021461 (var584) var3340)
(declare-fun filterKeys/-667021461 (var584) var3018)
(declare-fun var3018_hashCode/539623333 (var3018) Int)
(declare-fun customTransformer/-667021461 (var584) var1283)
(declare-fun hashCode/1497633159 (var1283) Int)
(declare-fun tenantIdentifier/-667021461 (var584) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var584) String)
(declare-const null-var584 var584)
(declare-const null-Int Int)
(declare-const null-var3340 var3340)
(declare-const null-var3018 var3018)
(declare-const null-var1283 var1283)
(declare-const null-String String)
(declare-const var3083 var584) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3083 null-var584)))
(define-const var3786 Int (firstRow/-667021461 var3083)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3786 null-Int))) ; Cond: $r1 != null 
(define-const var687 Int (firstRow/-667021461 var3083)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var1794 Int (hashCode/569135069 var687)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2506 Int (+ 481 var1794)) ; Statement: $i13 = 481 + $i14 
(define-const var1526 Int (* 37 var2506)) ; Statement: $i0 = 37 * $i13 
(define-const var3905 Int (maxRows/-667021461 var3083)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var3905 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2538 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3523 Int (+ var1526 var2538)) ; Statement: i16 = $i0 + $i15 
(define-const var1452 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1841 (Array Int var1495) (positionalParameterValues/-667021461 var3083)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3065 Int (getLength-Arr-var1495-1 var1841)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1452 var3065)) ; Cond: i17 >= $i18 
(define-const var607 Int (* 37 var3523)) ; Statement: $i1 = 37 * i16 
(define-const var239 var3340 (namedParameters/-667021461 var3083)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var239 null-var3340)))) ; Negate: Cond: $r5 != null  
(define-const var3707 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1455 Int (+ var607 var3707)) ; Statement: $i11 = $i1 + $i20 
(define-const var1447 Int (* 37 var1455)) ; Statement: $i2 = 37 * $i11 
(define-const var2244 var3018 (filterKeys/-667021461 var3083)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var2244 null-var3018))) ; Cond: $r7 != null 
(define-const var2276 var3018 (filterKeys/-667021461 var3083)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1101 Int (var3018_hashCode/539623333 var2276)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3251 Int (+ var1447 var1101)) ; Statement: $i10 = $i2 + $i21 
(define-const var2784 Int (* 37 var3251)) ; Statement: $i3 = 37 * $i10 
(define-const var2893 var1283 (customTransformer/-667021461 var3083)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2893 null-var1283))) ; Cond: $r9 != null 
(define-const var1493 var1283 (customTransformer/-667021461 var3083)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1360 Int (hashCode/1497633159 var1493)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var167 Int (+ var2784 var1360)) ; Statement: $i9 = $i3 + $i22 
(define-const var2210 Int (* 37 var167)) ; Statement: $i4 = 37 * $i9 
(define-const var3989 String (tenantIdentifier/-667021461 var3083)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3989 null-String))) ; Cond: $r11 != null 
(define-const var2277 String (tenantIdentifier/-667021461 var3083)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var666 Int (hashCode/-467973558 var2277)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1751 Int (+ var2210 var666)) ; Statement: $i7 = $i4 + $i23 
(define-const var432 Int (* 37 var1751)) ; Statement: $i6 = 37 * $i7 
(define-const var1300 String (sqlQueryString/-667021461 var3083)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var4 Int (hashCode/-467973558 var1300)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2616 Int (+ var432 var4)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1495-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3018_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var584=org.hibernate.cache.spi.QueryKey, var3083=r0, var3786=$r1, var687=$r2, var1794=$i14, var2506=$i13, var1526=$i0, var3905=$r3, var2538=$i15, var3523=i16, var1452=i17, var1495=java.lang.Object, var1841=$r20, var3065=$i18, var607=$i1, var3340=java.util.Map, var239=$r5, var3707=$i20, var1455=$i11, var1447=$i2, var3018=java.util.Set, var2244=$r7, var2276=$r8, var1101=$i21, var3251=$i10, var2784=$i3, var1283=org.hibernate.transform.CacheableResultTransformer, var2893=$r9, var1493=$r10, var1360=$i22, var167=$i9, var2210=$i4, var3989=$r11, var1351=null_type, var2277=$r12, var666=$i23, var1751=$i7, var432=$i6, var1300=$r13, var4=$i5, var2616=$i8}
; {org.hibernate.cache.spi.QueryKey=var584, r0=var3083, $r1=var3786, $r2=var687, $i14=var1794, $i13=var2506, $i0=var1526, $r3=var3905, $i15=var2538, i16=var3523, i17=var1452, java.lang.Object=var1495, $r20=var1841, $i18=var3065, $i1=var607, java.util.Map=var3340, $r5=var239, $i20=var3707, $i11=var1455, $i2=var1447, java.util.Set=var3018, $r7=var2244, $r8=var2276, $i21=var1101, $i10=var3251, $i3=var2784, org.hibernate.transform.CacheableResultTransformer=var1283, $r9=var2893, $r10=var1493, $i22=var1360, $i9=var167, $i4=var2210, $r11=var3989, null_type=var1351, $r12=var2277, $i23=var666, $i7=var1751, $i6=var432, $r13=var1300, $i5=var4, $i8=var2616}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15