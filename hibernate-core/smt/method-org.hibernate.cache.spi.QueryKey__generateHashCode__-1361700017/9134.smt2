(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1428 0)
(declare-sort var924 0)
(declare-sort var2251 0)
(declare-sort var2291 0)
(declare-sort var1887 0)
(declare-sort var269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1428) Int)
(declare-fun maxRows/-667021461 (var1428) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1428) (Array Int var924))
(declare-fun getLength-Arr-var924-1 ((Array Int var924)) Int)
(declare-fun namedParameters/-667021461 (var1428) var2251)
(declare-fun filterKeys/-667021461 (var1428) var2291)
(declare-fun var2291_hashCode/539623333 (var2291) Int)
(declare-fun customTransformer/-667021461 (var1428) var1887)
(declare-fun hashCode/1497633159 (var1887) Int)
(declare-fun tenantIdentifier/-667021461 (var1428) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1428) String)
(declare-const null-var1428 var1428)
(declare-const null-Int Int)
(declare-const null-var2251 var2251)
(declare-const null-var2291 var2291)
(declare-const null-var1887 var1887)
(declare-const null-String String)
(declare-const var2319 var1428) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2319 null-var1428)))
(define-const var2446 Int (firstRow/-667021461 var2319)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2446 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2437 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var955 Int (+ 481 var2437)) ; Statement: $i13 = 481 + $i14 
(define-const var2187 Int (* 37 var955)) ; Statement: $i0 = 37 * $i13 
(define-const var2851 Int (maxRows/-667021461 var2319)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2851 null-Int))) ; Cond: $r3 != null 
(define-const var1837 Int (maxRows/-667021461 var2319)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1520 Int (hashCode/569135069 var1837)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3347 Int (+ var2187 var1520)) ; Statement: i16 = $i0 + $i15 
(define-const var1450 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1897 (Array Int var924) (positionalParameterValues/-667021461 var2319)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3457 Int (getLength-Arr-var924-1 var1897)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1450 var3457)) ; Cond: i17 >= $i18 
(define-const var1871 Int (* 37 var3347)) ; Statement: $i1 = 37 * i16 
(define-const var2413 var2251 (namedParameters/-667021461 var2319)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2413 null-var2251)))) ; Negate: Cond: $r5 != null  
(define-const var3350 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var548 Int (+ var1871 var3350)) ; Statement: $i11 = $i1 + $i20 
(define-const var1292 Int (* 37 var548)) ; Statement: $i2 = 37 * $i11 
(define-const var1011 var2291 (filterKeys/-667021461 var2319)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1011 null-var2291))) ; Cond: $r7 != null 
(define-const var1027 var2291 (filterKeys/-667021461 var2319)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1226 Int (var2291_hashCode/539623333 var1027)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1483 Int (+ var1292 var1226)) ; Statement: $i10 = $i2 + $i21 
(define-const var3830 Int (* 37 var1483)) ; Statement: $i3 = 37 * $i10 
(define-const var2982 var1887 (customTransformer/-667021461 var2319)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2982 null-var1887))) ; Cond: $r9 != null 
(define-const var852 var1887 (customTransformer/-667021461 var2319)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1868 Int (hashCode/1497633159 var852)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2725 Int (+ var3830 var1868)) ; Statement: $i9 = $i3 + $i22 
(define-const var2839 Int (* 37 var2725)) ; Statement: $i4 = 37 * $i9 
(define-const var770 String (tenantIdentifier/-667021461 var2319)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var770 null-String))) ; Cond: $r11 != null 
(define-const var1448 String (tenantIdentifier/-667021461 var2319)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2305 Int (hashCode/-467973558 var1448)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2563 Int (+ var2839 var2305)) ; Statement: $i7 = $i4 + $i23 
(define-const var3413 Int (* 37 var2563)) ; Statement: $i6 = 37 * $i7 
(define-const var993 String (sqlQueryString/-667021461 var2319)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var576 Int (hashCode/-467973558 var993)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3696 Int (+ var3413 var576)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var924-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var2291_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1428=org.hibernate.cache.spi.QueryKey, var2319=r0, var2446=$r1, var2437=$i14, var955=$i13, var2187=$i0, var2851=$r3, var1837=$r4, var1520=$i15, var3347=i16, var1450=i17, var924=java.lang.Object, var1897=$r20, var3457=$i18, var1871=$i1, var2251=java.util.Map, var2413=$r5, var3350=$i20, var548=$i11, var1292=$i2, var2291=java.util.Set, var1011=$r7, var1027=$r8, var1226=$i21, var1483=$i10, var3830=$i3, var1887=org.hibernate.transform.CacheableResultTransformer, var2982=$r9, var852=$r10, var1868=$i22, var2725=$i9, var2839=$i4, var770=$r11, var269=null_type, var1448=$r12, var2305=$i23, var2563=$i7, var3413=$i6, var993=$r13, var576=$i5, var3696=$i8}
; {org.hibernate.cache.spi.QueryKey=var1428, r0=var2319, $r1=var2446, $i14=var2437, $i13=var955, $i0=var2187, $r3=var2851, $r4=var1837, $i15=var1520, i16=var3347, i17=var1450, java.lang.Object=var924, $r20=var1897, $i18=var3457, $i1=var1871, java.util.Map=var2251, $r5=var2413, $i20=var3350, $i11=var548, $i2=var1292, java.util.Set=var2291, $r7=var1011, $r8=var1027, $i21=var1226, $i10=var1483, $i3=var3830, org.hibernate.transform.CacheableResultTransformer=var1887, $r9=var2982, $r10=var852, $i22=var1868, $i9=var2725, $i4=var2839, $r11=var770, null_type=var269, $r12=var1448, $i23=var2305, $i7=var2563, $i6=var3413, $r13=var993, $i5=var576, $i8=var3696}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15