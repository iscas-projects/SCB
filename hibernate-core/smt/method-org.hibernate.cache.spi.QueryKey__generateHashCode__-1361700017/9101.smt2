(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var2815 0)
(declare-sort var3149 0)
(declare-sort var3822 0)
(declare-sort var3477 0)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1984) Int)
(declare-fun maxRows/-667021461 (var1984) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1984) (Array Int var2815))
(declare-fun getLength-Arr-var2815-1 ((Array Int var2815)) Int)
(declare-fun namedParameters/-667021461 (var1984) var3149)
(declare-fun filterKeys/-667021461 (var1984) var3822)
(declare-fun var3822_hashCode/539623333 (var3822) Int)
(declare-fun customTransformer/-667021461 (var1984) var3477)
(declare-fun tenantIdentifier/-667021461 (var1984) String)
(declare-fun sqlQueryString/-667021461 (var1984) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1984 var1984)
(declare-const null-Int Int)
(declare-const null-var3149 var3149)
(declare-const null-var3822 var3822)
(declare-const null-var3477 var3477)
(declare-const null-String String)
(declare-const var3933 var1984) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3933 null-var1984)))
(define-const var656 Int (firstRow/-667021461 var3933)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var656 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2367 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var355 Int (+ 481 var2367)) ; Statement: $i13 = 481 + $i14 
(define-const var1257 Int (* 37 var355)) ; Statement: $i0 = 37 * $i13 
(define-const var3954 Int (maxRows/-667021461 var3933)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3954 null-Int))) ; Cond: $r3 != null 
(define-const var2509 Int (maxRows/-667021461 var3933)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3832 Int (hashCode/569135069 var2509)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var651 Int (+ var1257 var3832)) ; Statement: i16 = $i0 + $i15 
(define-const var2914 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2753 (Array Int var2815) (positionalParameterValues/-667021461 var3933)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var486 Int (getLength-Arr-var2815-1 var2753)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2914 var486)) ; Cond: i17 >= $i18 
(define-const var2183 Int (* 37 var651)) ; Statement: $i1 = 37 * i16 
(define-const var3589 var3149 (namedParameters/-667021461 var3933)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3589 null-var3149)))) ; Negate: Cond: $r5 != null  
(define-const var2615 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2141 Int (+ var2183 var2615)) ; Statement: $i11 = $i1 + $i20 
(define-const var310 Int (* 37 var2141)) ; Statement: $i2 = 37 * $i11 
(define-const var3227 var3822 (filterKeys/-667021461 var3933)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3227 null-var3822))) ; Cond: $r7 != null 
(define-const var2629 var3822 (filterKeys/-667021461 var3933)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2964 Int (var3822_hashCode/539623333 var2629)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2487 Int (+ var310 var2964)) ; Statement: $i10 = $i2 + $i21 
(define-const var3992 Int (* 37 var2487)) ; Statement: $i3 = 37 * $i10 
(define-const var812 var3477 (customTransformer/-667021461 var3933)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var812 null-var3477)))) ; Negate: Cond: $r9 != null  
(define-const var1473 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1106 Int (+ var3992 var1473)) ; Statement: $i9 = $i3 + $i22 
(define-const var647 Int (* 37 var1106)) ; Statement: $i4 = 37 * $i9 
(define-const var2052 String (tenantIdentifier/-667021461 var3933)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var2052 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var770 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var395 Int (+ var647 var770)) ; Statement: $i7 = $i4 + $i23 
(define-const var461 Int (* 37 var395)) ; Statement: $i6 = 37 * $i7 
(define-const var3622 String (sqlQueryString/-667021461 var3933)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3699 Int (hashCode/-467973558 var3622)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3902 Int (+ var461 var3699)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2815-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3822_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1984=org.hibernate.cache.spi.QueryKey, var3933=r0, var656=$r1, var2367=$i14, var355=$i13, var1257=$i0, var3954=$r3, var2509=$r4, var3832=$i15, var651=i16, var2914=i17, var2815=java.lang.Object, var2753=$r20, var486=$i18, var2183=$i1, var3149=java.util.Map, var3589=$r5, var2615=$i20, var2141=$i11, var310=$i2, var3822=java.util.Set, var3227=$r7, var2629=$r8, var2964=$i21, var2487=$i10, var3992=$i3, var3477=org.hibernate.transform.CacheableResultTransformer, var812=$r9, var1473=$i22, var1106=$i9, var647=$i4, var2052=$r11, var2924=null_type, var770=$i23, var395=$i7, var461=$i6, var3622=$r13, var3699=$i5, var3902=$i8}
; {org.hibernate.cache.spi.QueryKey=var1984, r0=var3933, $r1=var656, $i14=var2367, $i13=var355, $i0=var1257, $r3=var3954, $r4=var2509, $i15=var3832, i16=var651, i17=var2914, java.lang.Object=var2815, $r20=var2753, $i18=var486, $i1=var2183, java.util.Map=var3149, $r5=var3589, $i20=var2615, $i11=var2141, $i2=var310, java.util.Set=var3822, $r7=var3227, $r8=var2629, $i21=var2964, $i10=var2487, $i3=var3992, org.hibernate.transform.CacheableResultTransformer=var3477, $r9=var812, $i22=var1473, $i9=var1106, $i4=var647, $r11=var2052, null_type=var2924, $i23=var770, $i7=var395, $i6=var461, $r13=var3622, $i5=var3699, $i8=var3902}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15