(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var498 0)
(declare-sort var419 0)
(declare-sort var682 0)
(declare-sort var1114 0)
(declare-sort var326 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var498) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var498) Int)
(declare-fun positionalParameterValues/-667021461 (var498) (Array Int var419))
(declare-fun getLength-Arr-var419-1 ((Array Int var419)) Int)
(declare-fun namedParameters/-667021461 (var498) var682)
(declare-fun filterKeys/-667021461 (var498) var1114)
(declare-fun var1114_hashCode/539623333 (var1114) Int)
(declare-fun customTransformer/-667021461 (var498) var326)
(declare-fun hashCode/1497633159 (var326) Int)
(declare-fun tenantIdentifier/-667021461 (var498) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var498) String)
(declare-const null-var498 var498)
(declare-const null-Int Int)
(declare-const null-var682 var682)
(declare-const null-var1114 var1114)
(declare-const null-var326 var326)
(declare-const null-String String)
(declare-const var1716 var498) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1716 null-var498)))
(define-const var1026 Int (firstRow/-667021461 var1716)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var1026 null-Int))) ; Cond: $r1 != null 
(define-const var1837 Int (firstRow/-667021461 var1716)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2259 Int (hashCode/569135069 var1837)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3033 Int (+ 481 var2259)) ; Statement: $i13 = 481 + $i14 
(define-const var231 Int (* 37 var3033)) ; Statement: $i0 = 37 * $i13 
(define-const var2289 Int (maxRows/-667021461 var1716)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var2289 null-Int))) ; Cond: $r3 != null 
(define-const var1138 Int (maxRows/-667021461 var1716)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var381 Int (hashCode/569135069 var1138)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var884 Int (+ var231 var381)) ; Statement: i16 = $i0 + $i15 
(define-const var1591 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var1580 (Array Int var419) (positionalParameterValues/-667021461 var1716)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var957 Int (getLength-Arr-var419-1 var1580)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1591 var957)) ; Cond: i17 >= $i18 
(define-const var690 Int (* 37 var884)) ; Statement: $i1 = 37 * i16 
(define-const var1800 var682 (namedParameters/-667021461 var1716)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1800 null-var682)))) ; Negate: Cond: $r5 != null  
(define-const var3288 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var146 Int (+ var690 var3288)) ; Statement: $i11 = $i1 + $i20 
(define-const var3431 Int (* 37 var146)) ; Statement: $i2 = 37 * $i11 
(define-const var1741 var1114 (filterKeys/-667021461 var1716)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1741 null-var1114))) ; Cond: $r7 != null 
(define-const var3108 var1114 (filterKeys/-667021461 var1716)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var2495 Int (var1114_hashCode/539623333 var3108)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var47 Int (+ var3431 var2495)) ; Statement: $i10 = $i2 + $i21 
(define-const var2247 Int (* 37 var47)) ; Statement: $i3 = 37 * $i10 
(define-const var876 var326 (customTransformer/-667021461 var1716)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var876 null-var326))) ; Cond: $r9 != null 
(define-const var45 var326 (customTransformer/-667021461 var1716)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var2603 Int (hashCode/1497633159 var45)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var663 Int (+ var2247 var2603)) ; Statement: $i9 = $i3 + $i22 
(define-const var1929 Int (* 37 var663)) ; Statement: $i4 = 37 * $i9 
(define-const var862 String (tenantIdentifier/-667021461 var1716)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var862 null-String))) ; Cond: $r11 != null 
(define-const var199 String (tenantIdentifier/-667021461 var1716)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var74 Int (hashCode/-467973558 var199)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2099 Int (+ var1929 var74)) ; Statement: $i7 = $i4 + $i23 
(define-const var1126 Int (* 37 var2099)) ; Statement: $i6 = 37 * $i7 
(define-const var817 String (sqlQueryString/-667021461 var1716)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1658 Int (hashCode/-467973558 var817)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var1477 Int (+ var1126 var1658)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var419-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var1114_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var498=org.hibernate.cache.spi.QueryKey, var1716=r0, var1026=$r1, var1837=$r2, var2259=$i14, var3033=$i13, var231=$i0, var2289=$r3, var1138=$r4, var381=$i15, var884=i16, var1591=i17, var419=java.lang.Object, var1580=$r20, var957=$i18, var690=$i1, var682=java.util.Map, var1800=$r5, var3288=$i20, var146=$i11, var3431=$i2, var1114=java.util.Set, var1741=$r7, var3108=$r8, var2495=$i21, var47=$i10, var2247=$i3, var326=org.hibernate.transform.CacheableResultTransformer, var876=$r9, var45=$r10, var2603=$i22, var663=$i9, var1929=$i4, var862=$r11, var191=null_type, var199=$r12, var74=$i23, var2099=$i7, var1126=$i6, var817=$r13, var1658=$i5, var1477=$i8}
; {org.hibernate.cache.spi.QueryKey=var498, r0=var1716, $r1=var1026, $r2=var1837, $i14=var2259, $i13=var3033, $i0=var231, $r3=var2289, $r4=var1138, $i15=var381, i16=var884, i17=var1591, java.lang.Object=var419, $r20=var1580, $i18=var957, $i1=var690, java.util.Map=var682, $r5=var1800, $i20=var3288, $i11=var146, $i2=var3431, java.util.Set=var1114, $r7=var1741, $r8=var3108, $i21=var2495, $i10=var47, $i3=var2247, org.hibernate.transform.CacheableResultTransformer=var326, $r9=var876, $r10=var45, $i22=var2603, $i9=var663, $i4=var1929, $r11=var862, null_type=var191, $r12=var199, $i23=var74, $i7=var2099, $i6=var1126, $r13=var817, $i5=var1658, $i8=var1477}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15