(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var38 0)
(declare-sort var2262 0)
(declare-sort var2657 0)
(declare-sort var3372 0)
(declare-sort var608 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var38) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun maxRows/-667021461 (var38) Int)
(declare-fun positionalParameterValues/-667021461 (var38) (Array Int var2262))
(declare-fun getLength-Arr-var2262-1 ((Array Int var2262)) Int)
(declare-fun namedParameters/-667021461 (var38) var2657)
(declare-fun var2657_hashCode/1768810987 (var2657) Int)
(declare-fun filterKeys/-667021461 (var38) var3372)
(declare-fun var3372_hashCode/539623333 (var3372) Int)
(declare-fun customTransformer/-667021461 (var38) var608)
(declare-fun hashCode/1497633159 (var608) Int)
(declare-fun tenantIdentifier/-667021461 (var38) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sqlQueryString/-667021461 (var38) String)
(declare-const null-var38 var38)
(declare-const null-Int Int)
(declare-const null-var2657 var2657)
(declare-const null-var3372 var3372)
(declare-const null-var608 var608)
(declare-const null-String String)
(declare-const var1944 var38) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var1944 null-var38)))
(define-const var3330 Int (firstRow/-667021461 var1944)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (= var3330 null-Int))) ; Cond: $r1 != null 
(define-const var3489 Int (firstRow/-667021461 var1944)) ; Statement: $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert true)
(define-const var331 Int (hashCode/569135069 var3489)) ; Statement: $i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3479 Int (+ 481 var331)) ; Statement: $i13 = 481 + $i14 
(define-const var3305 Int (* 37 var3479)) ; Statement: $i0 = 37 * $i13 
(define-const var1547 Int (maxRows/-667021461 var1944)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var1547 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3262 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var2136 Int (+ var3305 var3262)) ; Statement: i16 = $i0 + $i15 
(define-const var2245 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var101 (Array Int var2262) (positionalParameterValues/-667021461 var1944)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var651 Int (getLength-Arr-var2262-1 var101)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var2245 var651)) ; Cond: i17 >= $i18 
(define-const var3579 Int (* 37 var2136)) ; Statement: $i1 = 37 * i16 
(define-const var3495 var2657 (namedParameters/-667021461 var1944)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3495 null-var2657))) ; Cond: $r5 != null 
(define-const var3828 var2657 (namedParameters/-667021461 var1944)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var3008 Int (var2657_hashCode/1768810987 var3828)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1769 Int (+ var3579 var3008)) ; Statement: $i11 = $i1 + $i20 
(define-const var1246 Int (* 37 var1769)) ; Statement: $i2 = 37 * $i11 
(define-const var25 var3372 (filterKeys/-667021461 var1944)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var25 null-var3372))) ; Cond: $r7 != null 
(define-const var3461 var3372 (filterKeys/-667021461 var1944)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var832 Int (var3372_hashCode/539623333 var3461)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1937 Int (+ var1246 var832)) ; Statement: $i10 = $i2 + $i21 
(define-const var253 Int (* 37 var1937)) ; Statement: $i3 = 37 * $i10 
(define-const var1214 var608 (customTransformer/-667021461 var1944)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var1214 null-var608))) ; Cond: $r9 != null 
(define-const var2646 var608 (customTransformer/-667021461 var1944)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var3655 Int (hashCode/1497633159 var2646)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var235 Int (+ var253 var3655)) ; Statement: $i9 = $i3 + $i22 
(define-const var1250 Int (* 37 var235)) ; Statement: $i4 = 37 * $i9 
(define-const var2089 String (tenantIdentifier/-667021461 var1944)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (= var2089 null-String))) ; Cond: $r11 != null 
(define-const var3554 String (tenantIdentifier/-667021461 var1944)) ; Statement: $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert true)
(define-const var5 Int (hashCode/-467973558 var3554)) ; Statement: $i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2648 Int (+ var1250 var5)) ; Statement: $i7 = $i4 + $i23 
(define-const var1159 Int (* 37 var2648)) ; Statement: $i6 = 37 * $i7 
(define-const var1184 String (sqlQueryString/-667021461 var1944)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var3284 Int (hashCode/-467973558 var1184)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var3954 Int (+ var1159 var3284)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var2262-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2657_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var3372_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String)}
; {var38=org.hibernate.cache.spi.QueryKey, var1944=r0, var3330=$r1, var3489=$r2, var331=$i14, var3479=$i13, var3305=$i0, var1547=$r3, var3262=$i15, var2136=i16, var2245=i17, var2262=java.lang.Object, var101=$r20, var651=$i18, var3579=$i1, var2657=java.util.Map, var3495=$r5, var3828=$r6, var3008=$i20, var1769=$i11, var1246=$i2, var3372=java.util.Set, var25=$r7, var3461=$r8, var832=$i21, var1937=$i10, var253=$i3, var608=org.hibernate.transform.CacheableResultTransformer, var1214=$r9, var2646=$r10, var3655=$i22, var235=$i9, var1250=$i4, var2089=$r11, var2521=null_type, var3554=$r12, var5=$i23, var2648=$i7, var1159=$i6, var1184=$r13, var3284=$i5, var3954=$i8}
; {org.hibernate.cache.spi.QueryKey=var38, r0=var1944, $r1=var3330, $r2=var3489, $i14=var331, $i13=var3479, $i0=var3305, $r3=var1547, $i15=var3262, i16=var2136, i17=var2245, java.lang.Object=var2262, $r20=var101, $i18=var651, $i1=var3579, java.util.Map=var2657, $r5=var3495, $r6=var3828, $i20=var3008, $i11=var1769, $i2=var1246, java.util.Set=var3372, $r7=var25, $r8=var3461, $i21=var832, $i10=var1937, $i3=var253, org.hibernate.transform.CacheableResultTransformer=var608, $r9=var1214, $r10=var2646, $i22=var3655, $i9=var235, $i4=var1250, $r11=var2089, null_type=var2521, $r12=var3554, $i23=var5, $i7=var2648, $i6=var1159, $r13=var1184, $i5=var3284, $i8=var3954}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = virtualinvoke $r2.<java.lang.Integer: int hashCode()>();	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = virtualinvoke $r12.<java.lang.String: int hashCode()>();	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15