(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var2978 0)
(declare-sort var2071 0)
(declare-sort var3289 0)
(declare-sort var1836 0)
(declare-sort var3474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var324) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var324) Int)
(declare-fun positionalParameterValues/-667021461 (var324) (Array Int var2978))
(declare-fun getLength-Arr-var2978-1 ((Array Int var2978)) Int)
(declare-fun namedParameters/-667021461 (var324) var2071)
(declare-fun filterKeys/-667021461 (var324) var3289)
(declare-fun customTransformer/-667021461 (var324) var1836)
(declare-fun hashCode/1497633159 (var1836) Int)
(declare-fun tenantIdentifier/-667021461 (var324) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var324) String)
(declare-const null-var324 var324)
(declare-const null-Int Int)
(declare-const null-var2071 var2071)
(declare-const null-var3289 var3289)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const var326 var324) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var326 null-var324)))
(define-const var626 Int (firstRow/-667021461 var326)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var626 null-Int))) ; Cond: $r1 != null 
(define-const var927 Int (firstRow/-667021461 var326)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var451 Int (hashCode/569135069 var927)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2782 Int (+ 481 var451)) ; Statement: $i13 = 481 + $i14 
(define-const var1754 Int (* 37 var2782)) ; Statement: $i0 = 37 * $i13 
(define-const var1087 Int (maxRows/-667021461 var326)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1087 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var293 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1230 Int (+ var1754 var293)) ; Statement: i16 = $i0 + $i15 
(define-const var3354 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2464 (Array Int var2978) (positionalParameterValues/-667021461 var326)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3780 Int (getLength-Arr-var2978-1 var2464)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3354 var3780)) ; Cond: i17 >= $i18 
(define-const var3310 Int (* 37 var1230)) ; Statement: $i1 = 37 * i16 
(define-const var2811 var2071 (namedParameters/-667021461 var326)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2811 null-var2071)))) ; Negate: Cond: $r5 != null  
(define-const var3798 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var1433 Int (+ var3310 var3798)) ; Statement: $i11 = $i1 + $i20 
(define-const var159 Int (* 37 var1433)) ; Statement: $i2 = 37 * $i11 
(define-const var3316 var3289 (filterKeys/-667021461 var326)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3316 null-var3289)))) ; Negate: Cond: $r7 != null  
(define-const var2867 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1640 Int (+ var159 var2867)) ; Statement: $i10 = $i2 + $i21 
(define-const var723 Int (* 37 var1640)) ; Statement: $i3 = 37 * $i10 
(define-const var3915 var1836 (customTransformer/-667021461 var326)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3915 null-var1836))) ; Cond: $r9 != null 
(define-const var3145 var1836 (customTransformer/-667021461 var326)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var296 Int (hashCode/1497633159 var3145)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var315 Int (+ var723 var296)) ; Statement: $i9 = $i3 + $i22 
(define-const var3262 Int (* 37 var315)) ; Statement: $i4 = 37 * $i9 
(define-const var3191 String (tenantIdentifier/-667021461 var326)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var3191 null-String))) ; Cond: $r11 != null 
(define-const var478 String (tenantIdentifier/-667021461 var326)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1787 Int (hashCode/-467973558 var478)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2484 Int (+ var3262 var1787)) ; Statement: $i7 = $i4 + $i23 
(define-const var262 Int (* 37 var2484)) ; Statement: $i6 = 37 * $i7 
(define-const var2144 String (sqlQueryString/-667021461 var326)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var711 Int (hashCode/-467973558 var2144)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var129 Int (+ var262 var711)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2978-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var324=org.hibernate.cache.spi.QueryKey, var326=r0, var626=$r1, var927=$r2, var451=$i14, var2782=$i13, var1754=$i0, var1087=$r3, var293=$i15, var1230=i16, var3354=i17, var2978=java.lang.Object, var2464=$r20, var3780=$i18, var3310=$i1, var2071=java.util.Map, var2811=$r5, var3798=$i20, var1433=$i11, var159=$i2, var3289=java.util.Set, var3316=$r7, var2867=$i21, var1640=$i10, var723=$i3, var1836=org.hibernate.transform.CacheableResultTransformer, var3915=$r9, var3145=$r10, var296=$i22, var315=$i9, var3262=$i4, var3191=$r11, var3474=null_type, var478=$r12, var1787=$i23, var2484=$i7, var262=$i6, var2144=$r13, var711=$i5, var129=$i8}
; {org.hibernate.cache.spi.QueryKey=var324, r0=var326, $r1=var626, $r2=var927, $i14=var451, $i13=var2782, $i0=var1754, $r3=var1087, $i15=var293, i16=var1230, i17=var3354, java.lang.Object=var2978, $r20=var2464, $i18=var3780, $i1=var3310, java.util.Map=var2071, $r5=var2811, $i20=var3798, $i11=var1433, $i2=var159, java.util.Set=var3289, $r7=var3316, $i21=var2867, $i10=var1640, $i3=var723, org.hibernate.transform.CacheableResultTransformer=var1836, $r9=var3915, $r10=var3145, $i22=var296, $i9=var315, $i4=var3262, $r11=var3191, null_type=var3474, $r12=var478, $i23=var1787, $i7=var2484, $i6=var262, $r13=var2144, $i5=var711, $i8=var129}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15