(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3595 0)
(declare-sort var2543 0)
(declare-sort var2250 0)
(declare-sort var1481 0)
(declare-sort var3254 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3595) Int)
(declare-fun maxRows/-667021461 (var3595) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var3595) (Array Int var2543))
(declare-fun getLength-Arr-var2543-1 ((Array Int var2543)) Int)
(declare-fun namedParameters/-667021461 (var3595) var2250)
(declare-fun filterKeys/-667021461 (var3595) var1481)
(declare-fun var1481_hashCode/539623333 (var1481) Int)
(declare-fun customTransformer/-667021461 (var3595) var3254)
(declare-fun tenantIdentifier/-667021461 (var3595) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3595) String)
(declare-const null-var3595 var3595)
(declare-const null-Int Int)
(declare-const null-var2250 var2250)
(declare-const null-var1481 var1481)
(declare-const null-var3254 var3254)
(declare-const null-String String)
(declare-const var125 var3595) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var125 null-var3595)))
(define-const var3968 Int (firstRow/-667021461 var125)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3968 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1370 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3292 Int (+ 481 var1370)) ; Statement: $i13 = 481 + $i14 
(define-const var1775 Int (* 37 var3292)) ; Statement: $i0 = 37 * $i13 
(define-const var2431 Int (maxRows/-667021461 var125)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2431 null-Int))) ; Cond: $r3 != null 
(define-const var2016 Int (maxRows/-667021461 var125)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3558 Int (hashCode/569135069 var2016)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var885 Int (+ var1775 var3558)) ; Statement: i16 = $i0 + $i15 
(define-const var3777 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3827 (Array Int var2543) (positionalParameterValues/-667021461 var125)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var565 Int (getLength-Arr-var2543-1 var3827)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3777 var565)) ; Cond: i17 >= $i18 
(define-const var2557 Int (* 37 var885)) ; Statement: $i1 = 37 * i16 
(define-const var1447 var2250 (namedParameters/-667021461 var125)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1447 null-var2250)))) ; Negate: Cond: $r5 != null  
(define-const var1565 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1297 Int (+ var2557 var1565)) ; Statement: $i11 = $i1 + $i20 
(define-const var1873 Int (* 37 var1297)) ; Statement: $i2 = 37 * $i11 
(define-const var1919 var1481 (filterKeys/-667021461 var125)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1919 null-var1481))) ; Cond: $r7 != null 
(define-const var3039 var1481 (filterKeys/-667021461 var125)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3098 Int (var1481_hashCode/539623333 var3039)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var715 Int (+ var1873 var3098)) ; Statement: $i10 = $i2 + $i21 
(define-const var2736 Int (* 37 var715)) ; Statement: $i3 = 37 * $i10 
(define-const var3983 var3254 (customTransformer/-667021461 var125)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3983 null-var3254)))) ; Negate: Cond: $r9 != null  
(define-const var2809 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var457 Int (+ var2736 var2809)) ; Statement: $i9 = $i3 + $i22 
(define-const var1191 Int (* 37 var457)) ; Statement: $i4 = 37 * $i9 
(define-const var2952 String (tenantIdentifier/-667021461 var125)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2952 null-String))) ; Cond: $r11 != null 
(define-const var965 String (tenantIdentifier/-667021461 var125)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var727 Int (hashCode/-467973558 var965)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2819 Int (+ var1191 var727)) ; Statement: $i7 = $i4 + $i23 
(define-const var3107 Int (* 37 var2819)) ; Statement: $i6 = 37 * $i7 
(define-const var3653 String (sqlQueryString/-667021461 var125)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3766 Int (hashCode/-467973558 var3653)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3850 Int (+ var3107 var3766)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2543-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1481_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3595=org.hibernate.cache.spi.QueryKey, var125=r0, var3968=$r1, var1370=$i14, var3292=$i13, var1775=$i0, var2431=$r3, var2016=$r4, var3558=$i15, var885=i16, var3777=i17, var2543=java.lang.Object, var3827=$r20, var565=$i18, var2557=$i1, var2250=java.util.Map, var1447=$r5, var1565=$i20, var1297=$i11, var1873=$i2, var1481=java.util.Set, var1919=$r7, var3039=$r8, var3098=$i21, var715=$i10, var2736=$i3, var3254=org.hibernate.transform.CacheableResultTransformer, var3983=$r9, var2809=$i22, var457=$i9, var1191=$i4, var2952=$r11, var3144=null_type, var965=$r12, var727=$i23, var2819=$i7, var3107=$i6, var3653=$r13, var3766=$i5, var3850=$i8}
; {org.hibernate.cache.spi.QueryKey=var3595, r0=var125, $r1=var3968, $i14=var1370, $i13=var3292, $i0=var1775, $r3=var2431, $r4=var2016, $i15=var3558, i16=var885, i17=var3777, java.lang.Object=var2543, $r20=var3827, $i18=var565, $i1=var2557, java.util.Map=var2250, $r5=var1447, $i20=var1565, $i11=var1297, $i2=var1873, java.util.Set=var1481, $r7=var1919, $r8=var3039, $i21=var3098, $i10=var715, $i3=var2736, org.hibernate.transform.CacheableResultTransformer=var3254, $r9=var3983, $i22=var2809, $i9=var457, $i4=var1191, $r11=var2952, null_type=var3144, $r12=var965, $i23=var727, $i7=var2819, $i6=var3107, $r13=var3653, $i5=var3766, $i8=var3850}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15