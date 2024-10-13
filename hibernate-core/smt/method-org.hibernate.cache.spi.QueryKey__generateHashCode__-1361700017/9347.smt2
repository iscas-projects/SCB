(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var417 0)
(declare-sort var2012 0)
(declare-sort var1015 0)
(declare-sort var2795 0)
(declare-sort var3095 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var417) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var417) Int)
(declare-fun positionalParameterValues/-667021461 (var417) (Array Int var2012))
(declare-fun getLength-Arr-var2012-1 ((Array Int var2012)) Int)
(declare-fun namedParameters/-667021461 (var417) var1015)
(declare-fun filterKeys/-667021461 (var417) var2795)
(declare-fun var2795_hashCode/539623333 (var2795) Int)
(declare-fun customTransformer/-667021461 (var417) var3095)
(declare-fun tenantIdentifier/-667021461 (var417) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var417) String)
(declare-const null-var417 var417)
(declare-const null-Int Int)
(declare-const null-var1015 var1015)
(declare-const null-var2795 var2795)
(declare-const null-var3095 var3095)
(declare-const null-String String)
(declare-const var2155 var417) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2155 null-var417)))
(define-const var3431 Int (firstRow/-667021461 var2155)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3431 null-Int))) ; Cond: $r1 != null 
(define-const var532 Int (firstRow/-667021461 var2155)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3288 Int (hashCode/569135069 var532)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3939 Int (+ 481 var3288)) ; Statement: $i13 = 481 + $i14 
(define-const var3946 Int (* 37 var3939)) ; Statement: $i0 = 37 * $i13 
(define-const var520 Int (maxRows/-667021461 var2155)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var520 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var19 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3223 Int (+ var3946 var19)) ; Statement: i16 = $i0 + $i15 
(define-const var1242 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1981 (Array Int var2012) (positionalParameterValues/-667021461 var2155)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1723 Int (getLength-Arr-var2012-1 var1981)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1242 var1723)) ; Cond: i17 >= $i18 
(define-const var1998 Int (* 37 var3223)) ; Statement: $i1 = 37 * i16 
(define-const var721 var1015 (namedParameters/-667021461 var2155)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var721 null-var1015)))) ; Negate: Cond: $r5 != null  
(define-const var1748 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var839 Int (+ var1998 var1748)) ; Statement: $i11 = $i1 + $i20 
(define-const var2642 Int (* 37 var839)) ; Statement: $i2 = 37 * $i11 
(define-const var3477 var2795 (filterKeys/-667021461 var2155)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3477 null-var2795))) ; Cond: $r7 != null 
(define-const var1895 var2795 (filterKeys/-667021461 var2155)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3775 Int (var2795_hashCode/539623333 var1895)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1054 Int (+ var2642 var3775)) ; Statement: $i10 = $i2 + $i21 
(define-const var1304 Int (* 37 var1054)) ; Statement: $i3 = 37 * $i10 
(define-const var1405 var3095 (customTransformer/-667021461 var2155)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1405 null-var3095)))) ; Negate: Cond: $r9 != null  
(define-const var1753 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1545 Int (+ var1304 var1753)) ; Statement: $i9 = $i3 + $i22 
(define-const var2806 Int (* 37 var1545)) ; Statement: $i4 = 37 * $i9 
(define-const var362 String (tenantIdentifier/-667021461 var2155)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var362 null-String))) ; Cond: $r11 != null 
(define-const var1447 String (tenantIdentifier/-667021461 var2155)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var29 Int (hashCode/-467973558 var1447)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1903 Int (+ var2806 var29)) ; Statement: $i7 = $i4 + $i23 
(define-const var3156 Int (* 37 var1903)) ; Statement: $i6 = 37 * $i7 
(define-const var279 String (sqlQueryString/-667021461 var2155)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1078 Int (hashCode/-467973558 var279)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1524 Int (+ var3156 var1078)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2012-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var2795_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var417=org.hibernate.cache.spi.QueryKey, var2155=r0, var3431=$r1, var532=$r2, var3288=$i14, var3939=$i13, var3946=$i0, var520=$r3, var19=$i15, var3223=i16, var1242=i17, var2012=java.lang.Object, var1981=$r20, var1723=$i18, var1998=$i1, var1015=java.util.Map, var721=$r5, var1748=$i20, var839=$i11, var2642=$i2, var2795=java.util.Set, var3477=$r7, var1895=$r8, var3775=$i21, var1054=$i10, var1304=$i3, var3095=org.hibernate.transform.CacheableResultTransformer, var1405=$r9, var1753=$i22, var1545=$i9, var2806=$i4, var362=$r11, var2861=null_type, var1447=$r12, var29=$i23, var1903=$i7, var3156=$i6, var279=$r13, var1078=$i5, var1524=$i8}
; {org.hibernate.cache.spi.QueryKey=var417, r0=var2155, $r1=var3431, $r2=var532, $i14=var3288, $i13=var3939, $i0=var3946, $r3=var520, $i15=var19, i16=var3223, i17=var1242, java.lang.Object=var2012, $r20=var1981, $i18=var1723, $i1=var1998, java.util.Map=var1015, $r5=var721, $i20=var1748, $i11=var839, $i2=var2642, java.util.Set=var2795, $r7=var3477, $r8=var1895, $i21=var3775, $i10=var1054, $i3=var1304, org.hibernate.transform.CacheableResultTransformer=var3095, $r9=var1405, $i22=var1753, $i9=var1545, $i4=var2806, $r11=var362, null_type=var2861, $r12=var1447, $i23=var29, $i7=var1903, $i6=var3156, $r13=var279, $i5=var1078, $i8=var1524}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15