(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1756 0)
(declare-sort var1433 0)
(declare-sort var1757 0)
(declare-sort var159 0)
(declare-sort var3574 0)
(declare-sort var809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1756) Int)
(declare-fun maxRows/-667021461 (var1756) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1756) (Array Int var1433))
(declare-fun getLength-Arr-var1433-1 ((Array Int var1433)) Int)
(declare-fun namedParameters/-667021461 (var1756) var1757)
(declare-fun var1757_hashCode/1768810987 (var1757) Int)
(declare-fun filterKeys/-667021461 (var1756) var159)
(declare-fun var159_hashCode/539623333 (var159) Int)
(declare-fun customTransformer/-667021461 (var1756) var3574)
(declare-fun hashCode/1497633159 (var3574) Int)
(declare-fun tenantIdentifier/-667021461 (var1756) String)
(declare-fun sqlQueryString/-667021461 (var1756) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1756 var1756)
(declare-const null-Int Int)
(declare-const null-var1757 var1757)
(declare-const null-var159 var159)
(declare-const null-var3574 var3574)
(declare-const null-String String)
(declare-const var3242 var1756) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3242 null-var1756)))
(define-const var2565 Int (firstRow/-667021461 var3242)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2565 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var679 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var1049 Int (+ 481 var679)) ; Statement: $i13 = 481 + $i14 
(define-const var3994 Int (* 37 var1049)) ; Statement: $i0 = 37 * $i13 
(define-const var1140 Int (maxRows/-667021461 var3242)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1140 null-Int))) ; Cond: $r3 != null 
(define-const var2330 Int (maxRows/-667021461 var3242)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var363 Int (hashCode/569135069 var2330)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var710 Int (+ var3994 var363)) ; Statement: i16 = $i0 + $i15 
(define-const var1133 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3049 (Array Int var1433) (positionalParameterValues/-667021461 var3242)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3212 Int (getLength-Arr-var1433-1 var3049)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1133 var3212)) ; Cond: i17 >= $i18 
(define-const var1863 Int (* 37 var710)) ; Statement: $i1 = 37 * i16 
(define-const var3586 var1757 (namedParameters/-667021461 var3242)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3586 null-var1757))) ; Cond: $r5 != null 
(define-const var584 var1757 (namedParameters/-667021461 var3242)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var265 Int (var1757_hashCode/1768810987 var584)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var455 Int (+ var1863 var265)) ; Statement: $i11 = $i1 + $i20 
(define-const var1213 Int (* 37 var455)) ; Statement: $i2 = 37 * $i11 
(define-const var3151 var159 (filterKeys/-667021461 var3242)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3151 null-var159))) ; Cond: $r7 != null 
(define-const var1763 var159 (filterKeys/-667021461 var3242)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var655 Int (var159_hashCode/539623333 var1763)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3976 Int (+ var1213 var655)) ; Statement: $i10 = $i2 + $i21 
(define-const var3975 Int (* 37 var3976)) ; Statement: $i3 = 37 * $i10 
(define-const var2082 var3574 (customTransformer/-667021461 var3242)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2082 null-var3574))) ; Cond: $r9 != null 
(define-const var3875 var3574 (customTransformer/-667021461 var3242)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var606 Int (hashCode/1497633159 var3875)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var413 Int (+ var3975 var606)) ; Statement: $i9 = $i3 + $i22 
(define-const var2807 Int (* 37 var413)) ; Statement: $i4 = 37 * $i9 
(define-const var1179 String (tenantIdentifier/-667021461 var3242)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1179 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1852 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1778 Int (+ var2807 var1852)) ; Statement: $i7 = $i4 + $i23 
(define-const var79 Int (* 37 var1778)) ; Statement: $i6 = 37 * $i7 
(define-const var3298 String (sqlQueryString/-667021461 var3242)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2691 Int (hashCode/-467973558 var3298)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3277 Int (+ var79 var2691)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1433-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var1757_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var159_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1756=org.hibernate.cache.spi.QueryKey, var3242=r0, var2565=$r1, var679=$i14, var1049=$i13, var3994=$i0, var1140=$r3, var2330=$r4, var363=$i15, var710=i16, var1133=i17, var1433=java.lang.Object, var3049=$r20, var3212=$i18, var1863=$i1, var1757=java.util.Map, var3586=$r5, var584=$r6, var265=$i20, var455=$i11, var1213=$i2, var159=java.util.Set, var3151=$r7, var1763=$r8, var655=$i21, var3976=$i10, var3975=$i3, var3574=org.hibernate.transform.CacheableResultTransformer, var2082=$r9, var3875=$r10, var606=$i22, var413=$i9, var2807=$i4, var1179=$r11, var809=null_type, var1852=$i23, var1778=$i7, var79=$i6, var3298=$r13, var2691=$i5, var3277=$i8}
; {org.hibernate.cache.spi.QueryKey=var1756, r0=var3242, $r1=var2565, $i14=var679, $i13=var1049, $i0=var3994, $r3=var1140, $r4=var2330, $i15=var363, i16=var710, i17=var1133, java.lang.Object=var1433, $r20=var3049, $i18=var3212, $i1=var1863, java.util.Map=var1757, $r5=var3586, $r6=var584, $i20=var265, $i11=var455, $i2=var1213, java.util.Set=var159, $r7=var3151, $r8=var1763, $i21=var655, $i10=var3976, $i3=var3975, org.hibernate.transform.CacheableResultTransformer=var3574, $r9=var2082, $r10=var3875, $i22=var606, $i9=var413, $i4=var2807, $r11=var1179, null_type=var809, $i23=var1852, $i7=var1778, $i6=var79, $r13=var3298, $i5=var2691, $i8=var3277}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15