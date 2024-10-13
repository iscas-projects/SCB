(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1240 0)
(declare-sort var606 0)
(declare-sort var2509 0)
(declare-sort var166 0)
(declare-sort var500 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var1240) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var1240) Int)
(declare-fun positionalParameterValues/-667021461 (var1240) (Array Int var606))
(declare-fun getLength-Arr-var606-1 ((Array Int var606)) Int)
(declare-fun namedParameters/-667021461 (var1240) var2509)
(declare-fun var2509_hashCode/1768810987 (var2509) Int)
(declare-fun filterKeys/-667021461 (var1240) var166)
(declare-fun var166_hashCode/539623333 (var166) Int)
(declare-fun customTransformer/-667021461 (var1240) var500)
(declare-fun tenantIdentifier/-667021461 (var1240) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var1240) String)
(declare-const null-var1240 var1240)
(declare-const null-Int Int)
(declare-const null-var2509 var2509)
(declare-const null-var166 var166)
(declare-const null-var500 var500)
(declare-const null-String String)
(declare-const var1020 var1240) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1020 null-var1240)))
(define-const var1810 Int (firstRow/-667021461 var1020)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1810 null-Int))) ; Cond: $r1 != null 
(define-const var2026 Int (firstRow/-667021461 var1020)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var1869 Int (hashCode/569135069 var2026)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1710 Int (+ 481 var1869)) ; Statement: $i13 = 481 + $i14 
(define-const var1267 Int (* 37 var1710)) ; Statement: $i0 = 37 * $i13 
(define-const var454 Int (maxRows/-667021461 var1020)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var454 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var264 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var365 Int (+ var1267 var264)) ; Statement: i16 = $i0 + $i15 
(define-const var2902 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3671 (Array Int var606) (positionalParameterValues/-667021461 var1020)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1766 Int (getLength-Arr-var606-1 var3671)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2902 var1766)) ; Cond: i17 >= $i18 
(define-const var1009 Int (* 37 var365)) ; Statement: $i1 = 37 * i16 
(define-const var137 var2509 (namedParameters/-667021461 var1020)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var137 null-var2509))) ; Cond: $r5 != null 
(define-const var1402 var2509 (namedParameters/-667021461 var1020)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var1058 Int (var2509_hashCode/1768810987 var1402)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1320 Int (+ var1009 var1058)) ; Statement: $i11 = $i1 + $i20 
(define-const var1334 Int (* 37 var1320)) ; Statement: $i2 = 37 * $i11 
(define-const var3611 var166 (filterKeys/-667021461 var1020)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var3611 null-var166))) ; Cond: $r7 != null 
(define-const var1308 var166 (filterKeys/-667021461 var1020)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3999 Int (var166_hashCode/539623333 var1308)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3276 Int (+ var1334 var3999)) ; Statement: $i10 = $i2 + $i21 
(define-const var2565 Int (* 37 var3276)) ; Statement: $i3 = 37 * $i10 
(define-const var1694 var500 (customTransformer/-667021461 var1020)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var1694 null-var500)))) ; Negate: Cond: $r9 != null  
(define-const var443 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2275 Int (+ var2565 var443)) ; Statement: $i9 = $i3 + $i22 
(define-const var3183 Int (* 37 var2275)) ; Statement: $i4 = 37 * $i9 
(define-const var1071 String (tenantIdentifier/-667021461 var1020)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var1071 null-String))) ; Cond: $r11 != null 
(define-const var2622 String (tenantIdentifier/-667021461 var1020)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var325 Int (hashCode/-467973558 var2622)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var367 Int (+ var3183 var325)) ; Statement: $i7 = $i4 + $i23 
(define-const var3395 Int (* 37 var367)) ; Statement: $i6 = 37 * $i7 
(define-const var714 String (sqlQueryString/-667021461 var1020)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1030 Int (hashCode/-467973558 var714)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var558 Int (+ var3395 var1030)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var606-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2509_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var166_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var1240=org.hibernate.cache.spi.QueryKey, var1020=r0, var1810=$r1, var2026=$r2, var1869=$i14, var1710=$i13, var1267=$i0, var454=$r3, var264=$i15, var365=i16, var2902=i17, var606=java.lang.Object, var3671=$r20, var1766=$i18, var1009=$i1, var2509=java.util.Map, var137=$r5, var1402=$r6, var1058=$i20, var1320=$i11, var1334=$i2, var166=java.util.Set, var3611=$r7, var1308=$r8, var3999=$i21, var3276=$i10, var2565=$i3, var500=org.hibernate.transform.CacheableResultTransformer, var1694=$r9, var443=$i22, var2275=$i9, var3183=$i4, var1071=$r11, var2657=null_type, var2622=$r12, var325=$i23, var367=$i7, var3395=$i6, var714=$r13, var1030=$i5, var558=$i8}
; {org.hibernate.cache.spi.QueryKey=var1240, r0=var1020, $r1=var1810, $r2=var2026, $i14=var1869, $i13=var1710, $i0=var1267, $r3=var454, $i15=var264, i16=var365, i17=var2902, java.lang.Object=var606, $r20=var3671, $i18=var1766, $i1=var1009, java.util.Map=var2509, $r5=var137, $r6=var1402, $i20=var1058, $i11=var1320, $i2=var1334, java.util.Set=var166, $r7=var3611, $r8=var1308, $i21=var3999, $i10=var3276, $i3=var2565, org.hibernate.transform.CacheableResultTransformer=var500, $r9=var1694, $i22=var443, $i9=var2275, $i4=var3183, $r11=var1071, null_type=var2657, $r12=var2622, $i23=var325, $i7=var367, $i6=var3395, $r13=var714, $i5=var1030, $i8=var558}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15