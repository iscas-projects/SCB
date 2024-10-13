(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2647 0)
(declare-sort var716 0)
(declare-sort var120 0)
(declare-sort var3432 0)
(declare-sort var1151 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2647) Int)
(declare-fun maxRows/-667021461 (var2647) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var2647) (Array Int var716))
(declare-fun getLength-Arr-var716-1 ((Array Int var716)) Int)
(declare-fun namedParameters/-667021461 (var2647) var120)
(declare-fun filterKeys/-667021461 (var2647) var3432)
(declare-fun customTransformer/-667021461 (var2647) var1151)
(declare-fun tenantIdentifier/-667021461 (var2647) String)
(declare-fun sqlQueryString/-667021461 (var2647) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2647 var2647)
(declare-const null-Int Int)
(declare-const null-var120 var120)
(declare-const null-var3432 var3432)
(declare-const null-var1151 var1151)
(declare-const null-String String)
(declare-const var1870 var2647) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1870 null-var2647)))
(define-const var244 Int (firstRow/-667021461 var1870)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var244 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var938 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2878 Int (+ 481 var938)) ; Statement: $i13 = 481 + $i14 
(define-const var1638 Int (* 37 var2878)) ; Statement: $i0 = 37 * $i13 
(define-const var1281 Int (maxRows/-667021461 var1870)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1281 null-Int))) ; Cond: $r3 != null 
(define-const var1923 Int (maxRows/-667021461 var1870)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3955 Int (hashCode/569135069 var1923)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2381 Int (+ var1638 var3955)) ; Statement: i16 = $i0 + $i15 
(define-const var589 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var122 (Array Int var716) (positionalParameterValues/-667021461 var1870)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var3455 Int (getLength-Arr-var716-1 var122)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var589 var3455)) ; Cond: i17 >= $i18 
(define-const var1637 Int (* 37 var2381)) ; Statement: $i1 = 37 * i16 
(define-const var3913 var120 (namedParameters/-667021461 var1870)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3913 null-var120)))) ; Negate: Cond: $r5 != null  
(define-const var1497 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2946 Int (+ var1637 var1497)) ; Statement: $i11 = $i1 + $i20 
(define-const var3212 Int (* 37 var2946)) ; Statement: $i2 = 37 * $i11 
(define-const var2502 var3432 (filterKeys/-667021461 var1870)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var2502 null-var3432)))) ; Negate: Cond: $r7 != null  
(define-const var2549 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1663 Int (+ var3212 var2549)) ; Statement: $i10 = $i2 + $i21 
(define-const var1954 Int (* 37 var1663)) ; Statement: $i3 = 37 * $i10 
(define-const var3282 var1151 (customTransformer/-667021461 var1870)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3282 null-var1151)))) ; Negate: Cond: $r9 != null  
(define-const var1660 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var1290 Int (+ var1954 var1660)) ; Statement: $i9 = $i3 + $i22 
(define-const var3830 Int (* 37 var1290)) ; Statement: $i4 = 37 * $i9 
(define-const var1833 String (tenantIdentifier/-667021461 var1870)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1833 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var876 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var23 Int (+ var3830 var876)) ; Statement: $i7 = $i4 + $i23 
(define-const var2602 Int (* 37 var23)) ; Statement: $i6 = 37 * $i7 
(define-const var2090 String (sqlQueryString/-667021461 var1870)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3246 Int (hashCode/-467973558 var2090)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var38 Int (+ var2602 var3246)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var716-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2647=org.hibernate.cache.spi.QueryKey, var1870=r0, var244=$r1, var938=$i14, var2878=$i13, var1638=$i0, var1281=$r3, var1923=$r4, var3955=$i15, var2381=i16, var589=i17, var716=java.lang.Object, var122=$r20, var3455=$i18, var1637=$i1, var120=java.util.Map, var3913=$r5, var1497=$i20, var2946=$i11, var3212=$i2, var3432=java.util.Set, var2502=$r7, var2549=$i21, var1663=$i10, var1954=$i3, var1151=org.hibernate.transform.CacheableResultTransformer, var3282=$r9, var1660=$i22, var1290=$i9, var3830=$i4, var1833=$r11, var2616=null_type, var876=$i23, var23=$i7, var2602=$i6, var2090=$r13, var3246=$i5, var38=$i8}
; {org.hibernate.cache.spi.QueryKey=var2647, r0=var1870, $r1=var244, $i14=var938, $i13=var2878, $i0=var1638, $r3=var1281, $r4=var1923, $i15=var3955, i16=var2381, i17=var589, java.lang.Object=var716, $r20=var122, $i18=var3455, $i1=var1637, java.util.Map=var120, $r5=var3913, $i20=var1497, $i11=var2946, $i2=var3212, java.util.Set=var3432, $r7=var2502, $i21=var2549, $i10=var1663, $i3=var1954, org.hibernate.transform.CacheableResultTransformer=var1151, $r9=var3282, $i22=var1660, $i9=var1290, $i4=var3830, $r11=var1833, null_type=var2616, $i23=var876, $i7=var23, $i6=var2602, $r13=var2090, $i5=var3246, $i8=var38}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15