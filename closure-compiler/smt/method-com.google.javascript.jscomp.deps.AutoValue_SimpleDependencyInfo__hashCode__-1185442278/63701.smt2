(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var472 0)
(declare-sort var17 0)
(declare-sort var1504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1198225557 (var472) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun pathRelativeToClosureBase/1198225557 (var472) String)
(declare-fun provides/1198225557 (var472) var17)
(declare-fun hashCode/1337417431 (var17) Int)
(declare-fun requires/1198225557 (var472) var17)
(declare-fun typeRequires/1198225557 (var472) var17)
(declare-fun loadFlags/1198225557 (var472) var1504)
(declare-fun hashCode/-1247371579 (var1504) Int)
(declare-fun hasExternsAnnotation/1198225557 (var472) Bool)
(declare-fun hasNoCompileAnnotation/1198225557 (var472) Bool)
(declare-const null-var472 var472)
(declare-const var1250 var472) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo 
(assert (not (= var1250 null-var472)))
(define-const var27 String (name/1198225557 var1250)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name> 
(assert true)
(define-const var2827 Int (hashCode/-467973558 var27)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1750 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2827)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var1763 Int (* var1750 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var2272 String (pathRelativeToClosureBase/1198225557 var1250)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase> 
(assert true)
(define-const var2134 Int (hashCode/-467973558 var2272)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2844 Int (bv2nat (bvxor ((_ int2bv 64) var1763) ((_ int2bv 64) var2134)))) ; Statement: i11 = i10 ^ $i1 
(define-const var733 Int (* var2844 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var1089 var17 (provides/1198225557 var1250)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides> 
(assert true)
(define-const var1481 Int (hashCode/1337417431 var1089)) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3419 Int (bv2nat (bvxor ((_ int2bv 64) var733) ((_ int2bv 64) var1481)))) ; Statement: i13 = i12 ^ $i2 
(define-const var3803 Int (* var3419 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2993 var17 (requires/1198225557 var1250)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires> 
(assert true)
(define-const var2406 Int (hashCode/1337417431 var2993)) ; Statement: $i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1512 Int (bv2nat (bvxor ((_ int2bv 64) var3803) ((_ int2bv 64) var2406)))) ; Statement: i15 = i14 ^ $i3 
(define-const var3816 Int (* var1512 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var389 var17 (typeRequires/1198225557 var1250)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires> 
(assert true)
(define-const var2686 Int (hashCode/1337417431 var389)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var933 Int (bv2nat (bvxor ((_ int2bv 64) var3816) ((_ int2bv 64) var2686)))) ; Statement: i17 = i16 ^ $i4 
(define-const var649 Int (* var933 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var1603 var1504 (loadFlags/1198225557 var1250)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var2642 Int (hashCode/-1247371579 var1603)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3835 Int (bv2nat (bvxor ((_ int2bv 64) var649) ((_ int2bv 64) var2642)))) ; Statement: i19 = i18 ^ $i5 
(define-const var2029 Int (* var3835 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var2579 Bool (hasExternsAnnotation/1198225557 var1250)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation> 
 ; Statement: if $z0 == 0 goto $s21 = 1237 
(assert (not (= (ite var2579 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var107 Int 1231) ; Statement: $s21 = 1231 
 ; Statement: goto [?= $i7 = i20 ^ $s21] 
(assert true) ; Non Conditional
(define-const var3408 Int (bv2nat (bvxor ((_ int2bv 64) var2029) ((_ int2bv 64) var107)))) ; Statement: $i7 = i20 ^ $s21 
(define-const var669 Int (* var3408 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3381 Bool (hasNoCompileAnnotation/1198225557 var1250)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation> 
 ; Statement: if $z1 == 0 goto $s22 = 1237 
(assert (= (ite var3381 1 0) 0)) ; Cond: $z1 == 0 
(define-const var240 Int 1237) ; Statement: $s22 = 1237 
(assert true) ; Non Conditional
(define-const var106 Int (bv2nat (bvxor ((_ int2bv 64) var669) ((_ int2bv 64) var240)))) ; Statement: $i6 = $i8 ^ $s22 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), pathRelativeToClosureBase/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), provides/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), requires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), typeRequires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), loadFlags/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), hasExternsAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean), hasNoCompileAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean)}
; {var472=com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo, var1250=r0, var27=$r1, var2827=$i0, var1750=i9, var1763=i10, var2272=$r2, var2134=$i1, var2844=i11, var733=i12, var17=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1089=$r3, var1481=$i2, var3419=i13, var3803=i14, var2993=$r4, var2406=$i3, var1512=i15, var3816=i16, var389=$r5, var2686=$i4, var933=i17, var649=i18, var1504=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1603=$r6, var2642=$i5, var3835=i19, var2029=i20, var2579=$z0, var107=$s21, var3408=$i7, var669=$i8, var3381=$z1, var240=$s22, var106=$i6}
; {com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo=var472, r0=var1250, $r1=var27, $i0=var2827, i9=var1750, i10=var1763, $r2=var2272, $i1=var2134, i11=var2844, i12=var733, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var17, $r3=var1089, $i2=var1481, i13=var3419, i14=var3803, $r4=var2993, $i3=var2406, i15=var1512, i16=var3816, $r5=var389, $i4=var2686, i17=var933, i18=var649, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1504, $r6=var1603, $i5=var2642, i19=var3835, i20=var2029, $z0=var2579, $s21=var107, $i7=var3408, $i8=var669, $z1=var3381, $s22=var240, $i6=var106}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires>;	$i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation>;	if $z0 == 0 goto $s21 = 1237;	$s21 = 1231;	goto [?= $i7 = i20 ^ $s21];	$i7 = i20 ^ $s21;	$i8 = $i7 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation>;	if $z1 == 0 goto $s22 = 1237;	$s22 = 1237;	$i6 = $i8 ^ $s22;	return $i6
;block_num 5