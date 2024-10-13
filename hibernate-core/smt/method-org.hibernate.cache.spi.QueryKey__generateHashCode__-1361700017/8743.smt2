(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var28 0)
(declare-sort var711 0)
(declare-sort var3300 0)
(declare-sort var2005 0)
(declare-sort var2446 0)
(declare-sort var3033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var28) Int)
(declare-fun maxRows/-667021461 (var28) Int)
(declare-fun positionalParameterValues/-667021461 (var28) (Array Int var711))
(declare-fun getLength-Arr-var711-1 ((Array Int var711)) Int)
(declare-fun namedParameters/-667021461 (var28) var3300)
(declare-fun filterKeys/-667021461 (var28) var2005)
(declare-fun customTransformer/-667021461 (var28) var2446)
(declare-fun tenantIdentifier/-667021461 (var28) String)
(declare-fun sqlQueryString/-667021461 (var28) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var28 var28)
(declare-const null-Int Int)
(declare-const null-var3300 var3300)
(declare-const null-var2005 var2005)
(declare-const null-var2446 var2446)
(declare-const null-String String)
(declare-const var2260 var28) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2260 null-var28)))
(define-const var2427 Int (firstRow/-667021461 var2260)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2427 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2954 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var214 Int (+ 481 var2954)) ; Statement: $i13 = 481 + $i14 
(define-const var3000 Int (* 37 var214)) ; Statement: $i0 = 37 * $i13 
(define-const var60 Int (maxRows/-667021461 var2260)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var60 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var2384 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var3929 Int (+ var3000 var2384)) ; Statement: i16 = $i0 + $i15 
(define-const var3284 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var273 (Array Int var711) (positionalParameterValues/-667021461 var2260)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2006 Int (getLength-Arr-var711-1 var273)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3284 var2006)) ; Cond: i17 >= $i18 
(define-const var266 Int (* 37 var3929)) ; Statement: $i1 = 37 * i16 
(define-const var1634 var3300 (namedParameters/-667021461 var2260)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1634 null-var3300)))) ; Negate: Cond: $r5 != null  
(define-const var3270 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2371 Int (+ var266 var3270)) ; Statement: $i11 = $i1 + $i20 
(define-const var1465 Int (* 37 var2371)) ; Statement: $i2 = 37 * $i11 
(define-const var3014 var2005 (filterKeys/-667021461 var2260)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3014 null-var2005)))) ; Negate: Cond: $r7 != null  
(define-const var2890 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1186 Int (+ var1465 var2890)) ; Statement: $i10 = $i2 + $i21 
(define-const var1845 Int (* 37 var1186)) ; Statement: $i3 = 37 * $i10 
(define-const var2703 var2446 (customTransformer/-667021461 var2260)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var2703 null-var2446)))) ; Negate: Cond: $r9 != null  
(define-const var199 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var571 Int (+ var1845 var199)) ; Statement: $i9 = $i3 + $i22 
(define-const var3733 Int (* 37 var571)) ; Statement: $i4 = 37 * $i9 
(define-const var1475 String (tenantIdentifier/-667021461 var2260)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1475 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1119 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var2444 Int (+ var3733 var1119)) ; Statement: $i7 = $i4 + $i23 
(define-const var3774 Int (* 37 var2444)) ; Statement: $i6 = 37 * $i7 
(define-const var755 String (sqlQueryString/-667021461 var2260)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3563 Int (hashCode/-467973558 var755)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1537 Int (+ var3774 var3563)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var711-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var28=org.hibernate.cache.spi.QueryKey, var2260=r0, var2427=$r1, var2954=$i14, var214=$i13, var3000=$i0, var60=$r3, var2384=$i15, var3929=i16, var3284=i17, var711=java.lang.Object, var273=$r20, var2006=$i18, var266=$i1, var3300=java.util.Map, var1634=$r5, var3270=$i20, var2371=$i11, var1465=$i2, var2005=java.util.Set, var3014=$r7, var2890=$i21, var1186=$i10, var1845=$i3, var2446=org.hibernate.transform.CacheableResultTransformer, var2703=$r9, var199=$i22, var571=$i9, var3733=$i4, var1475=$r11, var3033=null_type, var1119=$i23, var2444=$i7, var3774=$i6, var755=$r13, var3563=$i5, var1537=$i8}
; {org.hibernate.cache.spi.QueryKey=var28, r0=var2260, $r1=var2427, $i14=var2954, $i13=var214, $i0=var3000, $r3=var60, $i15=var2384, i16=var3929, i17=var3284, java.lang.Object=var711, $r20=var273, $i18=var2006, $i1=var266, java.util.Map=var3300, $r5=var1634, $i20=var3270, $i11=var2371, $i2=var1465, java.util.Set=var2005, $r7=var3014, $i21=var2890, $i10=var1186, $i3=var1845, org.hibernate.transform.CacheableResultTransformer=var2446, $r9=var2703, $i22=var199, $i9=var571, $i4=var3733, $r11=var1475, null_type=var3033, $i23=var1119, $i7=var2444, $i6=var3774, $r13=var755, $i5=var3563, $i8=var1537}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15