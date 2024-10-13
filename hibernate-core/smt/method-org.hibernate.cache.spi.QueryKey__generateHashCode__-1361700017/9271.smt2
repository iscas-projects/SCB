(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1410 0)
(declare-sort var1845 0)
(declare-sort var3653 0)
(declare-sort var3914 0)
(declare-sort var2928 0)
(declare-sort var165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1410) Int)
(declare-fun maxRows/-667021461 (var1410) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1410) (Array Int var1845))
(declare-fun getLength-Arr-var1845-1 ((Array Int var1845)) Int)
(declare-fun namedParameters/-667021461 (var1410) var3653)
(declare-fun var3653_hashCode/1768810987 (var3653) Int)
(declare-fun filterKeys/-667021461 (var1410) var3914)
(declare-fun var3914_hashCode/539623333 (var3914) Int)
(declare-fun customTransformer/-667021461 (var1410) var2928)
(declare-fun tenantIdentifier/-667021461 (var1410) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1410) String)
(declare-const null-var1410 var1410)
(declare-const null-Int Int)
(declare-const null-var3653 var3653)
(declare-const null-var3914 var3914)
(declare-const null-var2928 var2928)
(declare-const null-String String)
(declare-const var3925 var1410) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3925 null-var1410)))
(define-const var1919 Int (firstRow/-667021461 var3925)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1919 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var3122 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var912 Int (+ 481 var3122)) ; Statement: $i13 = 481 + $i14 
(define-const var3826 Int (* 37 var912)) ; Statement: $i0 = 37 * $i13 
(define-const var95 Int (maxRows/-667021461 var3925)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var95 null-Int))) ; Cond: $r3 != null 
(define-const var3694 Int (maxRows/-667021461 var3925)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1069 Int (hashCode/569135069 var3694)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3257 Int (+ var3826 var1069)) ; Statement: i16 = $i0 + $i15 
(define-const var2561 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var537 (Array Int var1845) (positionalParameterValues/-667021461 var3925)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2780 Int (getLength-Arr-var1845-1 var537)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2561 var2780)) ; Cond: i17 >= $i18 
(define-const var2391 Int (* 37 var3257)) ; Statement: $i1 = 37 * i16 
(define-const var2430 var3653 (namedParameters/-667021461 var3925)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2430 null-var3653))) ; Cond: $r5 != null 
(define-const var1756 var3653 (namedParameters/-667021461 var3925)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1549 Int (var3653_hashCode/1768810987 var1756)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1418 Int (+ var2391 var1549)) ; Statement: $i11 = $i1 + $i20 
(define-const var1350 Int (* 37 var1418)) ; Statement: $i2 = 37 * $i11 
(define-const var3907 var3914 (filterKeys/-667021461 var3925)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3907 null-var3914))) ; Cond: $r7 != null 
(define-const var2683 var3914 (filterKeys/-667021461 var3925)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3011 Int (var3914_hashCode/539623333 var2683)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var681 Int (+ var1350 var3011)) ; Statement: $i10 = $i2 + $i21 
(define-const var1049 Int (* 37 var681)) ; Statement: $i3 = 37 * $i10 
(define-const var0 var2928 (customTransformer/-667021461 var3925)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var0 null-var2928)))) ; Negate: Cond: $r9 != null  
(define-const var574 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1366 Int (+ var1049 var574)) ; Statement: $i9 = $i3 + $i22 
(define-const var2462 Int (* 37 var1366)) ; Statement: $i4 = 37 * $i9 
(define-const var723 String (tenantIdentifier/-667021461 var3925)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var723 null-String))) ; Cond: $r11 != null 
(define-const var2112 String (tenantIdentifier/-667021461 var3925)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1268 Int (hashCode/-467973558 var2112)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2294 Int (+ var2462 var1268)) ; Statement: $i7 = $i4 + $i23 
(define-const var430 Int (* 37 var2294)) ; Statement: $i6 = 37 * $i7 
(define-const var3239 String (sqlQueryString/-667021461 var3925)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1970 Int (hashCode/-467973558 var3239)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3850 Int (+ var430 var1970)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1845-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3653_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3914_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1410=org.hibernate.cache.spi.QueryKey, var3925=r0, var1919=$r1, var3122=$i14, var912=$i13, var3826=$i0, var95=$r3, var3694=$r4, var1069=$i15, var3257=i16, var2561=i17, var1845=java.lang.Object, var537=$r20, var2780=$i18, var2391=$i1, var3653=java.util.Map, var2430=$r5, var1756=$r6, var1549=$i20, var1418=$i11, var1350=$i2, var3914=java.util.Set, var3907=$r7, var2683=$r8, var3011=$i21, var681=$i10, var1049=$i3, var2928=org.hibernate.transform.CacheableResultTransformer, var0=$r9, var574=$i22, var1366=$i9, var2462=$i4, var723=$r11, var165=null_type, var2112=$r12, var1268=$i23, var2294=$i7, var430=$i6, var3239=$r13, var1970=$i5, var3850=$i8}
; {org.hibernate.cache.spi.QueryKey=var1410, r0=var3925, $r1=var1919, $i14=var3122, $i13=var912, $i0=var3826, $r3=var95, $r4=var3694, $i15=var1069, i16=var3257, i17=var2561, java.lang.Object=var1845, $r20=var537, $i18=var2780, $i1=var2391, java.util.Map=var3653, $r5=var2430, $r6=var1756, $i20=var1549, $i11=var1418, $i2=var1350, java.util.Set=var3914, $r7=var3907, $r8=var2683, $i21=var3011, $i10=var681, $i3=var1049, org.hibernate.transform.CacheableResultTransformer=var2928, $r9=var0, $i22=var574, $i9=var1366, $i4=var2462, $r11=var723, null_type=var165, $r12=var2112, $i23=var1268, $i7=var2294, $i6=var430, $r13=var3239, $i5=var1970, $i8=var3850}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15