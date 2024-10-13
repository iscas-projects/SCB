(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var34 0)
(declare-sort var1410 0)
(declare-sort var1083 0)
(declare-sort var1745 0)
(declare-sort var2646 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var34) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var34) Int)
(declare-fun positionalParameterValues/-667021461 (var34) (Array Int var1410))
(declare-fun getLength-Arr-var1410-1 ((Array Int var1410)) Int)
(declare-fun namedParameters/-667021461 (var34) var1083)
(declare-fun var1083_hashCode/1768810987 (var1083) Int)
(declare-fun filterKeys/-667021461 (var34) var1745)
(declare-fun var1745_hashCode/539623333 (var1745) Int)
(declare-fun customTransformer/-667021461 (var34) var2646)
(declare-fun tenantIdentifier/-667021461 (var34) String)
(declare-fun sqlQueryString/-667021461 (var34) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var34 var34)
(declare-const null-Int Int)
(declare-const null-var1083 var1083)
(declare-const null-var1745 var1745)
(declare-const null-var2646 var2646)
(declare-const null-String String)
(declare-const var1382 var34) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1382 null-var34)))
(define-const var3737 Int (firstRow/-667021461 var1382)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3737 null-Int))) ; Cond: $r1 != null 
(define-const var3431 Int (firstRow/-667021461 var1382)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var431 Int (hashCode/569135069 var3431)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2674 Int (+ 481 var431)) ; Statement: $i13 = 481 + $i14 
(define-const var3382 Int (* 37 var2674)) ; Statement: $i0 = 37 * $i13 
(define-const var3770 Int (maxRows/-667021461 var1382)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3770 null-Int))) ; Cond: $r3 != null 
(define-const var3823 Int (maxRows/-667021461 var1382)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var2670 Int (hashCode/569135069 var3823)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1042 Int (+ var3382 var2670)) ; Statement: i16 = $i0 + $i15 
(define-const var2413 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2364 (Array Int var1410) (positionalParameterValues/-667021461 var1382)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2122 Int (getLength-Arr-var1410-1 var2364)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2413 var2122)) ; Cond: i17 >= $i18 
(define-const var3920 Int (* 37 var1042)) ; Statement: $i1 = 37 * i16 
(define-const var117 var1083 (namedParameters/-667021461 var1382)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var117 null-var1083))) ; Cond: $r5 != null 
(define-const var518 var1083 (namedParameters/-667021461 var1382)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var2648 Int (var1083_hashCode/1768810987 var518)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3475 Int (+ var3920 var2648)) ; Statement: $i11 = $i1 + $i20 
(define-const var2172 Int (* 37 var3475)) ; Statement: $i2 = 37 * $i11 
(define-const var1891 var1745 (filterKeys/-667021461 var1382)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1891 null-var1745))) ; Cond: $r7 != null 
(define-const var3252 var1745 (filterKeys/-667021461 var1382)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2345 Int (var1745_hashCode/539623333 var3252)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2098 Int (+ var2172 var2345)) ; Statement: $i10 = $i2 + $i21 
(define-const var2723 Int (* 37 var2098)) ; Statement: $i3 = 37 * $i10 
(define-const var1069 var2646 (customTransformer/-667021461 var1382)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1069 null-var2646)))) ; Negate: Cond: $r9 != null  
(define-const var2250 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1184 Int (+ var2723 var2250)) ; Statement: $i9 = $i3 + $i22 
(define-const var791 Int (* 37 var1184)) ; Statement: $i4 = 37 * $i9 
(define-const var2393 String (tenantIdentifier/-667021461 var1382)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2393 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var64 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var780 Int (+ var791 var64)) ; Statement: $i7 = $i4 + $i23 
(define-const var1777 Int (* 37 var780)) ; Statement: $i6 = 37 * $i7 
(define-const var171 String (sqlQueryString/-667021461 var1382)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3062 Int (hashCode/-467973558 var171)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2712 Int (+ var1777 var3062)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1410-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var1083_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1745_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var34=org.hibernate.cache.spi.QueryKey, var1382=r0, var3737=$r1, var3431=$r2, var431=$i14, var2674=$i13, var3382=$i0, var3770=$r3, var3823=$r4, var2670=$i15, var1042=i16, var2413=i17, var1410=java.lang.Object, var2364=$r20, var2122=$i18, var3920=$i1, var1083=java.util.Map, var117=$r5, var518=$r6, var2648=$i20, var3475=$i11, var2172=$i2, var1745=java.util.Set, var1891=$r7, var3252=$r8, var2345=$i21, var2098=$i10, var2723=$i3, var2646=org.hibernate.transform.CacheableResultTransformer, var1069=$r9, var2250=$i22, var1184=$i9, var791=$i4, var2393=$r11, var3519=null_type, var64=$i23, var780=$i7, var1777=$i6, var171=$r13, var3062=$i5, var2712=$i8}
; {org.hibernate.cache.spi.QueryKey=var34, r0=var1382, $r1=var3737, $r2=var3431, $i14=var431, $i13=var2674, $i0=var3382, $r3=var3770, $r4=var3823, $i15=var2670, i16=var1042, i17=var2413, java.lang.Object=var1410, $r20=var2364, $i18=var2122, $i1=var3920, java.util.Map=var1083, $r5=var117, $r6=var518, $i20=var2648, $i11=var3475, $i2=var2172, java.util.Set=var1745, $r7=var1891, $r8=var3252, $i21=var2345, $i10=var2098, $i3=var2723, org.hibernate.transform.CacheableResultTransformer=var2646, $r9=var1069, $i22=var2250, $i9=var1184, $i4=var791, $r11=var2393, null_type=var3519, $i23=var64, $i7=var780, $i6=var1777, $r13=var171, $i5=var3062, $i8=var2712}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15