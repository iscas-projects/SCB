(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3470 0)
(declare-sort var1632 0)
(declare-sort var2612 0)
(declare-sort var2295 0)
(declare-sort var2899 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun firstRow/-667021461 (var3470) Int)
(declare-fun maxRows/-667021461 (var3470) Int)
(declare-fun positionalParameterValues/-667021461 (var3470) (Array Int var1632))
(declare-fun getLength-Arr-var1632-1 ((Array Int var1632)) Int)
(declare-fun namedParameters/-667021461 (var3470) var2612)
(declare-fun var2612_hashCode/1768810987 (var2612) Int)
(declare-fun filterKeys/-667021461 (var3470) var2295)
(declare-fun customTransformer/-667021461 (var3470) var2899)
(declare-fun hashCode/1497633159 (var2899) Int)
(declare-fun tenantIdentifier/-667021461 (var3470) String)
(declare-fun sqlQueryString/-667021461 (var3470) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3470 var3470)
(declare-const null-Int Int)
(declare-const null-var2612 var2612)
(declare-const null-var2295 var2295)
(declare-const null-var2899 var2899)
(declare-const null-String String)
(declare-const var2095 var3470) ; Statement: r0 := @this: org.hibernate.cache.spi.QueryKey 
(assert (not (= var2095 null-var3470)))
(define-const var316 Int (firstRow/-667021461 var2095)) ; Statement: $r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow> 
(assert (not (not (= var316 null-Int)))) ; Negate: Cond: $r1 != null  
(define-const var1699 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i13 = 481 + $i14] 
(assert true) ; Non Conditional
(define-const var597 Int (+ 481 var1699)) ; Statement: $i13 = 481 + $i14 
(define-const var1132 Int (* 37 var597)) ; Statement: $i0 = 37 * $i13 
(define-const var500 Int (maxRows/-667021461 var2095)) ; Statement: $r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows> 
(assert (not (not (= var500 null-Int)))) ; Negate: Cond: $r3 != null  
(define-const var3794 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= i16 = $i0 + $i15] 
(assert true) ; Non Conditional
(define-const var1927 Int (+ var1132 var3794)) ; Statement: i16 = $i0 + $i15 
(define-const var752 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var205 (Array Int var1632) (positionalParameterValues/-667021461 var2095)) ; Statement: $r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues> 
(define-const var2219 Int (getLength-Arr-var1632-1 var205)) ; Statement: $i18 = lengthof $r20 
 ; Statement: if i17 >= $i18 goto $i1 = 37 * i16 
(assert (>= var752 var2219)) ; Cond: i17 >= $i18 
(define-const var1844 Int (* 37 var1927)) ; Statement: $i1 = 37 * i16 
(define-const var3484 var2612 (namedParameters/-667021461 var2095)) ; Statement: $r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(assert (not (= var3484 null-var2612))) ; Cond: $r5 != null 
(define-const var3537 var2612 (namedParameters/-667021461 var2095)) ; Statement: $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters> 
(define-const var2131 Int (var2612_hashCode/1768810987 var3537)) ; Statement: $i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2153 Int (+ var1844 var2131)) ; Statement: $i11 = $i1 + $i20 
(define-const var3729 Int (* 37 var2153)) ; Statement: $i2 = 37 * $i11 
(define-const var1357 var2295 (filterKeys/-667021461 var2095)) ; Statement: $r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
 ; Statement: if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys> 
(assert (not (not (= var1357 null-var2295)))) ; Negate: Cond: $r7 != null  
(define-const var340 Int 0) ; Statement: $i21 = 0 
 ; Statement: goto [?= $i10 = $i2 + $i21] 
(assert true) ; Non Conditional
(define-const var1851 Int (+ var3729 var340)) ; Statement: $i10 = $i2 + $i21 
(define-const var581 Int (* 37 var1851)) ; Statement: $i3 = 37 * $i10 
(define-const var3848 var2899 (customTransformer/-667021461 var2095)) ; Statement: $r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
 ; Statement: if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert (not (= var3848 null-var2899))) ; Cond: $r9 != null 
(define-const var960 var2899 (customTransformer/-667021461 var2095)) ; Statement: $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer> 
(assert true)
(define-const var183 Int (hashCode/1497633159 var960)) ; Statement: $i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3255 Int (+ var581 var183)) ; Statement: $i9 = $i3 + $i22 
(define-const var447 Int (* 37 var3255)) ; Statement: $i4 = 37 * $i9 
(define-const var3985 String (tenantIdentifier/-667021461 var2095)) ; Statement: $r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
 ; Statement: if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier> 
(assert (not (not (= var3985 null-String)))) ; Negate: Cond: $r11 != null  
(define-const var3442 Int 0) ; Statement: $i23 = 0 
 ; Statement: goto [?= $i7 = $i4 + $i23] 
