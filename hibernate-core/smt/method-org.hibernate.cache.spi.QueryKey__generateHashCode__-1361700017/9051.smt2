(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3717 0)
(declare-sort var1626 0)
(declare-sort var324 0)
(declare-sort var131 0)
(declare-sort var2646 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3717) Int)
(declare-fun maxRows/-667021461 (var3717) Int)
(declare-fun positionalParameterValues/-667021461 (var3717) (Array Int var1626))
(declare-fun getLength-Arr-var1626-1 ((Array Int var1626)) Int)
(declare-fun namedParameters/-667021461 (var3717) var324)
(declare-fun var324_hashCode/1768810987 (var324) Int)
(declare-fun filterKeys/-667021461 (var3717) var131)
(declare-fun var131_hashCode/539623333 (var131) Int)
(declare-fun customTransformer/-667021461 (var3717) var2646)
(declare-fun hashCode/1497633159 (var2646) Int)
(declare-fun tenantIdentifier/-667021461 (var3717) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3717) String)
(declare-const null-var3717 var3717)
(declare-const null-Int Int)
(declare-const null-var324 var324)
(declare-const null-var131 var131)
(declare-const null-var2646 var2646)
(declare-const null-String String)
(declare-const var1603 var3717) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1603 null-var3717)))
(define-const var764 Int (firstRow/-667021461 var1603)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var764 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var2027 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var3390 Int (+ 481 var2027)) ; Statement: $i13 = 481 + $i14 
(define-const var561 Int (* 37 var3390)) ; Statement: $i0 = 37 * $i13 
(define-const var511 Int (maxRows/-667021461 var1603)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var511 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var321 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1133 Int (+ var561 var321)) ; Statement: i16 = $i0 + $i15 
(define-const var1638 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1833 (Array Int var1626) (positionalParameterValues/-667021461 var1603)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1265 Int (getLength-Arr-var1626-1 var1833)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1638 var1265)) ; Cond: i17 >= $i18 
(define-const var3294 Int (* 37 var1133)) ; Statement: $i1 = 37 * i16 
(define-const var1870 var324 (namedParameters/-667021461 var1603)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var1870 null-var324))) ; Cond: $r5 != null 
(define-const var3377 var324 (namedParameters/-667021461 var1603)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3064 Int (var324_hashCode/1768810987 var3377)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1086 Int (+ var3294 var3064)) ; Statement: $i11 = $i1 + $i20 
(define-const var3764 Int (* 37 var1086)) ; Statement: $i2 = 37 * $i11 
(define-const var3179 var131 (filterKeys/-667021461 var1603)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3179 null-var131))) ; Cond: $r7 != null 
(define-const var2271 var131 (filterKeys/-667021461 var1603)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2470 Int (var131_hashCode/539623333 var2271)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2554 Int (+ var3764 var2470)) ; Statement: $i10 = $i2 + $i21 
(define-const var3520 Int (* 37 var2554)) ; Statement: $i3 = 37 * $i10 
(define-const var2670 var2646 (customTransformer/-667021461 var1603)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var2670 null-var2646))) ; Cond: $r9 != null 
(define-const var1593 var2646 (customTransformer/-667021461 var1603)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1318 Int (hashCode/1497633159 var1593)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2473 Int (+ var3520 var1318)) ; Statement: $i9 = $i3 + $i22 
(define-const var451 Int (* 37 var2473)) ; Statement: $i4 = 37 * $i9 
(define-const var2956 String (tenantIdentifier/-667021461 var1603)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2956 null-String))) ; Cond: $r11 != null 
(define-const var239 String (tenantIdentifier/-667021461 var1603)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2831 Int (hashCode/-467973558 var239)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var14 Int (+ var451 var2831)) ; Statement: $i7 = $i4 + $i23 
(define-const var2404 Int (* 37 var14)) ; Statement: $i6 = 37 * $i7 
(define-const var540 String (sqlQueryString/-667021461 var1603)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1004 Int (hashCode/-467973558 var540)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2549 Int (+ var2404 var1004)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1626-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var324_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var131_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3717=org.hibernate.cache.spi.QueryKey, var1603=r0, var764=$r1, var2027=$i14, var3390=$i13, var561=$i0, var511=$r3, var321=$i15, var1133=i16, var1638=i17, var1626=java.lang.Object, var1833=$r20, var1265=$i18, var3294=$i1, var324=java.util.Map, var1870=$r5, var3377=$r6, var3064=$i20, var1086=$i11, var3764=$i2, var131=java.util.Set, var3179=$r7, var2271=$r8, var2470=$i21, var2554=$i10, var3520=$i3, var2646=org.hibernate.transform.CacheableResultTransformer, var2670=$r9, var1593=$r10, var1318=$i22, var2473=$i9, var451=$i4, var2956=$r11, var1898=null_type, var239=$r12, var2831=$i23, var14=$i7, var2404=$i6, var540=$r13, var1004=$i5, var2549=$i8}
; {org.hibernate.cache.spi.QueryKey=var3717, r0=var1603, $r1=var764, $i14=var2027, $i13=var3390, $i0=var561, $r3=var511, $i15=var321, i16=var1133, i17=var1638, java.lang.Object=var1626, $r20=var1833, $i18=var1265, $i1=var3294, java.util.Map=var324, $r5=var1870, $r6=var3377, $i20=var3064, $i11=var1086, $i2=var3764, java.util.Set=var131, $r7=var3179, $r8=var2271, $i21=var2470, $i10=var2554, $i3=var3520, org.hibernate.transform.CacheableResultTransformer=var2646, $r9=var2670, $r10=var1593, $i22=var1318, $i9=var2473, $i4=var451, $r11=var2956, null_type=var1898, $r12=var239, $i23=var2831, $i7=var14, $i6=var2404, $r13=var540, $i5=var1004, $i8=var2549}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15