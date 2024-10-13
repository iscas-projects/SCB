(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var2154 0)
(declare-sort var2472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1198225557 (var3087) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun pathRelativeToClosureBase/1198225557 (var3087) String)
(declare-fun provides/1198225557 (var3087) var2154)
(declare-fun hashCode/1337417431 (var2154) Int)
(declare-fun requires/1198225557 (var3087) var2154)
(declare-fun typeRequires/1198225557 (var3087) var2154)
(declare-fun loadFlags/1198225557 (var3087) var2472)
(declare-fun hashCode/-1247371579 (var2472) Int)
(declare-fun hasExternsAnnotation/1198225557 (var3087) Bool)
(declare-fun hasNoCompileAnnotation/1198225557 (var3087) Bool)
(declare-const null-var3087 var3087)
(declare-const var286 var3087) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo 
(assert (not (= var286 null-var3087)))
(define-const var2730 String (name/1198225557 var286)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name> 
(assert true)
(define-const var3758 Int (hashCode/-467973558 var2730)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var852 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3758)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var2124 Int (* var852 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var184 String (pathRelativeToClosureBase/1198225557 var286)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase> 
(assert true)
(define-const var681 Int (hashCode/-467973558 var184)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1327 Int (bv2nat (bvxor ((_ int2bv 64) var2124) ((_ int2bv 64) var681)))) ; Statement: i11 = i10 ^ $i1 
(define-const var921 Int (* var1327 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var37 var2154 (provides/1198225557 var286)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides> 
(assert true)
(define-const var3760 Int (hashCode/1337417431 var37)) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2174 Int (bv2nat (bvxor ((_ int2bv 64) var921) ((_ int2bv 64) var3760)))) ; Statement: i13 = i12 ^ $i2 
(define-const var1246 Int (* var2174 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var3287 var2154 (requires/1198225557 var286)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires> 
(assert true)
(define-const var2981 Int (hashCode/1337417431 var3287)) ; Statement: $i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1398 Int (bv2nat (bvxor ((_ int2bv 64) var1246) ((_ int2bv 64) var2981)))) ; Statement: i15 = i14 ^ $i3 
(define-const var3032 Int (* var1398 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var3296 var2154 (typeRequires/1198225557 var286)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires> 
(assert true)
(define-const var795 Int (hashCode/1337417431 var3296)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1826 Int (bv2nat (bvxor ((_ int2bv 64) var3032) ((_ int2bv 64) var795)))) ; Statement: i17 = i16 ^ $i4 
(define-const var123 Int (* var1826 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var2166 var2472 (loadFlags/1198225557 var286)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var1474 Int (hashCode/-1247371579 var2166)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var560 Int (bv2nat (bvxor ((_ int2bv 64) var123) ((_ int2bv 64) var1474)))) ; Statement: i19 = i18 ^ $i5 
(define-const var3083 Int (* var560 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var3214 Bool (hasExternsAnnotation/1198225557 var286)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation> 
 ; Statement: if $z0 == 0 goto $s21 = 1237 
(assert (= (ite var3214 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3334 Int 1237) ; Statement: $s21 = 1237 
(assert true) ; Non Conditional
(define-const var2892 Int (bv2nat (bvxor ((_ int2bv 64) var3083) ((_ int2bv 64) var3334)))) ; Statement: $i7 = i20 ^ $s21 
(define-const var1831 Int (* var2892 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1783 Bool (hasNoCompileAnnotation/1198225557 var286)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation> 
 ; Statement: if $z1 == 0 goto $s22 = 1237 
(assert (not (= (ite var1783 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3383 Int 1231) ; Statement: $s22 = 1231 
 ; Statement: goto [?= $i6 = $i8 ^ $s22] 
(assert true) ; Non Conditional
(define-const var587 Int (bv2nat (bvxor ((_ int2bv 64) var1831) ((_ int2bv 64) var3383)))) ; Statement: $i6 = $i8 ^ $s22 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), pathRelativeToClosureBase/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), provides/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), requires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), typeRequires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), loadFlags/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), hasExternsAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean), hasNoCompileAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean)}
; {var3087=com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo, var286=r0, var2730=$r1, var3758=$i0, var852=i9, var2124=i10, var184=$r2, var681=$i1, var1327=i11, var921=i12, var2154=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var37=$r3, var3760=$i2, var2174=i13, var1246=i14, var3287=$r4, var2981=$i3, var1398=i15, var3032=i16, var3296=$r5, var795=$i4, var1826=i17, var123=i18, var2472=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2166=$r6, var1474=$i5, var560=i19, var3083=i20, var3214=$z0, var3334=$s21, var2892=$i7, var1831=$i8, var1783=$z1, var3383=$s22, var587=$i6}
; {com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo=var3087, r0=var286, $r1=var2730, $i0=var3758, i9=var852, i10=var2124, $r2=var184, $i1=var681, i11=var1327, i12=var921, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2154, $r3=var37, $i2=var3760, i13=var2174, i14=var1246, $r4=var3287, $i3=var2981, i15=var1398, i16=var3032, $r5=var3296, $i4=var795, i17=var1826, i18=var123, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2472, $r6=var2166, $i5=var1474, i19=var560, i20=var3083, $z0=var3214, $s21=var3334, $i7=var2892, $i8=var1831, $z1=var1783, $s22=var3383, $i6=var587}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires>;	$i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation>;	if $z0 == 0 goto $s21 = 1237;	$s21 = 1237;	$i7 = i20 ^ $s21;	$i8 = $i7 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation>;	if $z1 == 0 goto $s22 = 1237;	$s22 = 1231;	goto [?= $i6 = $i8 ^ $s22];	$i6 = $i8 ^ $s22;	return $i6
;block_num 5