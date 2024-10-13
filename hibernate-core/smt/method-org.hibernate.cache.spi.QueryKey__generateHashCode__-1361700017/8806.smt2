(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3086 0)
(declare-sort var669 0)
(declare-sort var711 0)
(declare-sort var11 0)
(declare-sort var1259 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3086) Int)
(declare-fun maxRows/-667021461 (var3086) Int)
(declare-fun positionalParameterValues/-667021461 (var3086) (Array Int var669))
(declare-fun getLength-Arr-var669-1 ((Array Int var669)) Int)
(declare-fun namedParameters/-667021461 (var3086) var711)
(declare-fun filterKeys/-667021461 (var3086) var11)
(declare-fun var11_hashCode/539623333 (var11) Int)
(declare-fun customTransformer/-667021461 (var3086) var1259)
(declare-fun tenantIdentifier/-667021461 (var3086) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3086) String)
(declare-const null-var3086 var3086)
(declare-const null-Int Int)
(declare-const null-var711 var711)
(declare-const null-var11 var11)
(declare-const null-var1259 var1259)
(declare-const null-String String)
(declare-const var1640 var3086) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1640 null-var3086)))
(define-const var3337 Int (firstRow/-667021461 var1640)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3337 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2971 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3270 Int (+ 481 var2971)) ; Statement: $i13 = 481 + $i14 
(define-const var2434 Int (* 37 var3270)) ; Statement: $i0 = 37 * $i13 
(define-const var259 Int (maxRows/-667021461 var1640)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var259 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1659 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1112 Int (+ var2434 var1659)) ; Statement: i16 = $i0 + $i15 
(define-const var2225 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2527 (Array Int var669) (positionalParameterValues/-667021461 var1640)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2140 Int (getLength-Arr-var669-1 var2527)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2225 var2140)) ; Cond: i17 >= $i18 
(define-const var2315 Int (* 37 var1112)) ; Statement: $i1 = 37 * i16 
(define-const var3084 var711 (namedParameters/-667021461 var1640)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3084 null-var711)))) ; Negate: Cond: $r5 != null  
(define-const var3062 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1135 Int (+ var2315 var3062)) ; Statement: $i11 = $i1 + $i20 
(define-const var3600 Int (* 37 var1135)) ; Statement: $i2 = 37 * $i11 
(define-const var3914 var11 (filterKeys/-667021461 var1640)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3914 null-var11))) ; Cond: $r7 != null 
(define-const var2406 var11 (filterKeys/-667021461 var1640)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1266 Int (var11_hashCode/539623333 var2406)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2682 Int (+ var3600 var1266)) ; Statement: $i10 = $i2 + $i21 
(define-const var1578 Int (* 37 var2682)) ; Statement: $i3 = 37 * $i10 
(define-const var2510 var1259 (customTransformer/-667021461 var1640)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2510 null-var1259)))) ; Negate: Cond: $r9 != null  
(define-const var626 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var3705 Int (+ var1578 var626)) ; Statement: $i9 = $i3 + $i22 
(define-const var91 Int (* 37 var3705)) ; Statement: $i4 = 37 * $i9 
(define-const var2355 String (tenantIdentifier/-667021461 var1640)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2355 null-String))) ; Cond: $r11 != null 
(define-const var3951 String (tenantIdentifier/-667021461 var1640)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var471 Int (hashCode/-467973558 var3951)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2775 Int (+ var91 var471)) ; Statement: $i7 = $i4 + $i23 
(define-const var3450 Int (* 37 var2775)) ; Statement: $i6 = 37 * $i7 
(define-const var1483 String (sqlQueryString/-667021461 var1640)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1121 Int (hashCode/-467973558 var1483)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var581 Int (+ var3450 var1121)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var669-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var11_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3086=org.hibernate.cache.spi.QueryKey, var1640=r0, var3337=$r1, var2971=$i14, var3270=$i13, var2434=$i0, var259=$r3, var1659=$i15, var1112=i16, var2225=i17, var669=java.lang.Object, var2527=$r20, var2140=$i18, var2315=$i1, var711=java.util.Map, var3084=$r5, var3062=$i20, var1135=$i11, var3600=$i2, var11=java.util.Set, var3914=$r7, var2406=$r8, var1266=$i21, var2682=$i10, var1578=$i3, var1259=org.hibernate.transform.CacheableResultTransformer, var2510=$r9, var626=$i22, var3705=$i9, var91=$i4, var2355=$r11, var1086=null_type, var3951=$r12, var471=$i23, var2775=$i7, var3450=$i6, var1483=$r13, var1121=$i5, var581=$i8}
; {org.hibernate.cache.spi.QueryKey=var3086, r0=var1640, $r1=var3337, $i14=var2971, $i13=var3270, $i0=var2434, $r3=var259, $i15=var1659, i16=var1112, i17=var2225, java.lang.Object=var669, $r20=var2527, $i18=var2140, $i1=var2315, java.util.Map=var711, $r5=var3084, $i20=var3062, $i11=var1135, $i2=var3600, java.util.Set=var11, $r7=var3914, $r8=var2406, $i21=var1266, $i10=var2682, $i3=var1578, org.hibernate.transform.CacheableResultTransformer=var1259, $r9=var2510, $i22=var626, $i9=var3705, $i4=var91, $r11=var2355, null_type=var1086, $r12=var3951, $i23=var471, $i7=var2775, $i6=var3450, $r13=var1483, $i5=var1121, $i8=var581}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15