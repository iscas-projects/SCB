(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3095 0)
(declare-sort var3443 0)
(declare-sort var3457 0)
(declare-sort var387 0)
(declare-sort var157 0)
(declare-sort var1237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3095) Int)
(declare-fun maxRows/-667021461 (var3095) Int)
(declare-fun positionalParameterValues/-667021461 (var3095) (Array Int var3443))
(declare-fun getLength-Arr-var3443-1 ((Array Int var3443)) Int)
(declare-fun namedParameters/-667021461 (var3095) var3457)
(declare-fun filterKeys/-667021461 (var3095) var387)
(declare-fun var387_hashCode/539623333 (var387) Int)
(declare-fun customTransformer/-667021461 (var3095) var157)
(declare-fun hashCode/1497633159 (var157) Int)
(declare-fun tenantIdentifier/-667021461 (var3095) String)
(declare-fun sqlQueryString/-667021461 (var3095) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3095 var3095)
(declare-const null-Int Int)
(declare-const null-var3457 var3457)
(declare-const null-var387 var387)
(declare-const null-var157 var157)
(declare-const null-String String)
(declare-const var1895 var3095) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1895 null-var3095)))
(define-const var806 Int (firstRow/-667021461 var1895)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var806 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1955 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2067 Int (+ 481 var1955)) ; Statement: $i13 = 481 + $i14 
(define-const var2915 Int (* 37 var2067)) ; Statement: $i0 = 37 * $i13 
(define-const var974 Int (maxRows/-667021461 var1895)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var974 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3998 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2731 Int (+ var2915 var3998)) ; Statement: i16 = $i0 + $i15 
(define-const var1561 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1826 (Array Int var3443) (positionalParameterValues/-667021461 var1895)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3275 Int (getLength-Arr-var3443-1 var1826)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1561 var3275)) ; Cond: i17 >= $i18 
(define-const var1248 Int (* 37 var2731)) ; Statement: $i1 = 37 * i16 
(define-const var1103 var3457 (namedParameters/-667021461 var1895)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1103 null-var3457)))) ; Negate: Cond: $r5 != null  
(define-const var3495 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var314 Int (+ var1248 var3495)) ; Statement: $i11 = $i1 + $i20 
(define-const var3092 Int (* 37 var314)) ; Statement: $i2 = 37 * $i11 
(define-const var3927 var387 (filterKeys/-667021461 var1895)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3927 null-var387))) ; Cond: $r7 != null 
(define-const var1781 var387 (filterKeys/-667021461 var1895)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var319 Int (var387_hashCode/539623333 var1781)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2500 Int (+ var3092 var319)) ; Statement: $i10 = $i2 + $i21 
(define-const var10 Int (* 37 var2500)) ; Statement: $i3 = 37 * $i10 
(define-const var901 var157 (customTransformer/-667021461 var1895)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var901 null-var157))) ; Cond: $r9 != null 
(define-const var3668 var157 (customTransformer/-667021461 var1895)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var131 Int (hashCode/1497633159 var3668)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2195 Int (+ var10 var131)) ; Statement: $i9 = $i3 + $i22 
(define-const var720 Int (* 37 var2195)) ; Statement: $i4 = 37 * $i9 
(define-const var3845 String (tenantIdentifier/-667021461 var1895)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3845 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2657 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var389 Int (+ var720 var2657)) ; Statement: $i7 = $i4 + $i23 
(define-const var3250 Int (* 37 var389)) ; Statement: $i6 = 37 * $i7 
(define-const var3030 String (sqlQueryString/-667021461 var1895)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var2126 Int (hashCode/-467973558 var3030)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var952 Int (+ var3250 var2126)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3443-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var387_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3095=org.hibernate.cache.spi.QueryKey, var1895=r0, var806=$r1, var1955=$i14, var2067=$i13, var2915=$i0, var974=$r3, var3998=$i15, var2731=i16, var1561=i17, var3443=java.lang.Object, var1826=$r20, var3275=$i18, var1248=$i1, var3457=java.util.Map, var1103=$r5, var3495=$i20, var314=$i11, var3092=$i2, var387=java.util.Set, var3927=$r7, var1781=$r8, var319=$i21, var2500=$i10, var10=$i3, var157=org.hibernate.transform.CacheableResultTransformer, var901=$r9, var3668=$r10, var131=$i22, var2195=$i9, var720=$i4, var3845=$r11, var1237=null_type, var2657=$i23, var389=$i7, var3250=$i6, var3030=$r13, var2126=$i5, var952=$i8}
; {org.hibernate.cache.spi.QueryKey=var3095, r0=var1895, $r1=var806, $i14=var1955, $i13=var2067, $i0=var2915, $r3=var974, $i15=var3998, i16=var2731, i17=var1561, java.lang.Object=var3443, $r20=var1826, $i18=var3275, $i1=var1248, java.util.Map=var3457, $r5=var1103, $i20=var3495, $i11=var314, $i2=var3092, java.util.Set=var387, $r7=var3927, $r8=var1781, $i21=var319, $i10=var2500, $i3=var10, org.hibernate.transform.CacheableResultTransformer=var157, $r9=var901, $r10=var3668, $i22=var131, $i9=var2195, $i4=var720, $r11=var3845, null_type=var1237, $i23=var2657, $i7=var389, $i6=var3250, $r13=var3030, $i5=var2126, $i8=var952}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15