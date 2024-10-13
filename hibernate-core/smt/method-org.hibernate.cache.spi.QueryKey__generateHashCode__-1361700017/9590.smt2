(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var3878 0)
(declare-sort var2360 0)
(declare-sort var1681 0)
(declare-sort var2323 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3309) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var3309) Int)
(declare-fun positionalParameterValues/-667021461 (var3309) (Array Int var3878))
(declare-fun getLength-Arr-var3878-1 ((Array Int var3878)) Int)
(declare-fun namedParameters/-667021461 (var3309) var2360)
(declare-fun var2360_hashCode/1768810987 (var2360) Int)
(declare-fun filterKeys/-667021461 (var3309) var1681)
(declare-fun var1681_hashCode/539623333 (var1681) Int)
(declare-fun customTransformer/-667021461 (var3309) var2323)
(declare-fun hashCode/1497633159 (var2323) Int)
(declare-fun tenantIdentifier/-667021461 (var3309) String)
(declare-fun sqlQueryString/-667021461 (var3309) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3309 var3309)
(declare-const null-Int Int)
(declare-const null-var2360 var2360)
(declare-const null-var1681 var1681)
(declare-const null-var2323 var2323)
(declare-const null-String String)
(declare-const var20 var3309) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var20 null-var3309)))
(define-const var3149 Int (firstRow/-667021461 var20)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3149 null-Int))) ; Cond: $r1 != null 
(define-const var965 Int (firstRow/-667021461 var20)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2163 Int (hashCode/569135069 var965)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3901 Int (+ 481 var2163)) ; Statement: $i13 = 481 + $i14 
(define-const var291 Int (* 37 var3901)) ; Statement: $i0 = 37 * $i13 
(define-const var3525 Int (maxRows/-667021461 var20)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var3525 null-Int))) ; Cond: $r3 != null 
(define-const var290 Int (maxRows/-667021461 var20)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var297 Int (hashCode/569135069 var290)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1092 Int (+ var291 var297)) ; Statement: i16 = $i0 + $i15 
(define-const var485 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1068 (Array Int var3878) (positionalParameterValues/-667021461 var20)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2030 Int (getLength-Arr-var3878-1 var1068)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var485 var2030)) ; Cond: i17 >= $i18 
(define-const var106 Int (* 37 var1092)) ; Statement: $i1 = 37 * i16 
(define-const var893 var2360 (namedParameters/-667021461 var20)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var893 null-var2360))) ; Cond: $r5 != null 
(define-const var1784 var2360 (namedParameters/-667021461 var20)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1359 Int (var2360_hashCode/1768810987 var1784)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1823 Int (+ var106 var1359)) ; Statement: $i11 = $i1 + $i20 
(define-const var3555 Int (* 37 var1823)) ; Statement: $i2 = 37 * $i11 
(define-const var1481 var1681 (filterKeys/-667021461 var20)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1481 null-var1681))) ; Cond: $r7 != null 
(define-const var182 var1681 (filterKeys/-667021461 var20)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var425 Int (var1681_hashCode/539623333 var182)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var571 Int (+ var3555 var425)) ; Statement: $i10 = $i2 + $i21 
(define-const var3564 Int (* 37 var571)) ; Statement: $i3 = 37 * $i10 
(define-const var3255 var2323 (customTransformer/-667021461 var20)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3255 null-var2323))) ; Cond: $r9 != null 
(define-const var122 var2323 (customTransformer/-667021461 var20)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var3490 Int (hashCode/1497633159 var122)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2644 Int (+ var3564 var3490)) ; Statement: $i9 = $i3 + $i22 
(define-const var3155 Int (* 37 var2644)) ; Statement: $i4 = 37 * $i9 
(define-const var424 String (tenantIdentifier/-667021461 var20)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var424 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var565 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var630 Int (+ var3155 var565)) ; Statement: $i7 = $i4 + $i23 
(define-const var1241 Int (* 37 var630)) ; Statement: $i6 = 37 * $i7 
(define-const var409 String (sqlQueryString/-667021461 var20)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1363 Int (hashCode/-467973558 var409)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2985 Int (+ var1241 var1363)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var3878-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2360_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1681_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3309=org.hibernate.cache.spi.QueryKey, var20=r0, var3149=$r1, var965=$r2, var2163=$i14, var3901=$i13, var291=$i0, var3525=$r3, var290=$r4, var297=$i15, var1092=i16, var485=i17, var3878=java.lang.Object, var1068=$r20, var2030=$i18, var106=$i1, var2360=java.util.Map, var893=$r5, var1784=$r6, var1359=$i20, var1823=$i11, var3555=$i2, var1681=java.util.Set, var1481=$r7, var182=$r8, var425=$i21, var571=$i10, var3564=$i3, var2323=org.hibernate.transform.CacheableResultTransformer, var3255=$r9, var122=$r10, var3490=$i22, var2644=$i9, var3155=$i4, var424=$r11, var2900=null_type, var565=$i23, var630=$i7, var1241=$i6, var409=$r13, var1363=$i5, var2985=$i8}
; {org.hibernate.cache.spi.QueryKey=var3309, r0=var20, $r1=var3149, $r2=var965, $i14=var2163, $i13=var3901, $i0=var291, $r3=var3525, $r4=var290, $i15=var297, i16=var1092, i17=var485, java.lang.Object=var3878, $r20=var1068, $i18=var2030, $i1=var106, java.util.Map=var2360, $r5=var893, $r6=var1784, $i20=var1359, $i11=var1823, $i2=var3555, java.util.Set=var1681, $r7=var1481, $r8=var182, $i21=var425, $i10=var571, $i3=var3564, org.hibernate.transform.CacheableResultTransformer=var2323, $r9=var3255, $r10=var122, $i22=var3490, $i9=var2644, $i4=var3155, $r11=var424, null_type=var2900, $i23=var565, $i7=var630, $i6=var1241, $r13=var409, $i5=var1363, $i8=var2985}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15