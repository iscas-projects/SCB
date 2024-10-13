(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var3000 0)
(declare-sort var933 0)
(declare-sort var1247 0)
(declare-sort var3599 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3187) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var3187) Int)
(declare-fun positionalParameterValues/-667021461 (var3187) (Array Int var3000))
(declare-fun getLength-Arr-var3000-1 ((Array Int var3000)) Int)
(declare-fun namedParameters/-667021461 (var3187) var933)
(declare-fun var933_hashCode/1768810987 (var933) Int)
(declare-fun filterKeys/-667021461 (var3187) var1247)
(declare-fun customTransformer/-667021461 (var3187) var3599)
(declare-fun hashCode/1497633159 (var3599) Int)
(declare-fun tenantIdentifier/-667021461 (var3187) String)
(declare-fun sqlQueryString/-667021461 (var3187) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3187 var3187)
(declare-const null-Int Int)
(declare-const null-var933 var933)
(declare-const null-var1247 var1247)
(declare-const null-var3599 var3599)
(declare-const null-String String)
(declare-const var1936 var3187) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1936 null-var3187)))
(define-const var3662 Int (firstRow/-667021461 var1936)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3662 null-Int))) ; Cond: $r1 != null 
(define-const var444 Int (firstRow/-667021461 var1936)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var166 Int (hashCode/569135069 var444)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3582 Int (+ 481 var166)) ; Statement: $i13 = 481 + $i14 
(define-const var1092 Int (* 37 var3582)) ; Statement: $i0 = 37 * $i13 
(define-const var1567 Int (maxRows/-667021461 var1936)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1567 null-Int))) ; Cond: $r3 != null 
(define-const var314 Int (maxRows/-667021461 var1936)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3441 Int (hashCode/569135069 var314)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3145 Int (+ var1092 var3441)) ; Statement: i16 = $i0 + $i15 
(define-const var181 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2775 (Array Int var3000) (positionalParameterValues/-667021461 var1936)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1246 Int (getLength-Arr-var3000-1 var2775)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var181 var1246)) ; Cond: i17 >= $i18 
(define-const var3581 Int (* 37 var3145)) ; Statement: $i1 = 37 * i16 
(define-const var2645 var933 (namedParameters/-667021461 var1936)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var2645 null-var933))) ; Cond: $r5 != null 
(define-const var2693 var933 (namedParameters/-667021461 var1936)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var611 Int (var933_hashCode/1768810987 var2693)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3214 Int (+ var3581 var611)) ; Statement: $i11 = $i1 + $i20 
(define-const var2751 Int (* 37 var3214)) ; Statement: $i2 = 37 * $i11 
(define-const var1998 var1247 (filterKeys/-667021461 var1936)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1998 null-var1247)))) ; Negate: Cond: $r7 != null  
(define-const var2331 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var81 Int (+ var2751 var2331)) ; Statement: $i10 = $i2 + $i21 
(define-const var3292 Int (* 37 var81)) ; Statement: $i3 = 37 * $i10 
(define-const var2543 var3599 (customTransformer/-667021461 var1936)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2543 null-var3599))) ; Cond: $r9 != null 
(define-const var2689 var3599 (customTransformer/-667021461 var1936)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var305 Int (hashCode/1497633159 var2689)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3600 Int (+ var3292 var305)) ; Statement: $i9 = $i3 + $i22 
(define-const var1720 Int (* 37 var3600)) ; Statement: $i4 = 37 * $i9 
(define-const var642 String (tenantIdentifier/-667021461 var1936)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var642 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var2548 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3409 Int (+ var1720 var2548)) ; Statement: $i7 = $i4 + $i23 
(define-const var2121 Int (* 37 var3409)) ; Statement: $i6 = 37 * $i7 
(define-const var85 String (sqlQueryString/-667021461 var1936)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1999 Int (hashCode/-467973558 var85)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3590 Int (+ var2121 var1999)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3000-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var933_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3187=org.hibernate.cache.spi.QueryKey, var1936=r0, var3662=$r1, var444=$r2, var166=$i14, var3582=$i13, var1092=$i0, var1567=$r3, var314=$r4, var3441=$i15, var3145=i16, var181=i17, var3000=java.lang.Object, var2775=$r20, var1246=$i18, var3581=$i1, var933=java.util.Map, var2645=$r5, var2693=$r6, var611=$i20, var3214=$i11, var2751=$i2, var1247=java.util.Set, var1998=$r7, var2331=$i21, var81=$i10, var3292=$i3, var3599=org.hibernate.transform.CacheableResultTransformer, var2543=$r9, var2689=$r10, var305=$i22, var3600=$i9, var1720=$i4, var642=$r11, var1536=null_type, var2548=$i23, var3409=$i7, var2121=$i6, var85=$r13, var1999=$i5, var3590=$i8}
; {org.hibernate.cache.spi.QueryKey=var3187, r0=var1936, $r1=var3662, $r2=var444, $i14=var166, $i13=var3582, $i0=var1092, $r3=var1567, $r4=var314, $i15=var3441, i16=var3145, i17=var181, java.lang.Object=var3000, $r20=var2775, $i18=var1246, $i1=var3581, java.util.Map=var933, $r5=var2645, $r6=var2693, $i20=var611, $i11=var3214, $i2=var2751, java.util.Set=var1247, $r7=var1998, $i21=var2331, $i10=var81, $i3=var3292, org.hibernate.transform.CacheableResultTransformer=var3599, $r9=var2543, $r10=var2689, $i22=var305, $i9=var3600, $i4=var1720, $r11=var642, null_type=var1536, $i23=var2548, $i7=var3409, $i6=var2121, $r13=var85, $i5=var1999, $i8=var3590}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15