(assert true) ; Non Conditional
(define-const var1307 Int (+ var447 var3442)) ; Statement: $i7 = $i4 + $i23 
(define-const var3197 Int (* 37 var1307)) ; Statement: $i6 = 37 * $i7 
(define-const var1026 String (sqlQueryString/-667021461 var2095)) ; Statement: $r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString> 
(assert true)
(define-const var1907 Int (hashCode/-467973558 var1026)) ; Statement: $i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>() 
(define-const var2644 Int (+ var3197 var1907)) ; Statement: $i8 = $i6 + $i5 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {firstRow/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), maxRows/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Integer), positionalParameterValues/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.Object[]), getLength-Arr-var1632-1=([java.lang.Object[]], int), namedParameters/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Map), var2612_hashCode/1768810987=([java.util.Map], int), filterKeys/-667021461=([org.hibernate.cache.spi.QueryKey], java.util.Set), customTransformer/-667021461=([org.hibernate.cache.spi.QueryKey], org.hibernate.transform.CacheableResultTransformer), hashCode/1497633159=([org.hibernate.transform.CacheableResultTransformer], int), tenantIdentifier/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), sqlQueryString/-667021461=([org.hibernate.cache.spi.QueryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3470=org.hibernate.cache.spi.QueryKey, var2095=r0, var316=$r1, var1699=$i14, var597=$i13, var1132=$i0, var500=$r3, var3794=$i15, var1927=i16, var752=i17, var1632=java.lang.Object, var205=$r20, var2219=$i18, var1844=$i1, var2612=java.util.Map, var3484=$r5, var3537=$r6, var2131=$i20, var2153=$i11, var3729=$i2, var2295=java.util.Set, var1357=$r7, var340=$i21, var1851=$i10, var581=$i3, var2899=org.hibernate.transform.CacheableResultTransformer, var3848=$r9, var960=$r10, var183=$i22, var3255=$i9, var447=$i4, var3985=$r11, var2132=null_type, var3442=$i23, var1307=$i7, var3197=$i6, var1026=$r13, var1907=$i5, var2644=$i8}
; {org.hibernate.cache.spi.QueryKey=var3470, r0=var2095, $r1=var316, $i14=var1699, $i13=var597, $i0=var1132, $r3=var500, $i15=var3794, i16=var1927, i17=var752, java.lang.Object=var1632, $r20=var205, $i18=var2219, $i1=var1844, java.util.Map=var2612, $r5=var3484, $r6=var3537, $i20=var2131, $i11=var2153, $i2=var3729, java.util.Set=var2295, $r7=var1357, $i21=var340, $i10=var1851, $i3=var581, org.hibernate.transform.CacheableResultTransformer=var2899, $r9=var3848, $r10=var960, $i22=var183, $i9=var3255, $i4=var447, $r11=var3985, null_type=var2132, $i23=var3442, $i7=var1307, $i6=var3197, $r13=var1026, $i5=var1907, $i8=var2644}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.QueryKey;	$r1 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	if $r1 != null goto $r2 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer firstRow>;	$i14 = 0;	goto [?= $i13 = 481 + $i14];	$i13 = 481 + $i14;	$i0 = 37 * $i13;	$r3 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	if $r3 != null goto $r4 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Integer maxRows>;	$i15 = 0;	goto [?= i16 = $i0 + $i15];	i16 = $i0 + $i15;	i17 = 0;	$r20 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.Object[] positionalParameterValues>;	$i18 = lengthof $r20;	if i17 >= $i18 goto $i1 = 37 * i16;	$i1 = 37 * i16;	$r5 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	if $r5 != null goto $r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$r6 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Map namedParameters>;	$i20 = interfaceinvoke $r6.<java.util.Map: int hashCode()>();	$i11 = $i1 + $i20;	$i2 = 37 * $i11;	$r7 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	if $r7 != null goto $r8 = r0.<org.hibernate.cache.spi.QueryKey: java.util.Set filterKeys>;	$i21 = 0;	goto [?= $i10 = $i2 + $i21];	$i10 = $i2 + $i21;	$i3 = 37 * $i10;	$r9 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	if $r9 != null goto $r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$r10 = r0.<org.hibernate.cache.spi.QueryKey: org.hibernate.transform.CacheableResultTransformer customTransformer>;	$i22 = virtualinvoke $r10.<org.hibernate.transform.CacheableResultTransformer: int hashCode()>();	$i9 = $i3 + $i22;	$i4 = 37 * $i9;	$r11 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	if $r11 != null goto $r12 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String tenantIdentifier>;	$i23 = 0;	goto [?= $i7 = $i4 + $i23];	$i7 = $i4 + $i23;	$i6 = 37 * $i7;	$r13 = r0.<org.hibernate.cache.spi.QueryKey: java.lang.String sqlQueryString>;	$i5 = virtualinvoke $r13.<java.lang.String: int hashCode()>();	$i8 = $i6 + $i5;	return $i8
;block_num 15