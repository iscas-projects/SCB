(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3652 0)
(declare-sort var3115 0)
(declare-sort var65 0)
(declare-sort var1289 0)
(declare-sort var943 0)
(declare-sort var1793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3652) Int)
(declare-fun maxRows/-667021461 (var3652) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var3652) (Array Int var3115))
(declare-fun getLength-Arr-var3115-1 ((Array Int var3115)) Int)
(declare-fun namedParameters/-667021461 (var3652) var65)
(declare-fun var65_hashCode/1768810987 (var65) Int)
(declare-fun filterKeys/-667021461 (var3652) var1289)
(declare-fun var1289_hashCode/539623333 (var1289) Int)
(declare-fun customTransformer/-667021461 (var3652) var943)
(declare-fun hashCode/1497633159 (var943) Int)
(declare-fun tenantIdentifier/-667021461 (var3652) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3652) String)
(declare-const null-var3652 var3652)
(declare-const null-Int Int)
(declare-const null-var65 var65)
(declare-const null-var1289 var1289)
(declare-const null-var943 var943)
(declare-const null-String String)
(declare-const var2946 var3652) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2946 null-var3652)))
(define-const var77 Int (firstRow/-667021461 var2946)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var77 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1190 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2987 Int (+ 481 var1190)) ; Statement: $i13 = 481 + $i14 
(define-const var2459 Int (* 37 var2987)) ; Statement: $i0 = 37 * $i13 
(define-const var965 Int (maxRows/-667021461 var2946)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var965 null-Int))) ; Cond: $r3 != null 
(define-const var3002 Int (maxRows/-667021461 var2946)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var286 Int (hashCode/569135069 var3002)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2822 Int (+ var2459 var286)) ; Statement: i16 = $i0 + $i15 
(define-const var3344 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2643 (Array Int var3115) (positionalParameterValues/-667021461 var2946)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3070 Int (getLength-Arr-var3115-1 var2643)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3344 var3070)) ; Cond: i17 >= $i18 
(define-const var1679 Int (* 37 var2822)) ; Statement: $i1 = 37 * i16 
(define-const var2743 var65 (namedParameters/-667021461 var2946)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2743 null-var65))) ; Cond: $r5 != null 
(define-const var556 var65 (namedParameters/-667021461 var2946)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1697 Int (var65_hashCode/1768810987 var556)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3727 Int (+ var1679 var1697)) ; Statement: $i11 = $i1 + $i20 
(define-const var1419 Int (* 37 var3727)) ; Statement: $i2 = 37 * $i11 
(define-const var2472 var1289 (filterKeys/-667021461 var2946)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var2472 null-var1289))) ; Cond: $r7 != null 
(define-const var32 var1289 (filterKeys/-667021461 var2946)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var285 Int (var1289_hashCode/539623333 var32)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var663 Int (+ var1419 var285)) ; Statement: $i10 = $i2 + $i21 
(define-const var2430 Int (* 37 var663)) ; Statement: $i3 = 37 * $i10 
(define-const var2374 var943 (customTransformer/-667021461 var2946)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2374 null-var943))) ; Cond: $r9 != null 
(define-const var2081 var943 (customTransformer/-667021461 var2946)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var3759 Int (hashCode/1497633159 var2081)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3770 Int (+ var2430 var3759)) ; Statement: $i9 = $i3 + $i22 
(define-const var1877 Int (* 37 var3770)) ; Statement: $i4 = 37 * $i9 
(define-const var1199 String (tenantIdentifier/-667021461 var2946)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1199 null-String))) ; Cond: $r11 != null 
(define-const var1540 String (tenantIdentifier/-667021461 var2946)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1144 Int (hashCode/-467973558 var1540)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var433 Int (+ var1877 var1144)) ; Statement: $i7 = $i4 + $i23 
(define-const var1244 Int (* 37 var433)) ; Statement: $i6 = 37 * $i7 
(define-const var2252 String (sqlQueryString/-667021461 var2946)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2995 Int (hashCode/-467973558 var2252)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var785 Int (+ var1244 var2995)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3115-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var65_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1289_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3652=org.hibernate.cache.spi.QueryKey, var2946=r0, var77=$r1, var1190=$i14, var2987=$i13, var2459=$i0, var965=$r3, var3002=$r4, var286=$i15, var2822=i16, var3344=i17, var3115=java.lang.Object, var2643=$r20, var3070=$i18, var1679=$i1, var65=java.util.Map, var2743=$r5, var556=$r6, var1697=$i20, var3727=$i11, var1419=$i2, var1289=java.util.Set, var2472=$r7, var32=$r8, var285=$i21, var663=$i10, var2430=$i3, var943=org.hibernate.transform.CacheableResultTransformer, var2374=$r9, var2081=$r10, var3759=$i22, var3770=$i9, var1877=$i4, var1199=$r11, var1793=null_type, var1540=$r12, var1144=$i23, var433=$i7, var1244=$i6, var2252=$r13, var2995=$i5, var785=$i8}
; {org.hibernate.cache.spi.QueryKey=var3652, r0=var2946, $r1=var77, $i14=var1190, $i13=var2987, $i0=var2459, $r3=var965, $r4=var3002, $i15=var286, i16=var2822, i17=var3344, java.lang.Object=var3115, $r20=var2643, $i18=var3070, $i1=var1679, java.util.Map=var65, $r5=var2743, $r6=var556, $i20=var1697, $i11=var3727, $i2=var1419, java.util.Set=var1289, $r7=var2472, $r8=var32, $i21=var285, $i10=var663, $i3=var2430, org.hibernate.transform.CacheableResultTransformer=var943, $r9=var2374, $r10=var2081, $i22=var3759, $i9=var3770, $i4=var1877, $r11=var1199, null_type=var1793, $r12=var1540, $i23=var1144, $i7=var433, $i6=var1244, $r13=var2252, $i5=var2995, $i8=var785}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15