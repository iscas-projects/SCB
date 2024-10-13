(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var732 0)
(declare-sort var3579 0)
(declare-sort var1154 0)
(declare-sort var3741 0)
(declare-sort var1249 0)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var732) Int)
(declare-fun maxRows/-667021461 (var732) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var732) (Array Int var3579))
(declare-fun getLength-Arr-var3579-1 ((Array Int var3579)) Int)
(declare-fun namedParameters/-667021461 (var732) var1154)
(declare-fun filterKeys/-667021461 (var732) var3741)
(declare-fun customTransformer/-667021461 (var732) var1249)
(declare-fun hashCode/1497633159 (var1249) Int)
(declare-fun tenantIdentifier/-667021461 (var732) String)
(declare-fun sqlQueryString/-667021461 (var732) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var732 var732)
(declare-const null-Int Int)
(declare-const null-var1154 var1154)
(declare-const null-var3741 var3741)
(declare-const null-var1249 var1249)
(declare-const null-String String)
(declare-const var3046 var732) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3046 null-var732)))
(define-const var3998 Int (firstRow/-667021461 var3046)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3998 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2746 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var172 Int (+ 481 var2746)) ; Statement: $i13 = 481 + $i14 
(define-const var3336 Int (* 37 var172)) ; Statement: $i0 = 37 * $i13 
(define-const var3402 Int (maxRows/-667021461 var3046)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3402 null-Int))) ; Cond: $r3 != null 
(define-const var1877 Int (maxRows/-667021461 var3046)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1255 Int (hashCode/569135069 var1877)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1864 Int (+ var3336 var1255)) ; Statement: i16 = $i0 + $i15 
(define-const var3559 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var822 (Array Int var3579) (positionalParameterValues/-667021461 var3046)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2571 Int (getLength-Arr-var3579-1 var822)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3559 var2571)) ; Cond: i17 >= $i18 
(define-const var1327 Int (* 37 var1864)) ; Statement: $i1 = 37 * i16 
(define-const var797 var1154 (namedParameters/-667021461 var3046)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var797 null-var1154)))) ; Negate: Cond: $r5 != null  
(define-const var597 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var3466 Int (+ var1327 var597)) ; Statement: $i11 = $i1 + $i20 
(define-const var2603 Int (* 37 var3466)) ; Statement: $i2 = 37 * $i11 
(define-const var2538 var3741 (filterKeys/-667021461 var3046)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2538 null-var3741)))) ; Negate: Cond: $r7 != null  
(define-const var670 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3534 Int (+ var2603 var670)) ; Statement: $i10 = $i2 + $i21 
(define-const var3390 Int (* 37 var3534)) ; Statement: $i3 = 37 * $i10 
(define-const var1028 var1249 (customTransformer/-667021461 var3046)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1028 null-var1249))) ; Cond: $r9 != null 
(define-const var3357 var1249 (customTransformer/-667021461 var3046)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2663 Int (hashCode/1497633159 var3357)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3350 Int (+ var3390 var2663)) ; Statement: $i9 = $i3 + $i22 
(define-const var3309 Int (* 37 var3350)) ; Statement: $i4 = 37 * $i9 
(define-const var669 String (tenantIdentifier/-667021461 var3046)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var669 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2088 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var48 Int (+ var3309 var2088)) ; Statement: $i7 = $i4 + $i23 
(define-const var751 Int (* 37 var48)) ; Statement: $i6 = 37 * $i7 
(define-const var935 String (sqlQueryString/-667021461 var3046)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var793 Int (hashCode/-467973558 var935)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1213 Int (+ var751 var793)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3579-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var732=org.hibernate.cache.spi.QueryKey, var3046=r0, var3998=$r1, var2746=$i14, var172=$i13, var3336=$i0, var3402=$r3, var1877=$r4, var1255=$i15, var1864=i16, var3559=i17, var3579=java.lang.Object, var822=$r20, var2571=$i18, var1327=$i1, var1154=java.util.Map, var797=$r5, var597=$i20, var3466=$i11, var2603=$i2, var3741=java.util.Set, var2538=$r7, var670=$i21, var3534=$i10, var3390=$i3, var1249=org.hibernate.transform.CacheableResultTransformer, var1028=$r9, var3357=$r10, var2663=$i22, var3350=$i9, var3309=$i4, var669=$r11, var1163=null_type, var2088=$i23, var48=$i7, var751=$i6, var935=$r13, var793=$i5, var1213=$i8}
; {org.hibernate.cache.spi.QueryKey=var732, r0=var3046, $r1=var3998, $i14=var2746, $i13=var172, $i0=var3336, $r3=var3402, $r4=var1877, $i15=var1255, i16=var1864, i17=var3559, java.lang.Object=var3579, $r20=var822, $i18=var2571, $i1=var1327, java.util.Map=var1154, $r5=var797, $i20=var597, $i11=var3466, $i2=var2603, java.util.Set=var3741, $r7=var2538, $i21=var670, $i10=var3534, $i3=var3390, org.hibernate.transform.CacheableResultTransformer=var1249, $r9=var1028, $r10=var3357, $i22=var2663, $i9=var3350, $i4=var3309, $r11=var669, null_type=var1163, $i23=var2088, $i7=var48, $i6=var751, $r13=var935, $i5=var793, $i8=var1213}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15