(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var404 0)
(declare-sort var1661 0)
(declare-sort var3401 0)
(declare-sort var408 0)
(declare-sort var1972 0)
(declare-sort var275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var404) Int)
(declare-fun maxRows/-667021461 (var404) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var404) (Array Int var1661))
(declare-fun getLength-Arr-var1661-1 ((Array Int var1661)) Int)
(declare-fun namedParameters/-667021461 (var404) var3401)
(declare-fun var3401_hashCode/1768810987 (var3401) Int)
(declare-fun filterKeys/-667021461 (var404) var408)
(declare-fun var408_hashCode/539623333 (var408) Int)
(declare-fun customTransformer/-667021461 (var404) var1972)
(declare-fun tenantIdentifier/-667021461 (var404) String)
(declare-fun sqlQueryString/-667021461 (var404) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var404 var404)
(declare-const null-Int Int)
(declare-const null-var3401 var3401)
(declare-const null-var408 var408)
(declare-const null-var1972 var1972)
(declare-const null-String String)
(declare-const var3002 var404) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3002 null-var404)))
(define-const var3465 Int (firstRow/-667021461 var3002)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3465 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var3228 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2938 Int (+ 481 var3228)) ; Statement: $i13 = 481 + $i14 
(define-const var952 Int (* 37 var2938)) ; Statement: $i0 = 37 * $i13 
(define-const var2029 Int (maxRows/-667021461 var3002)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2029 null-Int))) ; Cond: $r3 != null 
(define-const var1267 Int (maxRows/-667021461 var3002)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var642 Int (hashCode/569135069 var1267)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2557 Int (+ var952 var642)) ; Statement: i16 = $i0 + $i15 
(define-const var2446 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1523 (Array Int var1661) (positionalParameterValues/-667021461 var3002)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1066 Int (getLength-Arr-var1661-1 var1523)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2446 var1066)) ; Cond: i17 >= $i18 
(define-const var2033 Int (* 37 var2557)) ; Statement: $i1 = 37 * i16 
(define-const var2620 var3401 (namedParameters/-667021461 var3002)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2620 null-var3401))) ; Cond: $r5 != null 
(define-const var2366 var3401 (namedParameters/-667021461 var3002)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var82 Int (var3401_hashCode/1768810987 var2366)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2293 Int (+ var2033 var82)) ; Statement: $i11 = $i1 + $i20 
(define-const var1038 Int (* 37 var2293)) ; Statement: $i2 = 37 * $i11 
(define-const var479 var408 (filterKeys/-667021461 var3002)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var479 null-var408))) ; Cond: $r7 != null 
(define-const var2151 var408 (filterKeys/-667021461 var3002)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3186 Int (var408_hashCode/539623333 var2151)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3305 Int (+ var1038 var3186)) ; Statement: $i10 = $i2 + $i21 
(define-const var2623 Int (* 37 var3305)) ; Statement: $i3 = 37 * $i10 
(define-const var3264 var1972 (customTransformer/-667021461 var3002)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3264 null-var1972)))) ; Negate: Cond: $r9 != null  
(define-const var365 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1071 Int (+ var2623 var365)) ; Statement: $i9 = $i3 + $i22 
(define-const var2926 Int (* 37 var1071)) ; Statement: $i4 = 37 * $i9 
(define-const var2346 String (tenantIdentifier/-667021461 var3002)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2346 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2183 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1041 Int (+ var2926 var2183)) ; Statement: $i7 = $i4 + $i23 
(define-const var3811 Int (* 37 var1041)) ; Statement: $i6 = 37 * $i7 
(define-const var3725 String (sqlQueryString/-667021461 var3002)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var30 Int (hashCode/-467973558 var3725)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var545 Int (+ var3811 var30)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1661-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3401_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var408_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var404=org.hibernate.cache.spi.QueryKey, var3002=r0, var3465=$r1, var3228=$i14, var2938=$i13, var952=$i0, var2029=$r3, var1267=$r4, var642=$i15, var2557=i16, var2446=i17, var1661=java.lang.Object, var1523=$r20, var1066=$i18, var2033=$i1, var3401=java.util.Map, var2620=$r5, var2366=$r6, var82=$i20, var2293=$i11, var1038=$i2, var408=java.util.Set, var479=$r7, var2151=$r8, var3186=$i21, var3305=$i10, var2623=$i3, var1972=org.hibernate.transform.CacheableResultTransformer, var3264=$r9, var365=$i22, var1071=$i9, var2926=$i4, var2346=$r11, var275=null_type, var2183=$i23, var1041=$i7, var3811=$i6, var3725=$r13, var30=$i5, var545=$i8}
; {org.hibernate.cache.spi.QueryKey=var404, r0=var3002, $r1=var3465, $i14=var3228, $i13=var2938, $i0=var952, $r3=var2029, $r4=var1267, $i15=var642, i16=var2557, i17=var2446, java.lang.Object=var1661, $r20=var1523, $i18=var1066, $i1=var2033, java.util.Map=var3401, $r5=var2620, $r6=var2366, $i20=var82, $i11=var2293, $i2=var1038, java.util.Set=var408, $r7=var479, $r8=var2151, $i21=var3186, $i10=var3305, $i3=var2623, org.hibernate.transform.CacheableResultTransformer=var1972, $r9=var3264, $i22=var365, $i9=var1071, $i4=var2926, $r11=var2346, null_type=var275, $i23=var2183, $i7=var1041, $i6=var3811, $r13=var3725, $i5=var30, $i8=var545}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15