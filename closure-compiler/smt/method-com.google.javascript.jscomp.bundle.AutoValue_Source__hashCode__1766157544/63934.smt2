(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3350 0)
(declare-sort var41 0)
(declare-sort var3790 0)
(declare-sort var652 0)
(declare-sort var1588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/124795399 (var3350) var41)
(declare-fun var41_hashCode/-1502210594 (var41) Int)
(declare-fun sourceMap/124795399 (var3350) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceUrl/124795399 (var3350) String)
(declare-fun sourceMappingUrl/124795399 (var3350) String)
(declare-fun runtimes/124795399 (var3350) var3790)
(declare-fun hashCode/1818408063 (var3790) Int)
(declare-fun loadFlags/124795399 (var3350) var652)
(declare-fun hashCode/-1247371579 (var652) Int)
(declare-fun estimatedSize/124795399 (var3350) Int)
(declare-fun codeSupplier/124795399 (var3350) var1588)
(declare-fun hashCode/-1495969895 (var1588) Int)
(declare-fun originalCodeSupplier/124795399 (var3350) var1588)
(declare-const null-var3350 var3350)
(declare-const null-var1588 var1588)
(declare-const var1192 var3350) ; Statement: r0 := @this: com.google.javascript.jscomp.bundle.AutoValue_Source 
(assert (not (= var1192 null-var3350)))
(define-const var523 var41 (path/124795399 var1192)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.nio.file.Path path> 
(define-const var3337 Int (var41_hashCode/-1502210594 var523)) ; Statement: $i0 = interfaceinvoke $r1.<java.nio.file.Path: int hashCode()>() 
(define-const var1205 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3337)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var2596 Int (* var1205 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var3177 String (sourceMap/124795399 var1192)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMap> 
(assert true)
(define-const var2854 Int (hashCode/-467973558 var3177)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1643 Int (bv2nat (bvxor ((_ int2bv 64) var2596) ((_ int2bv 64) var2854)))) ; Statement: i11 = i10 ^ $i1 
(define-const var1709 Int (* var1643 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var739 String (sourceUrl/124795399 var1192)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceUrl> 
(assert true)
(define-const var3826 Int (hashCode/-467973558 var739)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var190 Int (bv2nat (bvxor ((_ int2bv 64) var1709) ((_ int2bv 64) var3826)))) ; Statement: i13 = i12 ^ $i2 
(define-const var1505 Int (* var190 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var3795 String (sourceMappingUrl/124795399 var1192)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMappingUrl> 
(assert true)
(define-const var3919 Int (hashCode/-467973558 var3795)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1875 Int (bv2nat (bvxor ((_ int2bv 64) var1505) ((_ int2bv 64) var3919)))) ; Statement: i15 = i14 ^ $i3 
(define-const var3193 Int (* var1875 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var768 var3790 (runtimes/124795399 var1192)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet runtimes> 
(assert true)
(define-const var2045 Int (hashCode/1818408063 var768)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1465 Int (bv2nat (bvxor ((_ int2bv 64) var3193) ((_ int2bv 64) var2045)))) ; Statement: i17 = i16 ^ $i4 
(define-const var3444 Int (* var1465 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var1602 var652 (loadFlags/124795399 var1192)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var245 Int (hashCode/-1247371579 var1602)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3898 Int (bv2nat (bvxor ((_ int2bv 64) var3444) ((_ int2bv 64) var245)))) ; Statement: i19 = i18 ^ $i5 
(define-const var790 Int (* var3898 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var2103 Int (estimatedSize/124795399 var1192)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: int estimatedSize> 
(define-const var3143 Int (bv2nat (bvxor ((_ int2bv 64) var790) ((_ int2bv 64) var2103)))) ; Statement: i21 = i20 ^ $i6 
(define-const var2084 Int (* var3143 1000003)) ; Statement: i22 = i21 * 1000003 
(define-const var1318 var1588 (codeSupplier/124795399 var1192)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy codeSupplier> 
(assert true)
(define-const var2613 Int (hashCode/-1495969895 var1318)) ; Statement: $i7 = virtualinvoke $r7.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>() 
(define-const var536 Int (bv2nat (bvxor ((_ int2bv 64) var2084) ((_ int2bv 64) var2613)))) ; Statement: i23 = i22 ^ $i7 
(define-const var388 Int (* var536 1000003)) ; Statement: i24 = i23 * 1000003 
(define-const var3873 var1588 (originalCodeSupplier/124795399 var1192)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier> 
(assert (not (not (= var3873 null-var1588)))) ; Negate: Cond: $r8 != null  
(define-const var1543 Int 0) ; Statement: $i25 = 0 
 ; Statement: goto [?= $i8 = i24 ^ $i25] 
(assert true) ; Non Conditional
(define-const var660 Int (bv2nat (bvxor ((_ int2bv 64) var388) ((_ int2bv 64) var1543)))) ; Statement: $i8 = i24 ^ $i25 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {path/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.nio.file.Path), var41_hashCode/-1502210594=([java.nio.file.Path], int), sourceMap/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceUrl/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), sourceMappingUrl/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), runtimes/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int), loadFlags/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), estimatedSize/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], int), codeSupplier/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.bundle.Source$Lazy), hashCode/-1495969895=([com.google.javascript.jscomp.bundle.Source$Lazy], int), originalCodeSupplier/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.bundle.Source$Lazy)}
; {var3350=com.google.javascript.jscomp.bundle.AutoValue_Source, var1192=r0, var41=java.nio.file.Path, var523=$r1, var3337=$i0, var1205=i9, var2596=i10, var3177=$r2, var2854=$i1, var1643=i11, var1709=i12, var739=$r3, var3826=$i2, var190=i13, var1505=i14, var3795=$r4, var3919=$i3, var1875=i15, var3193=i16, var3790=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var768=$r5, var2045=$i4, var1465=i17, var3444=i18, var652=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1602=$r6, var245=$i5, var3898=i19, var790=i20, var2103=$i6, var3143=i21, var2084=i22, var1588=com.google.javascript.jscomp.bundle.Source$Lazy, var1318=$r7, var2613=$i7, var536=i23, var388=i24, var3873=$r8, var1543=$i25, var660=$i8}
; {com.google.javascript.jscomp.bundle.AutoValue_Source=var3350, r0=var1192, java.nio.file.Path=var41, $r1=var523, $i0=var3337, i9=var1205, i10=var2596, $r2=var3177, $i1=var2854, i11=var1643, i12=var1709, $r3=var739, $i2=var3826, i13=var190, i14=var1505, $r4=var3795, $i3=var3919, i15=var1875, i16=var3193, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3790, $r5=var768, $i4=var2045, i17=var1465, i18=var3444, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var652, $r6=var1602, $i5=var245, i19=var3898, i20=var790, $i6=var2103, i21=var3143, i22=var2084, com.google.javascript.jscomp.bundle.Source$Lazy=var1588, $r7=var1318, $i7=var2613, i23=var536, i24=var388, $r8=var3873, $i25=var1543, $i8=var660}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.bundle.AutoValue_Source;	$r1 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.nio.file.Path path>;	$i0 = interfaceinvoke $r1.<java.nio.file.Path: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMap>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceUrl>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMappingUrl>;	$i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet runtimes>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$i6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: int estimatedSize>;	i21 = i20 ^ $i6;	i22 = i21 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy codeSupplier>;	$i7 = virtualinvoke $r7.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>();	i23 = i22 ^ $i7;	i24 = i23 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier>;	$i25 = 0;	goto [?= $i8 = i24 ^ $i25];	$i8 = i24 ^ $i25;	return $i8
;block_num 3