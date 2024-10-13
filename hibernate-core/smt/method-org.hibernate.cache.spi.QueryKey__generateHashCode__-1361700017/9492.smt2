(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var1473 0)
(declare-sort var2202 0)
(declare-sort var3970 0)
(declare-sort var716 0)
(declare-sort var2513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1840) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1840) Int)
(declare-fun positionalParameterValues/-667021461 (var1840) (Array Int var1473))
(declare-fun getLength-Arr-var1473-1 ((Array Int var1473)) Int)
(declare-fun namedParameters/-667021461 (var1840) var2202)
(declare-fun filterKeys/-667021461 (var1840) var3970)
(declare-fun var3970_hashCode/539623333 (var3970) Int)
(declare-fun customTransformer/-667021461 (var1840) var716)
(declare-fun tenantIdentifier/-667021461 (var1840) String)
(declare-fun sqlQueryString/-667021461 (var1840) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1840 var1840)
(declare-const null-Int Int)
(declare-const null-var2202 var2202)
(declare-const null-var3970 var3970)
(declare-const null-var716 var716)
(declare-const null-String String)
(declare-const var1359 var1840) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1359 null-var1840)))
(define-const var3377 Int (firstRow/-667021461 var1359)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3377 null-Int))) ; Cond: $r1 != null 
(define-const var1565 Int (firstRow/-667021461 var1359)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2524 Int (hashCode/569135069 var1565)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2517 Int (+ 481 var2524)) ; Statement: $i13 = 481 + $i14 
(define-const var3425 Int (* 37 var2517)) ; Statement: $i0 = 37 * $i13 
(define-const var1633 Int (maxRows/-667021461 var1359)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1633 null-Int))) ; Cond: $r3 != null 
(define-const var2057 Int (maxRows/-667021461 var1359)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3543 Int (hashCode/569135069 var2057)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1626 Int (+ var3425 var3543)) ; Statement: i16 = $i0 + $i15 
(define-const var1691 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3746 (Array Int var1473) (positionalParameterValues/-667021461 var1359)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var4 Int (getLength-Arr-var1473-1 var3746)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1691 var4)) ; Cond: i17 >= $i18 
(define-const var480 Int (* 37 var1626)) ; Statement: $i1 = 37 * i16 
(define-const var1242 var2202 (namedParameters/-667021461 var1359)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1242 null-var2202)))) ; Negate: Cond: $r5 != null  
(define-const var622 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1183 Int (+ var480 var622)) ; Statement: $i11 = $i1 + $i20 
(define-const var1202 Int (* 37 var1183)) ; Statement: $i2 = 37 * $i11 
(define-const var232 var3970 (filterKeys/-667021461 var1359)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var232 null-var3970))) ; Cond: $r7 != null 
(define-const var312 var3970 (filterKeys/-667021461 var1359)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2879 Int (var3970_hashCode/539623333 var312)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1647 Int (+ var1202 var2879)) ; Statement: $i10 = $i2 + $i21 
(define-const var3717 Int (* 37 var1647)) ; Statement: $i3 = 37 * $i10 
(define-const var2301 var716 (customTransformer/-667021461 var1359)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2301 null-var716)))) ; Negate: Cond: $r9 != null  
(define-const var3838 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1963 Int (+ var3717 var3838)) ; Statement: $i9 = $i3 + $i22 
(define-const var606 Int (* 37 var1963)) ; Statement: $i4 = 37 * $i9 
(define-const var2920 String (tenantIdentifier/-667021461 var1359)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2920 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3623 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3519 Int (+ var606 var3623)) ; Statement: $i7 = $i4 + $i23 
(define-const var225 Int (* 37 var3519)) ; Statement: $i6 = 37 * $i7 
(define-const var2837 String (sqlQueryString/-667021461 var1359)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3526 Int (hashCode/-467973558 var2837)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var264 Int (+ var225 var3526)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1473-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3970_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1840=org.hibernate.cache.spi.QueryKey, var1359=r0, var3377=$r1, var1565=$r2, var2524=$i14, var2517=$i13, var3425=$i0, var1633=$r3, var2057=$r4, var3543=$i15, var1626=i16, var1691=i17, var1473=java.lang.Object, var3746=$r20, var4=$i18, var480=$i1, var2202=java.util.Map, var1242=$r5, var622=$i20, var1183=$i11, var1202=$i2, var3970=java.util.Set, var232=$r7, var312=$r8, var2879=$i21, var1647=$i10, var3717=$i3, var716=org.hibernate.transform.CacheableResultTransformer, var2301=$r9, var3838=$i22, var1963=$i9, var606=$i4, var2920=$r11, var2513=null_type, var3623=$i23, var3519=$i7, var225=$i6, var2837=$r13, var3526=$i5, var264=$i8}
; {org.hibernate.cache.spi.QueryKey=var1840, r0=var1359, $r1=var3377, $r2=var1565, $i14=var2524, $i13=var2517, $i0=var3425, $r3=var1633, $r4=var2057, $i15=var3543, i16=var1626, i17=var1691, java.lang.Object=var1473, $r20=var3746, $i18=var4, $i1=var480, java.util.Map=var2202, $r5=var1242, $i20=var622, $i11=var1183, $i2=var1202, java.util.Set=var3970, $r7=var232, $r8=var312, $i21=var2879, $i10=var1647, $i3=var3717, org.hibernate.transform.CacheableResultTransformer=var716, $r9=var2301, $i22=var3838, $i9=var1963, $i4=var606, $r11=var2920, null_type=var2513, $i23=var3623, $i7=var3519, $i6=var225, $r13=var2837, $i5=var3526, $i8=var264}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15