(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2327 0)
(declare-sort var3721 0)
(declare-sort var582 0)
(declare-sort var283 0)
(declare-sort var2144 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2327) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var2327) Int)
(declare-fun positionalParameterValues/-667021461 (var2327) (Array Int var3721))
(declare-fun getLength-Arr-var3721-1 ((Array Int var3721)) Int)
(declare-fun namedParameters/-667021461 (var2327) var582)
(declare-fun var582_hashCode/1768810987 (var582) Int)
(declare-fun filterKeys/-667021461 (var2327) var283)
(declare-fun var283_hashCode/539623333 (var283) Int)
(declare-fun customTransformer/-667021461 (var2327) var2144)
(declare-fun tenantIdentifier/-667021461 (var2327) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var2327) String)
(declare-const null-var2327 var2327)
(declare-const null-Int Int)
(declare-const null-var582 var582)
(declare-const null-var283 var283)
(declare-const null-var2144 var2144)
(declare-const null-String String)
(declare-const var3963 var2327) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3963 null-var2327)))
(define-const var2087 Int (firstRow/-667021461 var3963)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2087 null-Int))) ; Cond: $r1 != null 
(define-const var2978 Int (firstRow/-667021461 var3963)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2731 Int (hashCode/569135069 var2978)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2194 Int (+ 481 var2731)) ; Statement: $i13 = 481 + $i14 
(define-const var3207 Int (* 37 var2194)) ; Statement: $i0 = 37 * $i13 
(define-const var3861 Int (maxRows/-667021461 var3963)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3861 null-Int))) ; Cond: $r3 != null 
(define-const var2595 Int (maxRows/-667021461 var3963)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var1960 Int (hashCode/569135069 var2595)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1878 Int (+ var3207 var1960)) ; Statement: i16 = $i0 + $i15 
(define-const var3734 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var93 (Array Int var3721) (positionalParameterValues/-667021461 var3963)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1593 Int (getLength-Arr-var3721-1 var93)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3734 var1593)) ; Cond: i17 >= $i18 
(define-const var553 Int (* 37 var1878)) ; Statement: $i1 = 37 * i16 
(define-const var3785 var582 (namedParameters/-667021461 var3963)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3785 null-var582))) ; Cond: $r5 != null 
(define-const var281 var582 (namedParameters/-667021461 var3963)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3318 Int (var582_hashCode/1768810987 var281)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2308 Int (+ var553 var3318)) ; Statement: $i11 = $i1 + $i20 
(define-const var458 Int (* 37 var2308)) ; Statement: $i2 = 37 * $i11 
(define-const var1958 var283 (filterKeys/-667021461 var3963)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1958 null-var283))) ; Cond: $r7 != null 
(define-const var3819 var283 (filterKeys/-667021461 var3963)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2557 Int (var283_hashCode/539623333 var3819)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1274 Int (+ var458 var2557)) ; Statement: $i10 = $i2 + $i21 
(define-const var267 Int (* 37 var1274)) ; Statement: $i3 = 37 * $i10 
(define-const var2497 var2144 (customTransformer/-667021461 var3963)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2497 null-var2144)))) ; Negate: Cond: $r9 != null  
(define-const var2226 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var848 Int (+ var267 var2226)) ; Statement: $i9 = $i3 + $i22 
(define-const var2641 Int (* 37 var848)) ; Statement: $i4 = 37 * $i9 
(define-const var289 String (tenantIdentifier/-667021461 var3963)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var289 null-String))) ; Cond: $r11 != null 
(define-const var2460 String (tenantIdentifier/-667021461 var3963)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var566 Int (hashCode/-467973558 var2460)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2835 Int (+ var2641 var566)) ; Statement: $i7 = $i4 + $i23 
(define-const var2389 Int (* 37 var2835)) ; Statement: $i6 = 37 * $i7 
(define-const var629 String (sqlQueryString/-667021461 var3963)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var423 Int (hashCode/-467973558 var629)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3426 Int (+ var2389 var423)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3721-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var582_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var283_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var2327=org.hibernate.cache.spi.QueryKey, var3963=r0, var2087=$r1, var2978=$r2, var2731=$i14, var2194=$i13, var3207=$i0, var3861=$r3, var2595=$r4, var1960=$i15, var1878=i16, var3734=i17, var3721=java.lang.Object, var93=$r20, var1593=$i18, var553=$i1, var582=java.util.Map, var3785=$r5, var281=$r6, var3318=$i20, var2308=$i11, var458=$i2, var283=java.util.Set, var1958=$r7, var3819=$r8, var2557=$i21, var1274=$i10, var267=$i3, var2144=org.hibernate.transform.CacheableResultTransformer, var2497=$r9, var2226=$i22, var848=$i9, var2641=$i4, var289=$r11, var736=null_type, var2460=$r12, var566=$i23, var2835=$i7, var2389=$i6, var629=$r13, var423=$i5, var3426=$i8}
; {org.hibernate.cache.spi.QueryKey=var2327, r0=var3963, $r1=var2087, $r2=var2978, $i14=var2731, $i13=var2194, $i0=var3207, $r3=var3861, $r4=var2595, $i15=var1960, i16=var1878, i17=var3734, java.lang.Object=var3721, $r20=var93, $i18=var1593, $i1=var553, java.util.Map=var582, $r5=var3785, $r6=var281, $i20=var3318, $i11=var2308, $i2=var458, java.util.Set=var283, $r7=var1958, $r8=var3819, $i21=var2557, $i10=var1274, $i3=var267, org.hibernate.transform.CacheableResultTransformer=var2144, $r9=var2497, $i22=var2226, $i9=var848, $i4=var2641, $r11=var289, null_type=var736, $r12=var2460, $i23=var566, $i7=var2835, $i6=var2389, $r13=var629, $i5=var423, $i8=var3426}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15