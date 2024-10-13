(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var385 0)
(declare-sort var317 0)
(declare-sort var3900 0)
(declare-sort var2196 0)
(declare-sort var647 0)
(declare-sort var3397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var385) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var385) Int)
(declare-fun positionalParameterValues/-667021461 (var385) (Array Int var317))
(declare-fun getLength-Arr-var317-1 ((Array Int var317)) Int)
(declare-fun namedParameters/-667021461 (var385) var3900)
(declare-fun filterKeys/-667021461 (var385) var2196)
(declare-fun customTransformer/-667021461 (var385) var647)
(declare-fun hashCode/1497633159 (var647) Int)
(declare-fun tenantIdentifier/-667021461 (var385) String)
(declare-fun sqlQueryString/-667021461 (var385) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var385 var385)
(declare-const null-Int Int)
(declare-const null-var3900 var3900)
(declare-const null-var2196 var2196)
(declare-const null-var647 var647)
(declare-const null-String String)
(declare-const var2843 var385) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2843 null-var385)))
(define-const var2121 Int (firstRow/-667021461 var2843)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var2121 null-Int))) ; Cond: $r1 != null 
(define-const var3056 Int (firstRow/-667021461 var2843)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var336 Int (hashCode/569135069 var3056)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var521 Int (+ 481 var336)) ; Statement: $i13 = 481 + $i14 
(define-const var2800 Int (* 37 var521)) ; Statement: $i0 = 37 * $i13 
(define-const var256 Int (maxRows/-667021461 var2843)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var256 null-Int))) ; Cond: $r3 != null 
(define-const var906 Int (maxRows/-667021461 var2843)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var730 Int (hashCode/569135069 var906)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3959 Int (+ var2800 var730)) ; Statement: i16 = $i0 + $i15 
(define-const var3887 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2435 (Array Int var317) (positionalParameterValues/-667021461 var2843)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1872 Int (getLength-Arr-var317-1 var2435)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3887 var1872)) ; Cond: i17 >= $i18 
(define-const var2283 Int (* 37 var3959)) ; Statement: $i1 = 37 * i16 
(define-const var3357 var3900 (namedParameters/-667021461 var2843)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3357 null-var3900)))) ; Negate: Cond: $r5 != null  
(define-const var2950 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var3234 Int (+ var2283 var2950)) ; Statement: $i11 = $i1 + $i20 
(define-const var390 Int (* 37 var3234)) ; Statement: $i2 = 37 * $i11 
(define-const var3597 var2196 (filterKeys/-667021461 var2843)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3597 null-var2196)))) ; Negate: Cond: $r7 != null  
(define-const var1091 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1128 Int (+ var390 var1091)) ; Statement: $i10 = $i2 + $i21 
(define-const var1971 Int (* 37 var1128)) ; Statement: $i3 = 37 * $i10 
(define-const var3727 var647 (customTransformer/-667021461 var2843)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3727 null-var647))) ; Cond: $r9 != null 
(define-const var572 var647 (customTransformer/-667021461 var2843)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var119 Int (hashCode/1497633159 var572)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1696 Int (+ var1971 var119)) ; Statement: $i9 = $i3 + $i22 
(define-const var1681 Int (* 37 var1696)) ; Statement: $i4 = 37 * $i9 
(define-const var126 String (tenantIdentifier/-667021461 var2843)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var126 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var248 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var843 Int (+ var1681 var248)) ; Statement: $i7 = $i4 + $i23 
(define-const var1927 Int (* 37 var843)) ; Statement: $i6 = 37 * $i7 
(define-const var297 String (sqlQueryString/-667021461 var2843)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3388 Int (hashCode/-467973558 var297)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3220 Int (+ var1927 var3388)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var317-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var385=org.hibernate.cache.spi.QueryKey, var2843=r0, var2121=$r1, var3056=$r2, var336=$i14, var521=$i13, var2800=$i0, var256=$r3, var906=$r4, var730=$i15, var3959=i16, var3887=i17, var317=java.lang.Object, var2435=$r20, var1872=$i18, var2283=$i1, var3900=java.util.Map, var3357=$r5, var2950=$i20, var3234=$i11, var390=$i2, var2196=java.util.Set, var3597=$r7, var1091=$i21, var1128=$i10, var1971=$i3, var647=org.hibernate.transform.CacheableResultTransformer, var3727=$r9, var572=$r10, var119=$i22, var1696=$i9, var1681=$i4, var126=$r11, var3397=null_type, var248=$i23, var843=$i7, var1927=$i6, var297=$r13, var3388=$i5, var3220=$i8}
; {org.hibernate.cache.spi.QueryKey=var385, r0=var2843, $r1=var2121, $r2=var3056, $i14=var336, $i13=var521, $i0=var2800, $r3=var256, $r4=var906, $i15=var730, i16=var3959, i17=var3887, java.lang.Object=var317, $r20=var2435, $i18=var1872, $i1=var2283, java.util.Map=var3900, $r5=var3357, $i20=var2950, $i11=var3234, $i2=var390, java.util.Set=var2196, $r7=var3597, $i21=var1091, $i10=var1128, $i3=var1971, org.hibernate.transform.CacheableResultTransformer=var647, $r9=var3727, $r10=var572, $i22=var119, $i9=var1696, $i4=var1681, $r11=var126, null_type=var3397, $i23=var248, $i7=var843, $i6=var1927, $r13=var297, $i5=var3388, $i8=var3220}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15