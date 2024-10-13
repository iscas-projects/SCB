(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var1459 0)
(declare-sort var1209 0)
(declare-sort var2474 0)
(declare-sort var3438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun path/124795399 (var3811) var1459)
(declare-fun var1459_hashCode/-1502210594 (var1459) Int)
(declare-fun sourceMap/124795399 (var3811) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun sourceUrl/124795399 (var3811) String)
(declare-fun sourceMappingUrl/124795399 (var3811) String)
(declare-fun runtimes/124795399 (var3811) var1209)
(declare-fun hashCode/1818408063 (var1209) Int)
(declare-fun loadFlags/124795399 (var3811) var2474)
(declare-fun hashCode/-1247371579 (var2474) Int)
(declare-fun estimatedSize/124795399 (var3811) Int)
(declare-fun codeSupplier/124795399 (var3811) var3438)
(declare-fun hashCode/-1495969895 (var3438) Int)
(declare-fun originalCodeSupplier/124795399 (var3811) var3438)
(declare-const null-var3811 var3811)
(declare-const null-var3438 var3438)
(declare-const var3900 var3811) ; Statement: r0 := @this: com.google.javascript.jscomp.bundle.AutoValue_Source 
(assert (not (= var3900 null-var3811)))
(define-const var2091 var1459 (path/124795399 var3900)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.nio.file.Path path> 
(define-const var2652 Int (var1459_hashCode/-1502210594 var2091)) ; Statement: $i0 = interfaceinvoke $r1.<java.nio.file.Path: int hashCode()>() 
(define-const var1777 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2652)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var2563 Int (* var1777 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var2528 String (sourceMap/124795399 var3900)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMap> 
(assert true)
(define-const var2905 Int (hashCode/-467973558 var2528)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2771 Int (bv2nat (bvxor ((_ int2bv 64) var2563) ((_ int2bv 64) var2905)))) ; Statement: i11 = i10 ^ $i1 
(define-const var2957 Int (* var2771 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var344 String (sourceUrl/124795399 var3900)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceUrl> 
(assert true)
(define-const var2052 Int (hashCode/-467973558 var344)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var340 Int (bv2nat (bvxor ((_ int2bv 64) var2957) ((_ int2bv 64) var2052)))) ; Statement: i13 = i12 ^ $i2 
(define-const var557 Int (* var340 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2643 String (sourceMappingUrl/124795399 var3900)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMappingUrl> 
(assert true)
(define-const var2667 Int (hashCode/-467973558 var2643)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1626 Int (bv2nat (bvxor ((_ int2bv 64) var557) ((_ int2bv 64) var2667)))) ; Statement: i15 = i14 ^ $i3 
(define-const var35 Int (* var1626 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var1845 var1209 (runtimes/124795399 var3900)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet runtimes> 
(assert true)
(define-const var730 Int (hashCode/1818408063 var1845)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var260 Int (bv2nat (bvxor ((_ int2bv 64) var35) ((_ int2bv 64) var730)))) ; Statement: i17 = i16 ^ $i4 
(define-const var3219 Int (* var260 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var1753 var2474 (loadFlags/124795399 var3900)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var1545 Int (hashCode/-1247371579 var1753)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1365 Int (bv2nat (bvxor ((_ int2bv 64) var3219) ((_ int2bv 64) var1545)))) ; Statement: i19 = i18 ^ $i5 
(define-const var29 Int (* var1365 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var2858 Int (estimatedSize/124795399 var3900)) ; Statement: $i6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: int estimatedSize> 
(define-const var453 Int (bv2nat (bvxor ((_ int2bv 64) var29) ((_ int2bv 64) var2858)))) ; Statement: i21 = i20 ^ $i6 
(define-const var1393 Int (* var453 1000003)) ; Statement: i22 = i21 * 1000003 
(define-const var1804 var3438 (codeSupplier/124795399 var3900)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy codeSupplier> 
(assert true)
(define-const var529 Int (hashCode/-1495969895 var1804)) ; Statement: $i7 = virtualinvoke $r7.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>() 
(define-const var2343 Int (bv2nat (bvxor ((_ int2bv 64) var1393) ((_ int2bv 64) var529)))) ; Statement: i23 = i22 ^ $i7 
(define-const var521 Int (* var2343 1000003)) ; Statement: i24 = i23 * 1000003 
(define-const var110 var3438 (originalCodeSupplier/124795399 var3900)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier> 
(assert (not (= var110 null-var3438))) ; Cond: $r8 != null 
(define-const var780 var3438 (originalCodeSupplier/124795399 var3900)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier> 
(assert true)
(define-const var2173 Int (hashCode/-1495969895 var780)) ; Statement: $i25 = virtualinvoke $r9.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1105 Int (bv2nat (bvxor ((_ int2bv 64) var521) ((_ int2bv 64) var2173)))) ; Statement: $i8 = i24 ^ $i25 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {path/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.nio.file.Path), var1459_hashCode/-1502210594=([java.nio.file.Path], int), sourceMap/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), hashCode/-467973558=([java.lang.String], int), sourceUrl/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), sourceMappingUrl/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], java.lang.String), runtimes/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int), loadFlags/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), estimatedSize/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], int), codeSupplier/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.bundle.Source$Lazy), hashCode/-1495969895=([com.google.javascript.jscomp.bundle.Source$Lazy], int), originalCodeSupplier/124795399=([com.google.javascript.jscomp.bundle.AutoValue_Source], com.google.javascript.jscomp.bundle.Source$Lazy)}
; {var3811=com.google.javascript.jscomp.bundle.AutoValue_Source, var3900=r0, var1459=java.nio.file.Path, var2091=$r1, var2652=$i0, var1777=i9, var2563=i10, var2528=$r2, var2905=$i1, var2771=i11, var2957=i12, var344=$r3, var2052=$i2, var340=i13, var557=i14, var2643=$r4, var2667=$i3, var1626=i15, var35=i16, var1209=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1845=$r5, var730=$i4, var260=i17, var3219=i18, var2474=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1753=$r6, var1545=$i5, var1365=i19, var29=i20, var2858=$i6, var453=i21, var1393=i22, var3438=com.google.javascript.jscomp.bundle.Source$Lazy, var1804=$r7, var529=$i7, var2343=i23, var521=i24, var110=$r8, var780=$r9, var2173=$i25, var1105=$i8}
; {com.google.javascript.jscomp.bundle.AutoValue_Source=var3811, r0=var3900, java.nio.file.Path=var1459, $r1=var2091, $i0=var2652, i9=var1777, i10=var2563, $r2=var2528, $i1=var2905, i11=var2771, i12=var2957, $r3=var344, $i2=var2052, i13=var340, i14=var557, $r4=var2643, $i3=var2667, i15=var1626, i16=var35, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1209, $r5=var1845, $i4=var730, i17=var260, i18=var3219, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2474, $r6=var1753, $i5=var1545, i19=var1365, i20=var29, $i6=var2858, i21=var453, i22=var1393, com.google.javascript.jscomp.bundle.Source$Lazy=var3438, $r7=var1804, $i7=var529, i23=var2343, i24=var521, $r8=var110, $r9=var780, $i25=var2173, $i8=var1105}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.bundle.AutoValue_Source;	$r1 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.nio.file.Path path>;	$i0 = interfaceinvoke $r1.<java.nio.file.Path: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMap>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceUrl>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: java.lang.String sourceMappingUrl>;	$i3 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet runtimes>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$i6 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: int estimatedSize>;	i21 = i20 ^ $i6;	i22 = i21 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy codeSupplier>;	$i7 = virtualinvoke $r7.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>();	i23 = i22 ^ $i7;	i24 = i23 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier>;	$r9 = r0.<com.google.javascript.jscomp.bundle.AutoValue_Source: com.google.javascript.jscomp.bundle.Source$Lazy originalCodeSupplier>;	$i25 = virtualinvoke $r9.<com.google.javascript.jscomp.bundle.Source$Lazy: int hashCode()>();	$i8 = i24 ^ $i25;	return $i8
;block_num 3