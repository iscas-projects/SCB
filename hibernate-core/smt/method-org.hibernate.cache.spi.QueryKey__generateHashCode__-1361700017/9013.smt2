(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1992 0)
(declare-sort var2309 0)
(declare-sort var3678 0)
(declare-sort var372 0)
(declare-sort var285 0)
(declare-sort var2568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1992) Int)
(declare-fun maxRows/-667021461 (var1992) Int)
(declare-fun positionalParameterValues/-667021461 (var1992) (Array Int var2309))
(declare-fun getLength-Arr-var2309-1 ((Array Int var2309)) Int)
(declare-fun namedParameters/-667021461 (var1992) var3678)
(declare-fun var3678_hashCode/1768810987 (var3678) Int)
(declare-fun filterKeys/-667021461 (var1992) var372)
(declare-fun customTransformer/-667021461 (var1992) var285)
(declare-fun hashCode/1497633159 (var285) Int)
(declare-fun tenantIdentifier/-667021461 (var1992) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1992) String)
(declare-const null-var1992 var1992)
(declare-const null-Int Int)
(declare-const null-var3678 var3678)
(declare-const null-var372 var372)
(declare-const null-var285 var285)
(declare-const null-String String)
(declare-const var3999 var1992) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3999 null-var1992)))
(define-const var1338 Int (firstRow/-667021461 var3999)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1338 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var3440 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var1126 Int (+ 481 var3440)) ; Statement: $i13 = 481 + $i14 
(define-const var2927 Int (* 37 var1126)) ; Statement: $i0 = 37 * $i13 
(define-const var1636 Int (maxRows/-667021461 var3999)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1636 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1215 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2503 Int (+ var2927 var1215)) ; Statement: i16 = $i0 + $i15 
(define-const var1309 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1274 (Array Int var2309) (positionalParameterValues/-667021461 var3999)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1719 Int (getLength-Arr-var2309-1 var1274)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1309 var1719)) ; Cond: i17 >= $i18 
(define-const var240 Int (* 37 var2503)) ; Statement: $i1 = 37 * i16 
(define-const var367 var3678 (namedParameters/-667021461 var3999)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var367 null-var3678))) ; Cond: $r5 != null 
(define-const var3736 var3678 (namedParameters/-667021461 var3999)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var967 Int (var3678_hashCode/1768810987 var3736)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1546 Int (+ var240 var967)) ; Statement: $i11 = $i1 + $i20 
(define-const var3361 Int (* 37 var1546)) ; Statement: $i2 = 37 * $i11 
(define-const var777 var372 (filterKeys/-667021461 var3999)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var777 null-var372)))) ; Negate: Cond: $r7 != null  
(define-const var2344 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1328 Int (+ var3361 var2344)) ; Statement: $i10 = $i2 + $i21 
(define-const var1756 Int (* 37 var1328)) ; Statement: $i3 = 37 * $i10 
(define-const var1298 var285 (customTransformer/-667021461 var3999)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1298 null-var285))) ; Cond: $r9 != null 
(define-const var1323 var285 (customTransformer/-667021461 var3999)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var440 Int (hashCode/1497633159 var1323)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3672 Int (+ var1756 var440)) ; Statement: $i9 = $i3 + $i22 
(define-const var757 Int (* 37 var3672)) ; Statement: $i4 = 37 * $i9 
(define-const var214 String (tenantIdentifier/-667021461 var3999)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var214 null-String))) ; Cond: $r11 != null 
(define-const var3032 String (tenantIdentifier/-667021461 var3999)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var3609 Int (hashCode/-467973558 var3032)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1040 Int (+ var757 var3609)) ; Statement: $i7 = $i4 + $i23 
(define-const var1306 Int (* 37 var1040)) ; Statement: $i6 = 37 * $i7 
(define-const var1682 String (sqlQueryString/-667021461 var3999)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1565 Int (hashCode/-467973558 var1682)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var675 Int (+ var1306 var1565)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2309-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3678_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1992=org.hibernate.cache.spi.QueryKey, var3999=r0, var1338=$r1, var3440=$i14, var1126=$i13, var2927=$i0, var1636=$r3, var1215=$i15, var2503=i16, var1309=i17, var2309=java.lang.Object, var1274=$r20, var1719=$i18, var240=$i1, var3678=java.util.Map, var367=$r5, var3736=$r6, var967=$i20, var1546=$i11, var3361=$i2, var372=java.util.Set, var777=$r7, var2344=$i21, var1328=$i10, var1756=$i3, var285=org.hibernate.transform.CacheableResultTransformer, var1298=$r9, var1323=$r10, var440=$i22, var3672=$i9, var757=$i4, var214=$r11, var2568=null_type, var3032=$r12, var3609=$i23, var1040=$i7, var1306=$i6, var1682=$r13, var1565=$i5, var675=$i8}
; {org.hibernate.cache.spi.QueryKey=var1992, r0=var3999, $r1=var1338, $i14=var3440, $i13=var1126, $i0=var2927, $r3=var1636, $i15=var1215, i16=var2503, i17=var1309, java.lang.Object=var2309, $r20=var1274, $i18=var1719, $i1=var240, java.util.Map=var3678, $r5=var367, $r6=var3736, $i20=var967, $i11=var1546, $i2=var3361, java.util.Set=var372, $r7=var777, $i21=var2344, $i10=var1328, $i3=var1756, org.hibernate.transform.CacheableResultTransformer=var285, $r9=var1298, $r10=var1323, $i22=var440, $i9=var3672, $i4=var757, $r11=var214, null_type=var2568, $r12=var3032, $i23=var3609, $i7=var1040, $i6=var1306, $r13=var1682, $i5=var1565, $i8=var675}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15