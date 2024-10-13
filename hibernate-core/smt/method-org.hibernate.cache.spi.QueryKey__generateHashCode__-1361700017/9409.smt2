(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var469 0)
(declare-sort var1568 0)
(declare-sort var1366 0)
(declare-sort var2457 0)
(declare-sort var287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var692) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var692) Int)
(declare-fun positionalParameterValues/-667021461 (var692) (Array Int var469))
(declare-fun getLength-Arr-var469-1 ((Array Int var469)) Int)
(declare-fun namedParameters/-667021461 (var692) var1568)
(declare-fun var1568_hashCode/1768810987 (var1568) Int)
(declare-fun filterKeys/-667021461 (var692) var1366)
(declare-fun customTransformer/-667021461 (var692) var2457)
(declare-fun hashCode/1497633159 (var2457) Int)
(declare-fun tenantIdentifier/-667021461 (var692) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var692) String)
(declare-const null-var692 var692)
(declare-const null-Int Int)
(declare-const null-var1568 var1568)
(declare-const null-var1366 var1366)
(declare-const null-var2457 var2457)
(declare-const null-String String)
(declare-const var3902 var692) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3902 null-var692)))
(define-const var875 Int (firstRow/-667021461 var3902)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var875 null-Int))) ; Cond: $r1 != null 
(define-const var3045 Int (firstRow/-667021461 var3902)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var146 Int (hashCode/569135069 var3045)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var231 Int (+ 481 var146)) ; Statement: $i13 = 481 + $i14 
(define-const var893 Int (* 37 var231)) ; Statement: $i0 = 37 * $i13 
(define-const var2719 Int (maxRows/-667021461 var3902)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2719 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3702 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2662 Int (+ var893 var3702)) ; Statement: i16 = $i0 + $i15 
(define-const var3656 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1741 (Array Int var469) (positionalParameterValues/-667021461 var3902)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var877 Int (getLength-Arr-var469-1 var1741)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3656 var877)) ; Cond: i17 >= $i18 
(define-const var767 Int (* 37 var2662)) ; Statement: $i1 = 37 * i16 
(define-const var1322 var1568 (namedParameters/-667021461 var3902)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var1322 null-var1568))) ; Cond: $r5 != null 
(define-const var1723 var1568 (namedParameters/-667021461 var3902)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1211 Int (var1568_hashCode/1768810987 var1723)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2481 Int (+ var767 var1211)) ; Statement: $i11 = $i1 + $i20 
(define-const var2955 Int (* 37 var2481)) ; Statement: $i2 = 37 * $i11 
(define-const var1806 var1366 (filterKeys/-667021461 var3902)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1806 null-var1366)))) ; Negate: Cond: $r7 != null  
(define-const var3693 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var2903 Int (+ var2955 var3693)) ; Statement: $i10 = $i2 + $i21 
(define-const var1422 Int (* 37 var2903)) ; Statement: $i3 = 37 * $i10 
(define-const var2227 var2457 (customTransformer/-667021461 var3902)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2227 null-var2457))) ; Cond: $r9 != null 
(define-const var3747 var2457 (customTransformer/-667021461 var3902)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var3615 Int (hashCode/1497633159 var3747)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2184 Int (+ var1422 var3615)) ; Statement: $i9 = $i3 + $i22 
(define-const var2159 Int (* 37 var2184)) ; Statement: $i4 = 37 * $i9 
(define-const var2488 String (tenantIdentifier/-667021461 var3902)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2488 null-String))) ; Cond: $r11 != null 
(define-const var3095 String (tenantIdentifier/-667021461 var3902)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var3257 Int (hashCode/-467973558 var3095)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2239 Int (+ var2159 var3257)) ; Statement: $i7 = $i4 + $i23 
(define-const var3959 Int (* 37 var2239)) ; Statement: $i6 = 37 * $i7 
(define-const var725 String (sqlQueryString/-667021461 var3902)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2773 Int (hashCode/-467973558 var725)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var368 Int (+ var3959 var2773)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var469-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var1568_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var692=org.hibernate.cache.spi.QueryKey, var3902=r0, var875=$r1, var3045=$r2, var146=$i14, var231=$i13, var893=$i0, var2719=$r3, var3702=$i15, var2662=i16, var3656=i17, var469=java.lang.Object, var1741=$r20, var877=$i18, var767=$i1, var1568=java.util.Map, var1322=$r5, var1723=$r6, var1211=$i20, var2481=$i11, var2955=$i2, var1366=java.util.Set, var1806=$r7, var3693=$i21, var2903=$i10, var1422=$i3, var2457=org.hibernate.transform.CacheableResultTransformer, var2227=$r9, var3747=$r10, var3615=$i22, var2184=$i9, var2159=$i4, var2488=$r11, var287=null_type, var3095=$r12, var3257=$i23, var2239=$i7, var3959=$i6, var725=$r13, var2773=$i5, var368=$i8}
; {org.hibernate.cache.spi.QueryKey=var692, r0=var3902, $r1=var875, $r2=var3045, $i14=var146, $i13=var231, $i0=var893, $r3=var2719, $i15=var3702, i16=var2662, i17=var3656, java.lang.Object=var469, $r20=var1741, $i18=var877, $i1=var767, java.util.Map=var1568, $r5=var1322, $r6=var1723, $i20=var1211, $i11=var2481, $i2=var2955, java.util.Set=var1366, $r7=var1806, $i21=var3693, $i10=var2903, $i3=var1422, org.hibernate.transform.CacheableResultTransformer=var2457, $r9=var2227, $r10=var3747, $i22=var3615, $i9=var2184, $i4=var2159, $r11=var2488, null_type=var287, $r12=var3095, $i23=var3257, $i7=var2239, $i6=var3959, $r13=var725, $i5=var2773, $i8=var368}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15