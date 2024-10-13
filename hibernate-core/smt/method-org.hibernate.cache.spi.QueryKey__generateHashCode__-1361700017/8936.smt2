(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var2589 0)
(declare-sort var667 0)
(declare-sort var3362 0)
(declare-sort var3561 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2079) Int)
(declare-fun maxRows/-667021461 (var2079) Int)
(declare-fun positionalParameterValues/-667021461 (var2079) (Array Int var2589))
(declare-fun getLength-Arr-var2589-1 ((Array Int var2589)) Int)
(declare-fun namedParameters/-667021461 (var2079) var667)
(declare-fun var667_hashCode/1768810987 (var667) Int)
(declare-fun filterKeys/-667021461 (var2079) var3362)
(declare-fun customTransformer/-667021461 (var2079) var3561)
(declare-fun tenantIdentifier/-667021461 (var2079) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var2079) String)
(declare-const null-var2079 var2079)
(declare-const null-Int Int)
(declare-const null-var667 var667)
(declare-const null-var3362 var3362)
(declare-const null-var3561 var3561)
(declare-const null-String String)
(declare-const var1085 var2079) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1085 null-var2079)))
(define-const var2376 Int (firstRow/-667021461 var1085)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2376 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var643 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2235 Int (+ 481 var643)) ; Statement: $i13 = 481 + $i14 
(define-const var1182 Int (* 37 var2235)) ; Statement: $i0 = 37 * $i13 
(define-const var1358 Int (maxRows/-667021461 var1085)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1358 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2837 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3654 Int (+ var1182 var2837)) ; Statement: i16 = $i0 + $i15 
(define-const var342 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2950 (Array Int var2589) (positionalParameterValues/-667021461 var1085)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1322 Int (getLength-Arr-var2589-1 var2950)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var342 var1322)) ; Cond: i17 >= $i18 
(define-const var502 Int (* 37 var3654)) ; Statement: $i1 = 37 * i16 
(define-const var2058 var667 (namedParameters/-667021461 var1085)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2058 null-var667))) ; Cond: $r5 != null 
(define-const var335 var667 (namedParameters/-667021461 var1085)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3613 Int (var667_hashCode/1768810987 var335)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2723 Int (+ var502 var3613)) ; Statement: $i11 = $i1 + $i20 
(define-const var646 Int (* 37 var2723)) ; Statement: $i2 = 37 * $i11 
(define-const var2212 var3362 (filterKeys/-667021461 var1085)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2212 null-var3362)))) ; Negate: Cond: $r7 != null  
(define-const var2227 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2450 Int (+ var646 var2227)) ; Statement: $i10 = $i2 + $i21 
(define-const var2146 Int (* 37 var2450)) ; Statement: $i3 = 37 * $i10 
(define-const var3897 var3561 (customTransformer/-667021461 var1085)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3897 null-var3561)))) ; Negate: Cond: $r9 != null  
(define-const var80 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var580 Int (+ var2146 var80)) ; Statement: $i9 = $i3 + $i22 
(define-const var2018 Int (* 37 var580)) ; Statement: $i4 = 37 * $i9 
(define-const var412 String (tenantIdentifier/-667021461 var1085)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var412 null-String))) ; Cond: $r11 != null 
(define-const var930 String (tenantIdentifier/-667021461 var1085)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var3237 Int (hashCode/-467973558 var930)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3517 Int (+ var2018 var3237)) ; Statement: $i7 = $i4 + $i23 
(define-const var1324 Int (* 37 var3517)) ; Statement: $i6 = 37 * $i7 
(define-const var3902 String (sqlQueryString/-667021461 var1085)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2856 Int (hashCode/-467973558 var3902)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2720 Int (+ var1324 var2856)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2589-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var667_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var2079=org.hibernate.cache.spi.QueryKey, var1085=r0, var2376=$r1, var643=$i14, var2235=$i13, var1182=$i0, var1358=$r3, var2837=$i15, var3654=i16, var342=i17, var2589=java.lang.Object, var2950=$r20, var1322=$i18, var502=$i1, var667=java.util.Map, var2058=$r5, var335=$r6, var3613=$i20, var2723=$i11, var646=$i2, var3362=java.util.Set, var2212=$r7, var2227=$i21, var2450=$i10, var2146=$i3, var3561=org.hibernate.transform.CacheableResultTransformer, var3897=$r9, var80=$i22, var580=$i9, var2018=$i4, var412=$r11, var2636=null_type, var930=$r12, var3237=$i23, var3517=$i7, var1324=$i6, var3902=$r13, var2856=$i5, var2720=$i8}
; {org.hibernate.cache.spi.QueryKey=var2079, r0=var1085, $r1=var2376, $i14=var643, $i13=var2235, $i0=var1182, $r3=var1358, $i15=var2837, i16=var3654, i17=var342, java.lang.Object=var2589, $r20=var2950, $i18=var1322, $i1=var502, java.util.Map=var667, $r5=var2058, $r6=var335, $i20=var3613, $i11=var2723, $i2=var646, java.util.Set=var3362, $r7=var2212, $i21=var2227, $i10=var2450, $i3=var2146, org.hibernate.transform.CacheableResultTransformer=var3561, $r9=var3897, $i22=var80, $i9=var580, $i4=var2018, $r11=var412, null_type=var2636, $r12=var930, $i23=var3237, $i7=var3517, $i6=var1324, $r13=var3902, $i5=var2856, $i8=var2720}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15