(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1691 0)
(declare-sort var1707 0)
(declare-sort var3802 0)
(declare-sort var1197 0)
(declare-sort var2353 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1691) Int)
(declare-fun maxRows/-667021461 (var1691) Int)
(declare-fun positionalParameterValues/-667021461 (var1691) (Array Int var1707))
(declare-fun getLength-Arr-var1707-1 ((Array Int var1707)) Int)
(declare-fun namedParameters/-667021461 (var1691) var3802)
(declare-fun var3802_hashCode/1768810987 (var3802) Int)
(declare-fun filterKeys/-667021461 (var1691) var1197)
(declare-fun var1197_hashCode/539623333 (var1197) Int)
(declare-fun customTransformer/-667021461 (var1691) var2353)
(declare-fun tenantIdentifier/-667021461 (var1691) String)
(declare-fun sqlQueryString/-667021461 (var1691) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1691 var1691)
(declare-const null-Int Int)
(declare-const null-var3802 var3802)
(declare-const null-var1197 var1197)
(declare-const null-var2353 var2353)
(declare-const null-String String)
(declare-const var1173 var1691) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1173 null-var1691)))
(define-const var2106 Int (firstRow/-667021461 var1173)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2106 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var5 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var1113 Int (+ 481 var5)) ; Statement: $i13 = 481 + $i14 
(define-const var680 Int (* 37 var1113)) ; Statement: $i0 = 37 * $i13 
(define-const var1020 Int (maxRows/-667021461 var1173)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1020 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2326 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1842 Int (+ var680 var2326)) ; Statement: i16 = $i0 + $i15 
(define-const var3564 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var351 (Array Int var1707) (positionalParameterValues/-667021461 var1173)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1319 Int (getLength-Arr-var1707-1 var351)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3564 var1319)) ; Cond: i17 >= $i18 
(define-const var2119 Int (* 37 var1842)) ; Statement: $i1 = 37 * i16 
(define-const var3005 var3802 (namedParameters/-667021461 var1173)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3005 null-var3802))) ; Cond: $r5 != null 
(define-const var388 var3802 (namedParameters/-667021461 var1173)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1866 Int (var3802_hashCode/1768810987 var388)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var173 Int (+ var2119 var1866)) ; Statement: $i11 = $i1 + $i20 
(define-const var75 Int (* 37 var173)) ; Statement: $i2 = 37 * $i11 
(define-const var3217 var1197 (filterKeys/-667021461 var1173)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3217 null-var1197))) ; Cond: $r7 != null 
(define-const var999 var1197 (filterKeys/-667021461 var1173)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1845 Int (var1197_hashCode/539623333 var999)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3189 Int (+ var75 var1845)) ; Statement: $i10 = $i2 + $i21 
(define-const var951 Int (* 37 var3189)) ; Statement: $i3 = 37 * $i10 
(define-const var1972 var2353 (customTransformer/-667021461 var1173)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1972 null-var2353)))) ; Negate: Cond: $r9 != null  
(define-const var3436 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2642 Int (+ var951 var3436)) ; Statement: $i9 = $i3 + $i22 
(define-const var2616 Int (* 37 var2642)) ; Statement: $i4 = 37 * $i9 
(define-const var3192 String (tenantIdentifier/-667021461 var1173)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3192 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2053 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3056 Int (+ var2616 var2053)) ; Statement: $i7 = $i4 + $i23 
(define-const var791 Int (* 37 var3056)) ; Statement: $i6 = 37 * $i7 
(define-const var970 String (sqlQueryString/-667021461 var1173)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var453 Int (hashCode/-467973558 var970)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1011 Int (+ var791 var453)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1707-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var3802_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1197_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1691=org.hibernate.cache.spi.QueryKey, var1173=r0, var2106=$r1, var5=$i14, var1113=$i13, var680=$i0, var1020=$r3, var2326=$i15, var1842=i16, var3564=i17, var1707=java.lang.Object, var351=$r20, var1319=$i18, var2119=$i1, var3802=java.util.Map, var3005=$r5, var388=$r6, var1866=$i20, var173=$i11, var75=$i2, var1197=java.util.Set, var3217=$r7, var999=$r8, var1845=$i21, var3189=$i10, var951=$i3, var2353=org.hibernate.transform.CacheableResultTransformer, var1972=$r9, var3436=$i22, var2642=$i9, var2616=$i4, var3192=$r11, var2483=null_type, var2053=$i23, var3056=$i7, var791=$i6, var970=$r13, var453=$i5, var1011=$i8}
; {org.hibernate.cache.spi.QueryKey=var1691, r0=var1173, $r1=var2106, $i14=var5, $i13=var1113, $i0=var680, $r3=var1020, $i15=var2326, i16=var1842, i17=var3564, java.lang.Object=var1707, $r20=var351, $i18=var1319, $i1=var2119, java.util.Map=var3802, $r5=var3005, $r6=var388, $i20=var1866, $i11=var173, $i2=var75, java.util.Set=var1197, $r7=var3217, $r8=var999, $i21=var1845, $i10=var3189, $i3=var951, org.hibernate.transform.CacheableResultTransformer=var2353, $r9=var1972, $i22=var3436, $i9=var2642, $i4=var2616, $r11=var3192, null_type=var2483, $i23=var2053, $i7=var3056, $i6=var791, $r13=var970, $i5=var453, $i8=var1011}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15