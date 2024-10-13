(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var414 0)
(declare-sort var405 0)
(declare-sort var61 0)
(declare-sort var1880 0)
(declare-sort var3933 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var414) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var414) Int)
(declare-fun positionalParameterValues/-667021461 (var414) (Array Int var405))
(declare-fun getLength-Arr-var405-1 ((Array Int var405)) Int)
(declare-fun namedParameters/-667021461 (var414) var61)
(declare-fun filterKeys/-667021461 (var414) var1880)
(declare-fun var1880_hashCode/539623333 (var1880) Int)
(declare-fun customTransformer/-667021461 (var414) var3933)
(declare-fun tenantIdentifier/-667021461 (var414) String)
(declare-fun sqlQueryString/-667021461 (var414) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var414 var414)
(declare-const null-Int Int)
(declare-const null-var61 var61)
(declare-const null-var1880 var1880)
(declare-const null-var3933 var3933)
(declare-const null-String String)
(declare-const var2839 var414) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2839 null-var414)))
(define-const var748 Int (firstRow/-667021461 var2839)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var748 null-Int))) ; Cond: $r1 != null 
(define-const var2216 Int (firstRow/-667021461 var2839)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var480 Int (hashCode/569135069 var2216)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3195 Int (+ 481 var480)) ; Statement: $i13 = 481 + $i14 
(define-const var472 Int (* 37 var3195)) ; Statement: $i0 = 37 * $i13 
(define-const var2795 Int (maxRows/-667021461 var2839)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var2795 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2780 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var400 Int (+ var472 var2780)) ; Statement: i16 = $i0 + $i15 
(define-const var809 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3628 (Array Int var405) (positionalParameterValues/-667021461 var2839)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2281 Int (getLength-Arr-var405-1 var3628)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var809 var2281)) ; Cond: i17 >= $i18 
(define-const var196 Int (* 37 var400)) ; Statement: $i1 = 37 * i16 
(define-const var432 var61 (namedParameters/-667021461 var2839)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var432 null-var61)))) ; Negate: Cond: $r5 != null  
(define-const var1579 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var406 Int (+ var196 var1579)) ; Statement: $i11 = $i1 + $i20 
(define-const var488 Int (* 37 var406)) ; Statement: $i2 = 37 * $i11 
(define-const var1477 var1880 (filterKeys/-667021461 var2839)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1477 null-var1880))) ; Cond: $r7 != null 
(define-const var1737 var1880 (filterKeys/-667021461 var2839)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var447 Int (var1880_hashCode/539623333 var1737)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1100 Int (+ var488 var447)) ; Statement: $i10 = $i2 + $i21 
(define-const var1025 Int (* 37 var1100)) ; Statement: $i3 = 37 * $i10 
(define-const var133 var3933 (customTransformer/-667021461 var2839)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var133 null-var3933)))) ; Negate: Cond: $r9 != null  
(define-const var512 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var839 Int (+ var1025 var512)) ; Statement: $i9 = $i3 + $i22 
(define-const var2161 Int (* 37 var839)) ; Statement: $i4 = 37 * $i9 
(define-const var3939 String (tenantIdentifier/-667021461 var2839)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3939 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3279 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3322 Int (+ var2161 var3279)) ; Statement: $i7 = $i4 + $i23 
(define-const var1265 Int (* 37 var3322)) ; Statement: $i6 = 37 * $i7 
(define-const var1322 String (sqlQueryString/-667021461 var2839)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3118 Int (hashCode/-467973558 var1322)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var601 Int (+ var1265 var3118)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var405-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1880_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var414=org.hibernate.cache.spi.QueryKey, var2839=r0, var748=$r1, var2216=$r2, var480=$i14, var3195=$i13, var472=$i0, var2795=$r3, var2780=$i15, var400=i16, var809=i17, var405=java.lang.Object, var3628=$r20, var2281=$i18, var196=$i1, var61=java.util.Map, var432=$r5, var1579=$i20, var406=$i11, var488=$i2, var1880=java.util.Set, var1477=$r7, var1737=$r8, var447=$i21, var1100=$i10, var1025=$i3, var3933=org.hibernate.transform.CacheableResultTransformer, var133=$r9, var512=$i22, var839=$i9, var2161=$i4, var3939=$r11, var3008=null_type, var3279=$i23, var3322=$i7, var1265=$i6, var1322=$r13, var3118=$i5, var601=$i8}
; {org.hibernate.cache.spi.QueryKey=var414, r0=var2839, $r1=var748, $r2=var2216, $i14=var480, $i13=var3195, $i0=var472, $r3=var2795, $i15=var2780, i16=var400, i17=var809, java.lang.Object=var405, $r20=var3628, $i18=var2281, $i1=var196, java.util.Map=var61, $r5=var432, $i20=var1579, $i11=var406, $i2=var488, java.util.Set=var1880, $r7=var1477, $r8=var1737, $i21=var447, $i10=var1100, $i3=var1025, org.hibernate.transform.CacheableResultTransformer=var3933, $r9=var133, $i22=var512, $i9=var839, $i4=var2161, $r11=var3939, null_type=var3008, $i23=var3279, $i7=var3322, $i6=var1265, $r13=var1322, $i5=var3118, $i8=var601}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15