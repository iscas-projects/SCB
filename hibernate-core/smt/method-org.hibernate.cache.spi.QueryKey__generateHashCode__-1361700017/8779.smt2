(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1104 0)
(declare-sort var1666 0)
(declare-sort var3262 0)
(declare-sort var838 0)
(declare-sort var3394 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1104) Int)
(declare-fun maxRows/-667021461 (var1104) Int)
(declare-fun positionalParameterValues/-667021461 (var1104) (Array Int var1666))
(declare-fun getLength-Arr-var1666-1 ((Array Int var1666)) Int)
(declare-fun namedParameters/-667021461 (var1104) var3262)
(declare-fun filterKeys/-667021461 (var1104) var838)
(declare-fun customTransformer/-667021461 (var1104) var3394)
(declare-fun hashCode/1497633159 (var3394) Int)
(declare-fun tenantIdentifier/-667021461 (var1104) String)
(declare-fun sqlQueryString/-667021461 (var1104) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1104 var1104)
(declare-const null-Int Int)
(declare-const null-var3262 var3262)
(declare-const null-var838 var838)
(declare-const null-var3394 var3394)
(declare-const null-String String)
(declare-const var3920 var1104) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3920 null-var1104)))
(define-const var549 Int (firstRow/-667021461 var3920)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var549 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2170 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3815 Int (+ 481 var2170)) ; Statement: $i13 = 481 + $i14 
(define-const var3834 Int (* 37 var3815)) ; Statement: $i0 = 37 * $i13 
(define-const var1950 Int (maxRows/-667021461 var3920)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1950 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var1822 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2893 Int (+ var3834 var1822)) ; Statement: i16 = $i0 + $i15 
(define-const var756 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2825 (Array Int var1666) (positionalParameterValues/-667021461 var3920)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2447 Int (getLength-Arr-var1666-1 var2825)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var756 var2447)) ; Cond: i17 >= $i18 
(define-const var3170 Int (* 37 var2893)) ; Statement: $i1 = 37 * i16 
(define-const var854 var3262 (namedParameters/-667021461 var3920)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var854 null-var3262)))) ; Negate: Cond: $r5 != null  
(define-const var2381 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2127 Int (+ var3170 var2381)) ; Statement: $i11 = $i1 + $i20 
(define-const var2475 Int (* 37 var2127)) ; Statement: $i2 = 37 * $i11 
(define-const var666 var838 (filterKeys/-667021461 var3920)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var666 null-var838)))) ; Negate: Cond: $r7 != null  
(define-const var3213 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1306 Int (+ var2475 var3213)) ; Statement: $i10 = $i2 + $i21 
(define-const var3443 Int (* 37 var1306)) ; Statement: $i3 = 37 * $i10 
(define-const var1545 var3394 (customTransformer/-667021461 var3920)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1545 null-var3394))) ; Cond: $r9 != null 
(define-const var2521 var3394 (customTransformer/-667021461 var3920)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2383 Int (hashCode/1497633159 var2521)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1015 Int (+ var3443 var2383)) ; Statement: $i9 = $i3 + $i22 
(define-const var1778 Int (* 37 var1015)) ; Statement: $i4 = 37 * $i9 
(define-const var3279 String (tenantIdentifier/-667021461 var3920)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3279 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2058 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3410 Int (+ var1778 var2058)) ; Statement: $i7 = $i4 + $i23 
(define-const var534 Int (* 37 var3410)) ; Statement: $i6 = 37 * $i7 
(define-const var1931 String (sqlQueryString/-667021461 var3920)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3630 Int (hashCode/-467973558 var1931)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2078 Int (+ var534 var3630)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1666-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1104=org.hibernate.cache.spi.QueryKey, var3920=r0, var549=$r1, var2170=$i14, var3815=$i13, var3834=$i0, var1950=$r3, var1822=$i15, var2893=i16, var756=i17, var1666=java.lang.Object, var2825=$r20, var2447=$i18, var3170=$i1, var3262=java.util.Map, var854=$r5, var2381=$i20, var2127=$i11, var2475=$i2, var838=java.util.Set, var666=$r7, var3213=$i21, var1306=$i10, var3443=$i3, var3394=org.hibernate.transform.CacheableResultTransformer, var1545=$r9, var2521=$r10, var2383=$i22, var1015=$i9, var1778=$i4, var3279=$r11, var2944=null_type, var2058=$i23, var3410=$i7, var534=$i6, var1931=$r13, var3630=$i5, var2078=$i8}
; {org.hibernate.cache.spi.QueryKey=var1104, r0=var3920, $r1=var549, $i14=var2170, $i13=var3815, $i0=var3834, $r3=var1950, $i15=var1822, i16=var2893, i17=var756, java.lang.Object=var1666, $r20=var2825, $i18=var2447, $i1=var3170, java.util.Map=var3262, $r5=var854, $i20=var2381, $i11=var2127, $i2=var2475, java.util.Set=var838, $r7=var666, $i21=var3213, $i10=var1306, $i3=var3443, org.hibernate.transform.CacheableResultTransformer=var3394, $r9=var1545, $r10=var2521, $i22=var2383, $i9=var1015, $i4=var1778, $r11=var3279, null_type=var2944, $i23=var2058, $i7=var3410, $i6=var534, $r13=var1931, $i5=var3630, $i8=var2078}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15