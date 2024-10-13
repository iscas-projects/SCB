(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2383 0)
(declare-sort var350 0)
(declare-sort var154 0)
(declare-sort var754 0)
(declare-sort var2011 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2383) Int)
(declare-fun maxRows/-667021461 (var2383) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var2383) (Array Int var350))
(declare-fun getLength-Arr-var350-1 ((Array Int var350)) Int)
(declare-fun namedParameters/-667021461 (var2383) var154)
(declare-fun var154_hashCode/1768810987 (var154) Int)
(declare-fun filterKeys/-667021461 (var2383) var754)
(declare-fun customTransformer/-667021461 (var2383) var2011)
(declare-fun hashCode/1497633159 (var2011) Int)
(declare-fun tenantIdentifier/-667021461 (var2383) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var2383) String)
(declare-const null-var2383 var2383)
(declare-const null-Int Int)
(declare-const null-var154 var154)
(declare-const null-var754 var754)
(declare-const null-var2011 var2011)
(declare-const null-String String)
(declare-const var2905 var2383) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2905 null-var2383)))
(define-const var1301 Int (firstRow/-667021461 var2905)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var1301 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var924 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var244 Int (+ 481 var924)) ; Statement: $i13 = 481 + $i14 
(define-const var2508 Int (* 37 var244)) ; Statement: $i0 = 37 * $i13 
(define-const var3897 Int (maxRows/-667021461 var2905)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3897 null-Int))) ; Cond: $r3 != null 
(define-const var1977 Int (maxRows/-667021461 var2905)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1932 Int (hashCode/569135069 var1977)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3261 Int (+ var2508 var1932)) ; Statement: i16 = $i0 + $i15 
(define-const var445 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1577 (Array Int var350) (positionalParameterValues/-667021461 var2905)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3338 Int (getLength-Arr-var350-1 var1577)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var445 var3338)) ; Cond: i17 >= $i18 
(define-const var3034 Int (* 37 var3261)) ; Statement: $i1 = 37 * i16 
(define-const var2553 var154 (namedParameters/-667021461 var2905)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2553 null-var154))) ; Cond: $r5 != null 
(define-const var3438 var154 (namedParameters/-667021461 var2905)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var619 Int (var154_hashCode/1768810987 var3438)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var775 Int (+ var3034 var619)) ; Statement: $i11 = $i1 + $i20 
(define-const var131 Int (* 37 var775)) ; Statement: $i2 = 37 * $i11 
(define-const var2739 var754 (filterKeys/-667021461 var2905)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2739 null-var754)))) ; Negate: Cond: $r7 != null  
(define-const var3175 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3966 Int (+ var131 var3175)) ; Statement: $i10 = $i2 + $i21 
(define-const var1727 Int (* 37 var3966)) ; Statement: $i3 = 37 * $i10 
(define-const var438 var2011 (customTransformer/-667021461 var2905)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var438 null-var2011))) ; Cond: $r9 != null 
(define-const var1271 var2011 (customTransformer/-667021461 var2905)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1104 Int (hashCode/1497633159 var1271)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3996 Int (+ var1727 var1104)) ; Statement: $i9 = $i3 + $i22 
(define-const var2779 Int (* 37 var3996)) ; Statement: $i4 = 37 * $i9 
(define-const var2943 String (tenantIdentifier/-667021461 var2905)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2943 null-String))) ; Cond: $r11 != null 
(define-const var1999 String (tenantIdentifier/-667021461 var2905)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1412 Int (hashCode/-467973558 var1999)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1009 Int (+ var2779 var1412)) ; Statement: $i7 = $i4 + $i23 
(define-const var301 Int (* 37 var1009)) ; Statement: $i6 = 37 * $i7 
(define-const var3164 String (sqlQueryString/-667021461 var2905)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3108 Int (hashCode/-467973558 var3164)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1461 Int (+ var301 var3108)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var350-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var154_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var2383=org.hibernate.cache.spi.QueryKey, var2905=r0, var1301=$r1, var924=$i14, var244=$i13, var2508=$i0, var3897=$r3, var1977=$r4, var1932=$i15, var3261=i16, var445=i17, var350=java.lang.Object, var1577=$r20, var3338=$i18, var3034=$i1, var154=java.util.Map, var2553=$r5, var3438=$r6, var619=$i20, var775=$i11, var131=$i2, var754=java.util.Set, var2739=$r7, var3175=$i21, var3966=$i10, var1727=$i3, var2011=org.hibernate.transform.CacheableResultTransformer, var438=$r9, var1271=$r10, var1104=$i22, var3996=$i9, var2779=$i4, var2943=$r11, var3279=null_type, var1999=$r12, var1412=$i23, var1009=$i7, var301=$i6, var3164=$r13, var3108=$i5, var1461=$i8}
; {org.hibernate.cache.spi.QueryKey=var2383, r0=var2905, $r1=var1301, $i14=var924, $i13=var244, $i0=var2508, $r3=var3897, $r4=var1977, $i15=var1932, i16=var3261, i17=var445, java.lang.Object=var350, $r20=var1577, $i18=var3338, $i1=var3034, java.util.Map=var154, $r5=var2553, $r6=var3438, $i20=var619, $i11=var775, $i2=var131, java.util.Set=var754, $r7=var2739, $i21=var3175, $i10=var3966, $i3=var1727, org.hibernate.transform.CacheableResultTransformer=var2011, $r9=var438, $r10=var1271, $i22=var1104, $i9=var3996, $i4=var2779, $r11=var2943, null_type=var3279, $r12=var1999, $i23=var1412, $i7=var1009, $i6=var301, $r13=var3164, $i5=var3108, $i8=var1461}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15