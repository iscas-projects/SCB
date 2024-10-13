(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var1161 0)
(declare-sort var1183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1198225557 (var2713) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun pathRelativeToClosureBase/1198225557 (var2713) String)
(declare-fun provides/1198225557 (var2713) var1161)
(declare-fun hashCode/1337417431 (var1161) Int)
(declare-fun requires/1198225557 (var2713) var1161)
(declare-fun typeRequires/1198225557 (var2713) var1161)
(declare-fun loadFlags/1198225557 (var2713) var1183)
(declare-fun hashCode/-1247371579 (var1183) Int)
(declare-fun hasExternsAnnotation/1198225557 (var2713) Bool)
(declare-fun hasNoCompileAnnotation/1198225557 (var2713) Bool)
(declare-const null-var2713 var2713)
(declare-const var3157 var2713) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo 
(assert (not (= var3157 null-var2713)))
(define-const var3060 String (name/1198225557 var3157)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name> 
(assert true)
(define-const var859 Int (hashCode/-467973558 var3060)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1267 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var859)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var1506 Int (* var1267 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var10 String (pathRelativeToClosureBase/1198225557 var3157)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase> 
(assert true)
(define-const var1486 Int (hashCode/-467973558 var10)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1476 Int (bv2nat (bvxor ((_ int2bv 64) var1506) ((_ int2bv 64) var1486)))) ; Statement: i11 = i10 ^ $i1 
(define-const var3716 Int (* var1476 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3900 var1161 (provides/1198225557 var3157)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides> 
(assert true)
(define-const var3944 Int (hashCode/1337417431 var3900)) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2491 Int (bv2nat (bvxor ((_ int2bv 64) var3716) ((_ int2bv 64) var3944)))) ; Statement: i13 = i12 ^ $i2 
(define-const var3551 Int (* var2491 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var3585 var1161 (requires/1198225557 var3157)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires> 
(assert true)
(define-const var2369 Int (hashCode/1337417431 var3585)) ; Statement: $i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3972 Int (bv2nat (bvxor ((_ int2bv 64) var3551) ((_ int2bv 64) var2369)))) ; Statement: i15 = i14 ^ $i3 
(define-const var841 Int (* var3972 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var1738 var1161 (typeRequires/1198225557 var3157)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires> 
(assert true)
(define-const var944 Int (hashCode/1337417431 var1738)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3559 Int (bv2nat (bvxor ((_ int2bv 64) var841) ((_ int2bv 64) var944)))) ; Statement: i17 = i16 ^ $i4 
(define-const var1087 Int (* var3559 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var1963 var1183 (loadFlags/1198225557 var3157)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var2268 Int (hashCode/-1247371579 var1963)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var74 Int (bv2nat (bvxor ((_ int2bv 64) var1087) ((_ int2bv 64) var2268)))) ; Statement: i19 = i18 ^ $i5 
(define-const var692 Int (* var74 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var2766 Bool (hasExternsAnnotation/1198225557 var3157)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation> 
 ; Statement: if $z0 == 0 goto $s21 = 1237 
(assert (= (ite var2766 1 0) 0)) ; Cond: $z0 == 0 
(define-const var624 Int 1237) ; Statement: $s21 = 1237 
(assert true) ; Non Conditional
(define-const var427 Int (bv2nat (bvxor ((_ int2bv 64) var692) ((_ int2bv 64) var624)))) ; Statement: $i7 = i20 ^ $s21 
(define-const var1145 Int (* var427 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var68 Bool (hasNoCompileAnnotation/1198225557 var3157)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation> 
 ; Statement: if $z1 == 0 goto $s22 = 1237 
(assert (= (ite var68 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1985 Int 1237) ; Statement: $s22 = 1237 
(assert true) ; Non Conditional
(define-const var3679 Int (bv2nat (bvxor ((_ int2bv 64) var1145) ((_ int2bv 64) var1985)))) ; Statement: $i6 = $i8 ^ $s22 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), pathRelativeToClosureBase/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), provides/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), requires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), typeRequires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), loadFlags/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), hasExternsAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean), hasNoCompileAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean)}
; {var2713=com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo, var3157=r0, var3060=$r1, var859=$i0, var1267=i9, var1506=i10, var10=$r2, var1486=$i1, var1476=i11, var3716=i12, var1161=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3900=$r3, var3944=$i2, var2491=i13, var3551=i14, var3585=$r4, var2369=$i3, var3972=i15, var841=i16, var1738=$r5, var944=$i4, var3559=i17, var1087=i18, var1183=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1963=$r6, var2268=$i5, var74=i19, var692=i20, var2766=$z0, var624=$s21, var427=$i7, var1145=$i8, var68=$z1, var1985=$s22, var3679=$i6}
; {com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo=var2713, r0=var3157, $r1=var3060, $i0=var859, i9=var1267, i10=var1506, $r2=var10, $i1=var1486, i11=var1476, i12=var3716, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1161, $r3=var3900, $i2=var3944, i13=var2491, i14=var3551, $r4=var3585, $i3=var2369, i15=var3972, i16=var841, $r5=var1738, $i4=var944, i17=var3559, i18=var1087, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1183, $r6=var1963, $i5=var2268, i19=var74, i20=var692, $z0=var2766, $s21=var624, $i7=var427, $i8=var1145, $z1=var68, $s22=var1985, $i6=var3679}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires>;	$i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation>;	if $z0 == 0 goto $s21 = 1237;	$s21 = 1237;	$i7 = i20 ^ $s21;	$i8 = $i7 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation>;	if $z1 == 0 goto $s22 = 1237;	$s22 = 1237;	$i6 = $i8 ^ $s22;	return $i6
;block_num 5