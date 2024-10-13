(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2942 0)
(declare-sort var3674 0)
(declare-sort var2676 0)
(declare-sort var2393 0)
(declare-sort var524 0)
(declare-sort var73 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2942) Int)
(declare-fun maxRows/-667021461 (var2942) Int)
(declare-fun positionalParameterValues/-667021461 (var2942) (Array Int var3674))
(declare-fun getLength-Arr-var3674-1 ((Array Int var3674)) Int)
(declare-fun namedParameters/-667021461 (var2942) var2676)
(declare-fun filterKeys/-667021461 (var2942) var2393)
(declare-fun var2393_hashCode/539623333 (var2393) Int)
(declare-fun customTransformer/-667021461 (var2942) var524)
(declare-fun tenantIdentifier/-667021461 (var2942) String)
(declare-fun sqlQueryString/-667021461 (var2942) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2942 var2942)
(declare-const null-Int Int)
(declare-const null-var2676 var2676)
(declare-const null-var2393 var2393)
(declare-const null-var524 var524)
(declare-const null-String String)
(declare-const var3505 var2942) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3505 null-var2942)))
(define-const var1319 Int (firstRow/-667021461 var3505)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1319 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2943 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2028 Int (+ 481 var2943)) ; Statement: $i13 = 481 + $i14 
(define-const var1939 Int (* 37 var2028)) ; Statement: $i0 = 37 * $i13 
(define-const var716 Int (maxRows/-667021461 var3505)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var716 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var691 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3102 Int (+ var1939 var691)) ; Statement: i16 = $i0 + $i15 
(define-const var3374 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3713 (Array Int var3674) (positionalParameterValues/-667021461 var3505)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var591 Int (getLength-Arr-var3674-1 var3713)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3374 var591)) ; Cond: i17 >= $i18 
(define-const var1562 Int (* 37 var3102)) ; Statement: $i1 = 37 * i16 
(define-const var2664 var2676 (namedParameters/-667021461 var3505)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2664 null-var2676)))) ; Negate: Cond: $r5 != null  
(define-const var2966 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2618 Int (+ var1562 var2966)) ; Statement: $i11 = $i1 + $i20 
(define-const var1572 Int (* 37 var2618)) ; Statement: $i2 = 37 * $i11 
(define-const var1464 var2393 (filterKeys/-667021461 var3505)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1464 null-var2393))) ; Cond: $r7 != null 
(define-const var3590 var2393 (filterKeys/-667021461 var3505)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1625 Int (var2393_hashCode/539623333 var3590)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3049 Int (+ var1572 var1625)) ; Statement: $i10 = $i2 + $i21 
(define-const var1774 Int (* 37 var3049)) ; Statement: $i3 = 37 * $i10 
(define-const var3137 var524 (customTransformer/-667021461 var3505)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3137 null-var524)))) ; Negate: Cond: $r9 != null  
(define-const var3176 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var3530 Int (+ var1774 var3176)) ; Statement: $i9 = $i3 + $i22 
(define-const var3762 Int (* 37 var3530)) ; Statement: $i4 = 37 * $i9 
(define-const var2118 String (tenantIdentifier/-667021461 var3505)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2118 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2709 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1595 Int (+ var3762 var2709)) ; Statement: $i7 = $i4 + $i23 
(define-const var2222 Int (* 37 var1595)) ; Statement: $i6 = 37 * $i7 
(define-const var3161 String (sqlQueryString/-667021461 var3505)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var324 Int (hashCode/-467973558 var3161)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3895 Int (+ var2222 var324)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3674-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var2393_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2942=org.hibernate.cache.spi.QueryKey, var3505=r0, var1319=$r1, var2943=$i14, var2028=$i13, var1939=$i0, var716=$r3, var691=$i15, var3102=i16, var3374=i17, var3674=java.lang.Object, var3713=$r20, var591=$i18, var1562=$i1, var2676=java.util.Map, var2664=$r5, var2966=$i20, var2618=$i11, var1572=$i2, var2393=java.util.Set, var1464=$r7, var3590=$r8, var1625=$i21, var3049=$i10, var1774=$i3, var524=org.hibernate.transform.CacheableResultTransformer, var3137=$r9, var3176=$i22, var3530=$i9, var3762=$i4, var2118=$r11, var73=null_type, var2709=$i23, var1595=$i7, var2222=$i6, var3161=$r13, var324=$i5, var3895=$i8}
; {org.hibernate.cache.spi.QueryKey=var2942, r0=var3505, $r1=var1319, $i14=var2943, $i13=var2028, $i0=var1939, $r3=var716, $i15=var691, i16=var3102, i17=var3374, java.lang.Object=var3674, $r20=var3713, $i18=var591, $i1=var1562, java.util.Map=var2676, $r5=var2664, $i20=var2966, $i11=var2618, $i2=var1572, java.util.Set=var2393, $r7=var1464, $r8=var3590, $i21=var1625, $i10=var3049, $i3=var1774, org.hibernate.transform.CacheableResultTransformer=var524, $r9=var3137, $i22=var3176, $i9=var3530, $i4=var3762, $r11=var2118, null_type=var73, $i23=var2709, $i7=var1595, $i6=var2222, $r13=var3161, $i5=var324, $i8=var3895}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15