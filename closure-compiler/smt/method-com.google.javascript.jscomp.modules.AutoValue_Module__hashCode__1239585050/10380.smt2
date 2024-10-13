(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var568 0)
(declare-sort var34 0)
(declare-sort var3881 0)
(declare-sort var2645 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1886228621 (var845) var568)
(declare-fun hashCode/-1924871451 (var568) Int)
(declare-fun path/1886228621 (var845) var34)
(declare-fun hashCode/1739917532 (var3881) Int)
(declare-fun cast-from-var34-to-var3881 (var34) var3881)
(declare-fun namespace/1886228621 (var845) var2645)
(declare-fun hashCode/-1247371579 (var2645) Int)
(declare-fun boundNames/1886228621 (var845) var2645)
(declare-fun localNameToLocalExport/1886228621 (var845) var2645)
(declare-fun closureNamespace/1886228621 (var845) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var845 var845)
(declare-const null-var34 var34)
(declare-const null-String String)
(declare-const var2631 var845) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module 
(assert (not (= var2631 null-var845)))
(define-const var2600 var568 (metadata/1886228621 var2631)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var1271 Int (hashCode/-1924871451 var2600)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var1104 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1271)))) ; Statement: i13 = 1000003 ^ $i0 
(define-const var3030 Int (* var1104 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var1110 var34 (path/1886228621 var2631)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
(assert (not (= var1110 null-var34))) ; Cond: $r2 != null 
(define-const var3640 var34 (path/1886228621 var2631)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
(assert true)
(define-const var1224 Int (hashCode/1739917532 (cast-from-var34-to-var3881 var3640))) ; Statement: $i15 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3820 Int (bv2nat (bvxor ((_ int2bv 64) var3030) ((_ int2bv 64) var1224)))) ; Statement: $i5 = i14 ^ $i15 
(define-const var471 Int (* var3820 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var2718 var2645 (namespace/1886228621 var2631)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace> 
(assert true)
(define-const var3435 Int (hashCode/-1247371579 var2718)) ; Statement: $i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1952 Int (bv2nat (bvxor ((_ int2bv 64) var471) ((_ int2bv 64) var3435)))) ; Statement: $i7 = $i6 ^ $i1 
(define-const var3520 Int (* var1952 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2604 var2645 (boundNames/1886228621 var2631)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames> 
(assert true)
(define-const var1966 Int (hashCode/-1247371579 var2604)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2114 Int (bv2nat (bvxor ((_ int2bv 64) var3520) ((_ int2bv 64) var1966)))) ; Statement: $i9 = $i8 ^ $i2 
(define-const var2736 Int (* var2114 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var690 var2645 (localNameToLocalExport/1886228621 var2631)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport> 
(assert true)
(define-const var973 Int (hashCode/-1247371579 var690)) ; Statement: $i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var722 Int (bv2nat (bvxor ((_ int2bv 64) var2736) ((_ int2bv 64) var973)))) ; Statement: $i11 = $i10 ^ $i3 
(define-const var1821 Int (* var722 1000003)) ; Statement: $i12 = $i11 * 1000003 
(define-const var2972 String (closureNamespace/1886228621 var2631)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
 ; Statement: if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
(assert (not (= var2972 null-String))) ; Cond: $r7 != null 
(define-const var1122 String (closureNamespace/1886228621 var2631)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
(assert true)
(define-const var2579 Int (hashCode/-467973558 var1122)) ; Statement: $i16 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2617 Int (bv2nat (bvxor ((_ int2bv 64) var1821) ((_ int2bv 64) var2579)))) ; Statement: $i4 = $i12 ^ $i16 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), path/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), hashCode/1739917532=([java.lang.Object], int), cast-from-var34-to-var3881=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath], java.lang.Object), namespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), boundNames/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), localNameToLocalExport/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), closureNamespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var845=com.google.javascript.jscomp.modules.AutoValue_Module, var2631=r0, var568=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var2600=$r1, var1271=$i0, var1104=i13, var3030=i14, var34=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var1110=$r2, var3640=$r3, var3881=java.lang.Object, var1224=$i15, var3820=$i5, var471=$i6, var2645=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2718=$r4, var3435=$i1, var1952=$i7, var3520=$i8, var2604=$r5, var1966=$i2, var2114=$i9, var2736=$i10, var690=$r6, var973=$i3, var722=$i11, var1821=$i12, var2972=$r7, var592=null_type, var1122=$r8, var2579=$i16, var2617=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Module=var845, r0=var2631, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var568, $r1=var2600, $i0=var1271, i13=var1104, i14=var3030, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var34, $r2=var1110, $r3=var3640, java.lang.Object=var3881, $i15=var1224, $i5=var3820, $i6=var471, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2645, $r4=var2718, $i1=var3435, $i7=var1952, $i8=var3520, $r5=var2604, $i2=var1966, $i9=var2114, $i10=var2736, $r6=var690, $i3=var973, $i11=var722, $i12=var1821, $r7=var2972, null_type=var592, $r8=var1122, $i16=var2579, $i4=var2617}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i13 = 1000003 ^ $i0;	i14 = i13 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	$i15 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i5 = i14 ^ $i15;	$i6 = $i5 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace>;	$i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i7 = $i6 ^ $i1;	$i8 = $i7 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i9 = $i8 ^ $i2;	$i10 = $i9 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport>;	$i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i11 = $i10 ^ $i3;	$i12 = $i11 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	$i4 = $i12 ^ $i16;	return $i4
;block_num 5