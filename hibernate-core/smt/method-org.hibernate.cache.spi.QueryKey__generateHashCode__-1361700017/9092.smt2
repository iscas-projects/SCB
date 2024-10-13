(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var2120 0)
(declare-sort var2684 0)
(declare-sort var2615 0)
(declare-sort var1858 0)
(declare-sort var2116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1259) Int)
(declare-fun maxRows/-667021461 (var1259) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var1259) (Array Int var2120))
(declare-fun getLength-Arr-var2120-1 ((Array Int var2120)) Int)
(declare-fun namedParameters/-667021461 (var1259) var2684)
(declare-fun filterKeys/-667021461 (var1259) var2615)
(declare-fun customTransformer/-667021461 (var1259) var1858)
(declare-fun hashCode/1497633159 (var1858) Int)
(declare-fun tenantIdentifier/-667021461 (var1259) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1259) String)
(declare-const null-var1259 var1259)
(declare-const null-Int Int)
(declare-const null-var2684 var2684)
(declare-const null-var2615 var2615)
(declare-const null-var1858 var1858)
(declare-const null-String String)
(declare-const var3015 var1259) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3015 null-var1259)))
(define-const var2906 Int (firstRow/-667021461 var3015)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var2906 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1060 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3490 Int (+ 481 var1060)) ; Statement: $i13 = 481 + $i14 
(define-const var281 Int (* 37 var3490)) ; Statement: $i0 = 37 * $i13 
(define-const var1370 Int (maxRows/-667021461 var3015)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1370 null-Int))) ; Cond: $r3 != null 
(define-const var1844 Int (maxRows/-667021461 var3015)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var2011 Int (hashCode/569135069 var1844)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2147 Int (+ var281 var2011)) ; Statement: i16 = $i0 + $i15 
(define-const var3184 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2957 (Array Int var2120) (positionalParameterValues/-667021461 var3015)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1880 Int (getLength-Arr-var2120-1 var2957)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3184 var1880)) ; Cond: i17 >= $i18 
(define-const var2006 Int (* 37 var2147)) ; Statement: $i1 = 37 * i16 
(define-const var2978 var2684 (namedParameters/-667021461 var3015)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var2978 null-var2684)))) ; Negate: Cond: $r5 != null  
(define-const var1585 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2892 Int (+ var2006 var1585)) ; Statement: $i11 = $i1 + $i20 
(define-const var3536 Int (* 37 var2892)) ; Statement: $i2 = 37 * $i11 
(define-const var3384 var2615 (filterKeys/-667021461 var3015)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var3384 null-var2615)))) ; Negate: Cond: $r7 != null  
(define-const var651 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var769 Int (+ var3536 var651)) ; Statement: $i10 = $i2 + $i21 
(define-const var1759 Int (* 37 var769)) ; Statement: $i3 = 37 * $i10 
(define-const var714 var1858 (customTransformer/-667021461 var3015)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var714 null-var1858))) ; Cond: $r9 != null 
(define-const var2932 var1858 (customTransformer/-667021461 var3015)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2911 Int (hashCode/1497633159 var2932)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var526 Int (+ var1759 var2911)) ; Statement: $i9 = $i3 + $i22 
(define-const var1063 Int (* 37 var526)) ; Statement: $i4 = 37 * $i9 
(define-const var128 String (tenantIdentifier/-667021461 var3015)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var128 null-String))) ; Cond: $r11 != null 
(define-const var3944 String (tenantIdentifier/-667021461 var3015)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var1453 Int (hashCode/-467973558 var3944)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var36 Int (+ var1063 var1453)) ; Statement: $i7 = $i4 + $i23 
(define-const var1713 Int (* 37 var36)) ; Statement: $i6 = 37 * $i7 
(define-const var2951 String (sqlQueryString/-667021461 var3015)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var24 Int (hashCode/-467973558 var2951)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1015 Int (+ var1713 var24)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2120-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1259=org.hibernate.cache.spi.QueryKey, var3015=r0, var2906=$r1, var1060=$i14, var3490=$i13, var281=$i0, var1370=$r3, var1844=$r4, var2011=$i15, var2147=i16, var3184=i17, var2120=java.lang.Object, var2957=$r20, var1880=$i18, var2006=$i1, var2684=java.util.Map, var2978=$r5, var1585=$i20, var2892=$i11, var3536=$i2, var2615=java.util.Set, var3384=$r7, var651=$i21, var769=$i10, var1759=$i3, var1858=org.hibernate.transform.CacheableResultTransformer, var714=$r9, var2932=$r10, var2911=$i22, var526=$i9, var1063=$i4, var128=$r11, var2116=null_type, var3944=$r12, var1453=$i23, var36=$i7, var1713=$i6, var2951=$r13, var24=$i5, var1015=$i8}
; {org.hibernate.cache.spi.QueryKey=var1259, r0=var3015, $r1=var2906, $i14=var1060, $i13=var3490, $i0=var281, $r3=var1370, $r4=var1844, $i15=var2011, i16=var2147, i17=var3184, java.lang.Object=var2120, $r20=var2957, $i18=var1880, $i1=var2006, java.util.Map=var2684, $r5=var2978, $i20=var1585, $i11=var2892, $i2=var3536, java.util.Set=var2615, $r7=var3384, $i21=var651, $i10=var769, $i3=var1759, org.hibernate.transform.CacheableResultTransformer=var1858, $r9=var714, $r10=var2932, $i22=var2911, $i9=var526, $i4=var1063, $r11=var128, null_type=var2116, $r12=var3944, $i23=var1453, $i7=var36, $i6=var1713, $r13=var2951, $i5=var24, $i8=var1015}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15