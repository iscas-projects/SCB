(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var1484 0)
(declare-sort var1870 0)
(declare-sort var2115 0)
(declare-sort var1656 0)
(declare-sort var2326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3999) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var3999) Int)
(declare-fun positionalParameterValues/-667021461 (var3999) (Array Int var1484))
(declare-fun getLength-Arr-var1484-1 ((Array Int var1484)) Int)
(declare-fun namedParameters/-667021461 (var3999) var1870)
(declare-fun filterKeys/-667021461 (var3999) var2115)
(declare-fun var2115_hashCode/539623333 (var2115) Int)
(declare-fun customTransformer/-667021461 (var3999) var1656)
(declare-fun tenantIdentifier/-667021461 (var3999) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var3999) String)
(declare-const null-var3999 var3999)
(declare-const null-Int Int)
(declare-const null-var1870 var1870)
(declare-const null-var2115 var2115)
(declare-const null-var1656 var1656)
(declare-const null-String String)
(declare-const var34 var3999) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var34 null-var3999)))
(define-const var3552 Int (firstRow/-667021461 var34)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3552 null-Int))) ; Cond: $r1 != null 
(define-const var953 Int (firstRow/-667021461 var34)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var2108 Int (hashCode/569135069 var953)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1701 Int (+ 481 var2108)) ; Statement: $i13 = 481 + $i14 
(define-const var1954 Int (* 37 var1701)) ; Statement: $i0 = 37 * $i13 
(define-const var1401 Int (maxRows/-667021461 var34)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var1401 null-Int))) ; Cond: $r3 != null 
(define-const var772 Int (maxRows/-667021461 var34)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var25 Int (hashCode/569135069 var772)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2379 Int (+ var1954 var25)) ; Statement: i16 = $i0 + $i15 
(define-const var1978 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var441 (Array Int var1484) (positionalParameterValues/-667021461 var34)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var1205 Int (getLength-Arr-var1484-1 var441)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var1978 var1205)) ; Cond: i17 >= $i18 
(define-const var976 Int (* 37 var2379)) ; Statement: $i1 = 37 * i16 
(define-const var3844 var1870 (namedParameters/-667021461 var34)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var3844 null-var1870)))) ; Negate: Cond: $r5 != null  
(define-const var3955 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var2666 Int (+ var976 var3955)) ; Statement: $i11 = $i1 + $i20 
(define-const var2042 Int (* 37 var2666)) ; Statement: $i2 = 37 * $i11 
(define-const var2899 var2115 (filterKeys/-667021461 var34)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var2899 null-var2115))) ; Cond: $r7 != null 
(define-const var423 var2115 (filterKeys/-667021461 var34)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var3378 Int (var2115_hashCode/539623333 var423)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1498 Int (+ var2042 var3378)) ; Statement: $i10 = $i2 + $i21 
(define-const var2388 Int (* 37 var1498)) ; Statement: $i3 = 37 * $i10 
(define-const var3170 var1656 (customTransformer/-667021461 var34)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (not (= var3170 null-var1656)))) ; Negate: Cond: $r9 != null  
(define-const var3288 Int 0) ; Statement: $i22 = 0 
 ; Statement: goto [?= $i9 = $i3 + $i22] 
(assert true) ; Non Conditional
(define-const var2021 Int (+ var2388 var3288)) ; Statement: $i9 = $i3 + $i22 
(define-const var1754 Int (* 37 var2021)) ; Statement: $i4 = 37 * $i9 
(define-const var185 String (tenantIdentifier/-667021461 var34)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var185 null-String))) ; Cond: $r11 != null 
(define-const var457 String (tenantIdentifier/-667021461 var34)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var847 Int (hashCode/-467973558 var457)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var980 Int (+ var1754 var847)) ; Statement: $i7 = $i4 + $i23 
(define-const var2939 Int (* 37 var980)) ; Statement: $i6 = 37 * $i7 
(define-const var469 String (sqlQueryString/-667021461 var34)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1913 Int (hashCode/-467973558 var469)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2641 Int (+ var2939 var1913)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1484-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var2115_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var3999=org.hibernate.cache.spi.QueryKey, var34=r0, var3552=$r1, var953=$r2, var2108=$i14, var1701=$i13, var1954=$i0, var1401=$r3, var772=$r4, var25=$i15, var2379=i16, var1978=i17, var1484=java.lang.Object, var441=$r20, var1205=$i18, var976=$i1, var1870=java.util.Map, var3844=$r5, var3955=$i20, var2666=$i11, var2042=$i2, var2115=java.util.Set, var2899=$r7, var423=$r8, var3378=$i21, var1498=$i10, var2388=$i3, var1656=org.hibernate.transform.CacheableResultTransformer, var3170=$r9, var3288=$i22, var2021=$i9, var1754=$i4, var185=$r11, var2326=null_type, var457=$r12, var847=$i23, var980=$i7, var2939=$i6, var469=$r13, var1913=$i5, var2641=$i8}
; {org.hibernate.cache.spi.QueryKey=var3999, r0=var34, $r1=var3552, $r2=var953, $i14=var2108, $i13=var1701, $i0=var1954, $r3=var1401, $r4=var772, $i15=var25, i16=var2379, i17=var1978, java.lang.Object=var1484, $r20=var441, $i18=var1205, $i1=var976, java.util.Map=var1870, $r5=var3844, $i20=var3955, $i11=var2666, $i2=var2042, java.util.Set=var2115, $r7=var2899, $r8=var423, $i21=var3378, $i10=var1498, $i3=var2388, org.hibernate.transform.CacheableResultTransformer=var1656, $r9=var3170, $i22=var3288, $i9=var2021, $i4=var1754, $r11=var185, null_type=var2326, $r12=var457, $i23=var847, $i7=var980, $i6=var2939, $r13=var469, $i5=var1913, $i8=var2641}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = 0;	goto [?= $i9 = $i3 + $i22];	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15