(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1888 0)
(declare-sort var3562 0)
(declare-sort var1477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1198225557 (var1888) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun pathRelativeToClosureBase/1198225557 (var1888) String)
(declare-fun provides/1198225557 (var1888) var3562)
(declare-fun hashCode/1337417431 (var3562) Int)
(declare-fun requires/1198225557 (var1888) var3562)
(declare-fun typeRequires/1198225557 (var1888) var3562)
(declare-fun loadFlags/1198225557 (var1888) var1477)
(declare-fun hashCode/-1247371579 (var1477) Int)
(declare-fun hasExternsAnnotation/1198225557 (var1888) Bool)
(declare-fun hasNoCompileAnnotation/1198225557 (var1888) Bool)
(declare-const null-var1888 var1888)
(declare-const var3907 var1888) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo 
(assert (not (= var3907 null-var1888)))
(define-const var2271 String (name/1198225557 var3907)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name> 
(assert true)
(define-const var3403 Int (hashCode/-467973558 var2271)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1373 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3403)))) ; Statement: i9 = 1000003 ^ $i0 
(define-const var1406 Int (* var1373 1000003)) ; Statement: i10 = i9 * 1000003 
(define-const var1161 String (pathRelativeToClosureBase/1198225557 var3907)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase> 
(assert true)
(define-const var2266 Int (hashCode/-467973558 var1161)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1109 Int (bv2nat (bvxor ((_ int2bv 64) var1406) ((_ int2bv 64) var2266)))) ; Statement: i11 = i10 ^ $i1 
(define-const var3708 Int (* var1109 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2425 var3562 (provides/1198225557 var3907)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides> 
(assert true)
(define-const var1661 Int (hashCode/1337417431 var2425)) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2705 Int (bv2nat (bvxor ((_ int2bv 64) var3708) ((_ int2bv 64) var1661)))) ; Statement: i13 = i12 ^ $i2 
(define-const var1457 Int (* var2705 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var1385 var3562 (requires/1198225557 var3907)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires> 
(assert true)
(define-const var3115 Int (hashCode/1337417431 var1385)) ; Statement: $i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1690 Int (bv2nat (bvxor ((_ int2bv 64) var1457) ((_ int2bv 64) var3115)))) ; Statement: i15 = i14 ^ $i3 
(define-const var2211 Int (* var1690 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var3661 var3562 (typeRequires/1198225557 var3907)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires> 
(assert true)
(define-const var1981 Int (hashCode/1337417431 var3661)) ; Statement: $i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var885 Int (bv2nat (bvxor ((_ int2bv 64) var2211) ((_ int2bv 64) var1981)))) ; Statement: i17 = i16 ^ $i4 
(define-const var3958 Int (* var885 1000003)) ; Statement: i18 = i17 * 1000003 
(define-const var3917 var1477 (loadFlags/1198225557 var3907)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags> 
(assert true)
(define-const var2647 Int (hashCode/-1247371579 var3917)) ; Statement: $i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2361 Int (bv2nat (bvxor ((_ int2bv 64) var3958) ((_ int2bv 64) var2647)))) ; Statement: i19 = i18 ^ $i5 
(define-const var2330 Int (* var2361 1000003)) ; Statement: i20 = i19 * 1000003 
(define-const var1382 Bool (hasExternsAnnotation/1198225557 var3907)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation> 
 ; Statement: if $z0 == 0 goto $s21 = 1237 
(assert (not (= (ite var1382 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3350 Int 1231) ; Statement: $s21 = 1231 
 ; Statement: goto [?= $i7 = i20 ^ $s21] 
(assert true) ; Non Conditional
(define-const var1610 Int (bv2nat (bvxor ((_ int2bv 64) var2330) ((_ int2bv 64) var3350)))) ; Statement: $i7 = i20 ^ $s21 
(define-const var2999 Int (* var1610 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var619 Bool (hasNoCompileAnnotation/1198225557 var3907)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation> 
 ; Statement: if $z1 == 0 goto $s22 = 1237 
(assert (not (= (ite var619 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1116 Int 1231) ; Statement: $s22 = 1231 
 ; Statement: goto [?= $i6 = $i8 ^ $s22] 
(assert true) ; Non Conditional
(define-const var1909 Int (bv2nat (bvxor ((_ int2bv 64) var2999) ((_ int2bv 64) var1116)))) ; Statement: $i6 = $i8 ^ $s22 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), pathRelativeToClosureBase/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], java.lang.String), provides/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), requires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), typeRequires/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), loadFlags/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), hasExternsAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean), hasNoCompileAnnotation/1198225557=([com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo], boolean)}
; {var1888=com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo, var3907=r0, var2271=$r1, var3403=$i0, var1373=i9, var1406=i10, var1161=$r2, var2266=$i1, var1109=i11, var3708=i12, var3562=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2425=$r3, var1661=$i2, var2705=i13, var1457=i14, var1385=$r4, var3115=$i3, var1690=i15, var2211=i16, var3661=$r5, var1981=$i4, var885=i17, var3958=i18, var1477=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3917=$r6, var2647=$i5, var2361=i19, var2330=i20, var1382=$z0, var3350=$s21, var1610=$i7, var2999=$i8, var619=$z1, var1116=$s22, var1909=$i6}
; {com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo=var1888, r0=var3907, $r1=var2271, $i0=var3403, i9=var1373, i10=var1406, $r2=var1161, $i1=var2266, i11=var1109, i12=var3708, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3562, $r3=var2425, $i2=var1661, i13=var2705, i14=var1457, $r4=var1385, $i3=var3115, i15=var1690, i16=var2211, $r5=var3661, $i4=var1981, i17=var885, i18=var3958, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1477, $r6=var3917, $i5=var2647, i19=var2361, i20=var2330, $z0=var1382, $s21=var3350, $i7=var1610, $i8=var2999, $z1=var619, $s22=var1116, $i6=var1909}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = 1000003 ^ $i0;	i10 = i9 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: java.lang.String pathRelativeToClosureBase>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i11 = i10 ^ $i1;	i12 = i11 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList provides>;	$i2 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i13 = i12 ^ $i2;	i14 = i13 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList requires>;	$i3 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i15 = i14 ^ $i3;	i16 = i15 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList typeRequires>;	$i4 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	i17 = i16 ^ $i4;	i18 = i17 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap loadFlags>;	$i5 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	i19 = i18 ^ $i5;	i20 = i19 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasExternsAnnotation>;	if $z0 == 0 goto $s21 = 1237;	$s21 = 1231;	goto [?= $i7 = i20 ^ $s21];	$i7 = i20 ^ $s21;	$i8 = $i7 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.deps.AutoValue_SimpleDependencyInfo: boolean hasNoCompileAnnotation>;	if $z1 == 0 goto $s22 = 1237;	$s22 = 1231;	goto [?= $i6 = $i8 ^ $s22];	$i6 = $i8 ^ $s22;	return $i6
;block_num 5