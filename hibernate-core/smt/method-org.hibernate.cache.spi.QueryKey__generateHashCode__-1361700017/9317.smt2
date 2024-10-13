(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var119 0)
(declare-sort var2829 0)
(declare-sort var2258 0)
(declare-sort var2600 0)
(declare-sort var284 0)
(declare-sort var3394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var119) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var119) Int)
(declare-fun positionalParameterValues/-667021461 (var119) (Array Int var2829))
(declare-fun getLength-Arr-var2829-1 ((Array Int var2829)) Int)
(declare-fun namedParameters/-667021461 (var119) var2258)
(declare-fun filterKeys/-667021461 (var119) var2600)
(declare-fun customTransformer/-667021461 (var119) var284)
(declare-fun hashCode/1497633159 (var284) Int)
(declare-fun tenantIdentifier/-667021461 (var119) String)
(declare-fun sqlQueryString/-667021461 (var119) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var119 var119)
(declare-const null-Int Int)
(declare-const null-var2258 var2258)
(declare-const null-var2600 var2600)
(declare-const null-var284 var284)
(declare-const null-String String)
(declare-const var3853 var119) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3853 null-var119)))
(define-const var1104 Int (firstRow/-667021461 var3853)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1104 null-Int))) ; Cond: $r1 != null 
(define-const var717 Int (firstRow/-667021461 var3853)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2706 Int (hashCode/569135069 var717)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2977 Int (+ 481 var2706)) ; Statement: $i13 = 481 + $i14 
(define-const var3351 Int (* 37 var2977)) ; Statement: $i0 = 37 * $i13 
(define-const var2143 Int (maxRows/-667021461 var3853)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2143 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2302 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3686 Int (+ var3351 var2302)) ; Statement: i16 = $i0 + $i15 
(define-const var221 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1778 (Array Int var2829) (positionalParameterValues/-667021461 var3853)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3475 Int (getLength-Arr-var2829-1 var1778)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var221 var3475)) ; Cond: i17 >= $i18 
(define-const var1199 Int (* 37 var3686)) ; Statement: $i1 = 37 * i16 
(define-const var3326 var2258 (namedParameters/-667021461 var3853)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3326 null-var2258)))) ; Negate: Cond: $r5 != null  
(define-const var1119 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1731 Int (+ var1199 var1119)) ; Statement: $i11 = $i1 + $i20 
(define-const var2390 Int (* 37 var1731)) ; Statement: $i2 = 37 * $i11 
(define-const var3526 var2600 (filterKeys/-667021461 var3853)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3526 null-var2600)))) ; Negate: Cond: $r7 != null  
(define-const var1355 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var106 Int (+ var2390 var1355)) ; Statement: $i10 = $i2 + $i21 
(define-const var1736 Int (* 37 var106)) ; Statement: $i3 = 37 * $i10 
(define-const var3849 var284 (customTransformer/-667021461 var3853)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3849 null-var284))) ; Cond: $r9 != null 
(define-const var1810 var284 (customTransformer/-667021461 var3853)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2277 Int (hashCode/1497633159 var1810)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3685 Int (+ var1736 var2277)) ; Statement: $i9 = $i3 + $i22 
(define-const var3367 Int (* 37 var3685)) ; Statement: $i4 = 37 * $i9 
(define-const var3587 String (tenantIdentifier/-667021461 var3853)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3587 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3635 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1846 Int (+ var3367 var3635)) ; Statement: $i7 = $i4 + $i23 
(define-const var3962 Int (* 37 var1846)) ; Statement: $i6 = 37 * $i7 
(define-const var2021 String (sqlQueryString/-667021461 var3853)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2385 Int (hashCode/-467973558 var2021)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var786 Int (+ var3962 var2385)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2829-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var119=org.hibernate.cache.spi.QueryKey, var3853=r0, var1104=$r1, var717=$r2, var2706=$i14, var2977=$i13, var3351=$i0, var2143=$r3, var2302=$i15, var3686=i16, var221=i17, var2829=java.lang.Object, var1778=$r20, var3475=$i18, var1199=$i1, var2258=java.util.Map, var3326=$r5, var1119=$i20, var1731=$i11, var2390=$i2, var2600=java.util.Set, var3526=$r7, var1355=$i21, var106=$i10, var1736=$i3, var284=org.hibernate.transform.CacheableResultTransformer, var3849=$r9, var1810=$r10, var2277=$i22, var3685=$i9, var3367=$i4, var3587=$r11, var3394=null_type, var3635=$i23, var1846=$i7, var3962=$i6, var2021=$r13, var2385=$i5, var786=$i8}
; {org.hibernate.cache.spi.QueryKey=var119, r0=var3853, $r1=var1104, $r2=var717, $i14=var2706, $i13=var2977, $i0=var3351, $r3=var2143, $i15=var2302, i16=var3686, i17=var221, java.lang.Object=var2829, $r20=var1778, $i18=var3475, $i1=var1199, java.util.Map=var2258, $r5=var3326, $i20=var1119, $i11=var1731, $i2=var2390, java.util.Set=var2600, $r7=var3526, $i21=var1355, $i10=var106, $i3=var1736, org.hibernate.transform.CacheableResultTransformer=var284, $r9=var3849, $r10=var1810, $i22=var2277, $i9=var3685, $i4=var3367, $r11=var3587, null_type=var3394, $i23=var3635, $i7=var1846, $i6=var3962, $r13=var2021, $i5=var2385, $i8=var786}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15