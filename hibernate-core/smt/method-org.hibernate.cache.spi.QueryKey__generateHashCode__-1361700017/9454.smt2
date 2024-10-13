(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var94 0)
(declare-sort var2508 0)
(declare-sort var3611 0)
(declare-sort var1535 0)
(declare-sort var2825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var334) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var334) Int)
(declare-fun positionalParameterValues/-667021461 (var334) (Array Int var94))
(declare-fun getLength-Arr-var94-1 ((Array Int var94)) Int)
(declare-fun namedParameters/-667021461 (var334) var2508)
(declare-fun filterKeys/-667021461 (var334) var3611)
(declare-fun customTransformer/-667021461 (var334) var1535)
(declare-fun tenantIdentifier/-667021461 (var334) String)
(declare-fun sqlQueryString/-667021461 (var334) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var334 var334)
(declare-const null-Int Int)
(declare-const null-var2508 var2508)
(declare-const null-var3611 var3611)
(declare-const null-var1535 var1535)
(declare-const null-String String)
(declare-const var2411 var334) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2411 null-var334)))
(define-const var2933 Int (firstRow/-667021461 var2411)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2933 null-Int))) ; Cond: $r1 != null 
(define-const var3395 Int (firstRow/-667021461 var2411)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var3752 Int (hashCode/569135069 var3395)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var12 Int (+ 481 var3752)) ; Statement: $i13 = 481 + $i14 
(define-const var766 Int (* 37 var12)) ; Statement: $i0 = 37 * $i13 
(define-const var3813 Int (maxRows/-667021461 var2411)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3813 null-Int))) ; Cond: $r3 != null 
(define-const var1284 Int (maxRows/-667021461 var2411)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var2917 Int (hashCode/569135069 var1284)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3384 Int (+ var766 var2917)) ; Statement: i16 = $i0 + $i15 
(define-const var878 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3927 (Array Int var94) (positionalParameterValues/-667021461 var2411)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1777 Int (getLength-Arr-var94-1 var3927)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var878 var1777)) ; Cond: i17 >= $i18 
(define-const var3086 Int (* 37 var3384)) ; Statement: $i1 = 37 * i16 
(define-const var732 var2508 (namedParameters/-667021461 var2411)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var732 null-var2508)))) ; Negate: Cond: $r5 != null  
(define-const var2232 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var3943 Int (+ var3086 var2232)) ; Statement: $i11 = $i1 + $i20 
(define-const var172 Int (* 37 var3943)) ; Statement: $i2 = 37 * $i11 
(define-const var930 var3611 (filterKeys/-667021461 var2411)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var930 null-var3611)))) ; Negate: Cond: $r7 != null  
(define-const var2617 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var3955 Int (+ var172 var2617)) ; Statement: $i10 = $i2 + $i21 
(define-const var2521 Int (* 37 var3955)) ; Statement: $i3 = 37 * $i10 
(define-const var165 var1535 (customTransformer/-667021461 var2411)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var165 null-var1535)))) ; Negate: Cond: $r9 != null  
(define-const var2047 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1659 Int (+ var2521 var2047)) ; Statement: $i9 = $i3 + $i22 
(define-const var3145 Int (* 37 var1659)) ; Statement: $i4 = 37 * $i9 
(define-const var3462 String (tenantIdentifier/-667021461 var2411)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3462 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1132 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var3174 Int (+ var3145 var1132)) ; Statement: $i7 = $i4 + $i23 
(define-const var3993 Int (* 37 var3174)) ; Statement: $i6 = 37 * $i7 
(define-const var2334 String (sqlQueryString/-667021461 var2411)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1018 Int (hashCode/-467973558 var2334)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2050 Int (+ var3993 var1018)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var94-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var334=org.hibernate.cache.spi.QueryKey, var2411=r0, var2933=$r1, var3395=$r2, var3752=$i14, var12=$i13, var766=$i0, var3813=$r3, var1284=$r4, var2917=$i15, var3384=i16, var878=i17, var94=java.lang.Object, var3927=$r20, var1777=$i18, var3086=$i1, var2508=java.util.Map, var732=$r5, var2232=$i20, var3943=$i11, var172=$i2, var3611=java.util.Set, var930=$r7, var2617=$i21, var3955=$i10, var2521=$i3, var1535=org.hibernate.transform.CacheableResultTransformer, var165=$r9, var2047=$i22, var1659=$i9, var3145=$i4, var3462=$r11, var2825=null_type, var1132=$i23, var3174=$i7, var3993=$i6, var2334=$r13, var1018=$i5, var2050=$i8}
; {org.hibernate.cache.spi.QueryKey=var334, r0=var2411, $r1=var2933, $r2=var3395, $i14=var3752, $i13=var12, $i0=var766, $r3=var3813, $r4=var1284, $i15=var2917, i16=var3384, i17=var878, java.lang.Object=var94, $r20=var3927, $i18=var1777, $i1=var3086, java.util.Map=var2508, $r5=var732, $i20=var2232, $i11=var3943, $i2=var172, java.util.Set=var3611, $r7=var930, $i21=var2617, $i10=var3955, $i3=var2521, org.hibernate.transform.CacheableResultTransformer=var1535, $r9=var165, $i22=var2047, $i9=var1659, $i4=var3145, $r11=var3462, null_type=var2825, $i23=var1132, $i7=var3174, $i6=var3993, $r13=var2334, $i5=var1018, $i8=var2050}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15