(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2835 0)
(declare-sort var2186 0)
(declare-sort var2977 0)
(declare-sort var91 0)
(declare-sort var1258 0)
(declare-sort var2646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var2835) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var2835) Int)
(declare-fun positionalParameterValues/-667021461 (var2835) (Array Int var2186))
(declare-fun getLength-Arr-var2186-1 ((Array Int var2186)) Int)
(declare-fun namedParameters/-667021461 (var2835) var2977)
(declare-fun var2977_hashCode/1768810987 (var2977) Int)
(declare-fun filterKeys/-667021461 (var2835) var91)
(declare-fun var91_hashCode/539623333 (var91) Int)
(declare-fun customTransformer/-667021461 (var2835) var1258)
(declare-fun hashCode/1497633159 (var1258) Int)
(declare-fun tenantIdentifier/-667021461 (var2835) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var2835) String)
(declare-const null-var2835 var2835)
(declare-const null-Int Int)
(declare-const null-var2977 var2977)
(declare-const null-var91 var91)
(declare-const null-var1258 var1258)
(declare-const null-String String)
(declare-const var3130 var2835) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var3130 null-var2835)))
(define-const var212 Int (firstRow/-667021461 var3130)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var212 null-Int))) ; Cond: $r1 != null 
(define-const var860 Int (firstRow/-667021461 var3130)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var432 Int (hashCode/569135069 var860)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var799 Int (+ 481 var432)) ; Statement: $i13 = 481 + $i14 
(define-const var1023 Int (* 37 var799)) ; Statement: $i0 = 37 * $i13 
(define-const var654 Int (maxRows/-667021461 var3130)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var654 null-Int))) ; Cond: $r3 != null 
(define-const var629 Int (maxRows/-667021461 var3130)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var379 Int (hashCode/569135069 var629)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3429 Int (+ var1023 var379)) ; Statement: i16 = $i0 + $i15 
(define-const var2081 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var3896 (Array Int var2186) (positionalParameterValues/-667021461 var3130)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2860 Int (getLength-Arr-var2186-1 var3896)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2081 var2860)) ; Cond: i17 >= $i18 
(define-const var2884 Int (* 37 var3429)) ; Statement: $i1 = 37 * i16 
(define-const var479 var2977 (namedParameters/-667021461 var3130)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var479 null-var2977))) ; Cond: $r5 != null 
(define-const var635 var2977 (namedParameters/-667021461 var3130)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3030 Int (var2977_hashCode/1768810987 var635)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1845 Int (+ var2884 var3030)) ; Statement: $i11 = $i1 + $i20 
(define-const var226 Int (* 37 var1845)) ; Statement: $i2 = 37 * $i11 
(define-const var1183 var91 (filterKeys/-667021461 var3130)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var1183 null-var91))) ; Cond: $r7 != null 
(define-const var3423 var91 (filterKeys/-667021461 var3130)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var709 Int (var91_hashCode/539623333 var3423)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1343 Int (+ var226 var709)) ; Statement: $i10 = $i2 + $i21 
(define-const var128 Int (* 37 var1343)) ; Statement: $i3 = 37 * $i10 
(define-const var1333 var1258 (customTransformer/-667021461 var3130)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1333 null-var1258))) ; Cond: $r9 != null 
(define-const var1799 var1258 (customTransformer/-667021461 var3130)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var960 Int (hashCode/1497633159 var1799)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1905 Int (+ var128 var960)) ; Statement: $i9 = $i3 + $i22 
(define-const var3001 Int (* 37 var1905)) ; Statement: $i4 = 37 * $i9 
(define-const var907 String (tenantIdentifier/-667021461 var3130)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var907 null-String))) ; Cond: $r11 != null 
(define-const var1096 String (tenantIdentifier/-667021461 var3130)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var2887 Int (hashCode/-467973558 var1096)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2144 Int (+ var3001 var2887)) ; Statement: $i7 = $i4 + $i23 
(define-const var477 Int (* 37 var2144)) ; Statement: $i6 = 37 * $i7 
(define-const var658 String (sqlQueryString/-667021461 var3130)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var579 Int (hashCode/-467973558 var658)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2870 Int (+ var477 var579)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2186-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2977_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var91_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var2835=org.hibernate.cache.spi.QueryKey, var3130=r0, var212=$r1, var860=$r2, var432=$i14, var799=$i13, var1023=$i0, var654=$r3, var629=$r4, var379=$i15, var3429=i16, var2081=i17, var2186=java.lang.Object, var3896=$r20, var2860=$i18, var2884=$i1, var2977=java.util.Map, var479=$r5, var635=$r6, var3030=$i20, var1845=$i11, var226=$i2, var91=java.util.Set, var1183=$r7, var3423=$r8, var709=$i21, var1343=$i10, var128=$i3, var1258=org.hibernate.transform.CacheableResultTransformer, var1333=$r9, var1799=$r10, var960=$i22, var1905=$i9, var3001=$i4, var907=$r11, var2646=null_type, var1096=$r12, var2887=$i23, var2144=$i7, var477=$i6, var658=$r13, var579=$i5, var2870=$i8}
; {org.hibernate.cache.spi.QueryKey=var2835, r0=var3130, $r1=var212, $r2=var860, $i14=var432, $i13=var799, $i0=var1023, $r3=var654, $r4=var629, $i15=var379, i16=var3429, i17=var2081, java.lang.Object=var2186, $r20=var3896, $i18=var2860, $i1=var2884, java.util.Map=var2977, $r5=var479, $r6=var635, $i20=var3030, $i11=var1845, $i2=var226, java.util.Set=var91, $r7=var1183, $r8=var3423, $i21=var709, $i10=var1343, $i3=var128, org.hibernate.transform.CacheableResultTransformer=var1258, $r9=var1333, $r10=var1799, $i22=var960, $i9=var1905, $i4=var3001, $r11=var907, null_type=var2646, $r12=var1096, $i23=var2887, $i7=var2144, $i6=var477, $r13=var658, $i5=var579, $i8=var2870}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15