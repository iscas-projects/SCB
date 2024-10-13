(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var981 0)
(declare-sort var3899 0)
(declare-sort var212 0)
(declare-sort var2082 0)
(declare-sort var1054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var164) Int)
(declare-fun maxRows/-667021461 (var164) Int)
(declare-fun hashCode/569135069 (Int) Int)
(declare-fun positionalParameterValues/-667021461 (var164) (Array Int var981))
(declare-fun getLength-Arr-var981-1 ((Array Int var981)) Int)
(declare-fun namedParameters/-667021461 (var164) var3899)
(declare-fun filterKeys/-667021461 (var164) var212)
(declare-fun var212_hashCode/539623333 (var212) Int)
(declare-fun customTransformer/-667021461 (var164) var2082)
(declare-fun hashCode/1497633159 (var2082) Int)
(declare-fun tenantIdentifier/-667021461 (var164) String)
(declare-fun sqlQueryString/-667021461 (var164) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var164 var164)
(declare-const null-Int Int)
(declare-const null-var3899 var3899)
(declare-const null-var212 var212)
(declare-const null-var2082 var2082)
(declare-const null-String String)
(declare-const var637 var164) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var637 null-var164)))
(define-const var3625 Int (firstRow/-667021461 var637)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var3625 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var48 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var2613 Int (+ 481 var48)) ; Statement: $i13 = 481 + $i14 
(define-const var2412 Int (* 37 var2613)) ; Statement: $i0 = 37 * $i13 
(define-const var67 Int (maxRows/-667021461 var637)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (= var67 null-Int))) ; Cond: $r3 != null 
(define-const var3577 Int (maxRows/-667021461 var637)) ; Statement: $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert true)
(define-const var3242 Int (hashCode/569135069 var3577)) ; Statement: $i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1452 Int (+ var2412 var3242)) ; Statement: i16 = $i0 + $i15 
(define-const var3050 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var570 (Array Int var981) (positionalParameterValues/-667021461 var637)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var749 Int (getLength-Arr-var981-1 var570)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var3050 var749)) ; Cond: i17 >= $i18 
(define-const var3777 Int (* 37 var1452)) ; Statement: $i1 = 37 * i16 
(define-const var1748 var3899 (namedParameters/-667021461 var637)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (not (= var1748 null-var3899)))) ; Negate: Cond: $r5 != null  
(define-const var3034 Int 0) ; Statement: $i20 = 0 
 ; Statement: goto [?= $i11 = $i1 + $i20] 
(assert true) ; Non Conditional
(define-const var3043 Int (+ var3777 var3034)) ; Statement: $i11 = $i1 + $i20 
(define-const var3090 Int (* 37 var3043)) ; Statement: $i2 = 37 * $i11 
(define-const var2349 var212 (filterKeys/-667021461 var637)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (= var2349 null-var212))) ; Cond: $r7 != null 
(define-const var778 var212 (filterKeys/-667021461 var637)) ; Statement: $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(define-const var1831 Int (var212_hashCode/539623333 var778)) ; Statement: $i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var331 Int (+ var3090 var1831)) ; Statement: $i10 = $i2 + $i21 
(define-const var3819 Int (* 37 var331)) ; Statement: $i3 = 37 * $i10 
(define-const var50 var2082 (customTransformer/-667021461 var637)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var50 null-var2082))) ; Cond: $r9 != null 
(define-const var2919 var2082 (customTransformer/-667021461 var637)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var1403 Int (hashCode/1497633159 var2919)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3642 Int (+ var3819 var1403)) ; Statement: $i9 = $i3 + $i22 
(define-const var3248 Int (* 37 var3642)) ; Statement: $i4 = 37 * $i9 
(define-const var1555 String (tenantIdentifier/-667021461 var637)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var1555 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var1529 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1674 Int (+ var3248 var1529)) ; Statement: $i7 = $i4 + $i23 
(define-const var3127 Int (* 37 var1674)) ; Statement: $i6 = 37 * $i7 
(define-const var3081 String (sqlQueryString/-667021461 var637)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var951 Int (hashCode/-467973558 var3081)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var606 Int (+ var3127 var951)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), hashCode/569135069=([java.lang.Integer], int), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var981-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), var212_hashCode/539623333=([java.util.Set], int), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var164=org.hibernate.cache.spi.QueryKey, var637=r0, var3625=$r1, var48=$i14, var2613=$i13, var2412=$i0, var67=$r3, var3577=$r4, var3242=$i15, var1452=i16, var3050=i17, var981=java.lang.Object, var570=$r20, var749=$i18, var3777=$i1, var3899=java.util.Map, var1748=$r5, var3034=$i20, var3043=$i11, var3090=$i2, var212=java.util.Set, var2349=$r7, var778=$r8, var1831=$i21, var331=$i10, var3819=$i3, var2082=org.hibernate.transform.CacheableResultTransformer, var50=$r9, var2919=$r10, var1403=$i22, var3642=$i9, var3248=$i4, var1555=$r11, var1054=null_type, var1529=$i23, var1674=$i7, var3127=$i6, var3081=$r13, var951=$i5, var606=$i8}
; {org.hibernate.cache.spi.QueryKey=var164, r0=var637, $r1=var3625, $i14=var48, $i13=var2613, $i0=var2412, $r3=var67, $r4=var3577, $i15=var3242, i16=var1452, i17=var3050, java.lang.Object=var981, $r20=var570, $i18=var749, $i1=var3777, java.util.Map=var3899, $r5=var1748, $i20=var3034, $i11=var3043, $i2=var3090, java.util.Set=var212, $r7=var2349, $r8=var778, $i21=var1831, $i10=var331, $i3=var3819, org.hibernate.transform.CacheableResultTransformer=var2082, $r9=var50, $r10=var2919, $i22=var1403, $i9=var3642, $i4=var3248, $r11=var1555, null_type=var1054, $i23=var1529, $i7=var1674, $i6=var3127, $r13=var3081, $i5=var951, $i8=var606}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = virtualinvoke $r4.<java.lang.Integer: int hashCode()>();	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = 0;	goto [?= $i11 = $i1 + $i20];	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = interfaceinvoke $r8.<java.util.Set: int hashCode()>();	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15