(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var1258 0)
(declare-sort var3196 0)
(declare-sort var760 0)
(declare-sort var305 0)
(declare-sort var1931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1886228621 (var2453) var1258)
(declare-fun hashCode/-1924871451 (var1258) Int)
(declare-fun path/1886228621 (var2453) var3196)
(declare-fun hashCode/1739917532 (var760) Int)
(declare-fun cast-from-var3196-to-var760 (var3196) var760)
(declare-fun namespace/1886228621 (var2453) var305)
(declare-fun hashCode/-1247371579 (var305) Int)
(declare-fun boundNames/1886228621 (var2453) var305)
(declare-fun localNameToLocalExport/1886228621 (var2453) var305)
(declare-fun closureNamespace/1886228621 (var2453) String)
(declare-const null-var2453 var2453)
(declare-const null-var3196 var3196)
(declare-const null-String String)
(declare-const var350 var2453) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module 
(assert (not (= var350 null-var2453)))
(define-const var1564 var1258 (metadata/1886228621 var350)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var449 Int (hashCode/-1924871451 var1564)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var1924 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var449)))) ; Statement: i13 = 1000003 ^ $i0 
(define-const var61 Int (* var1924 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var3220 var3196 (path/1886228621 var350)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
(assert (not (= var3220 null-var3196))) ; Cond: $r2 != null 
(define-const var2576 var3196 (path/1886228621 var350)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
(assert true)
(define-const var319 Int (hashCode/1739917532 (cast-from-var3196-to-var760 var2576))) ; Statement: $i15 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1884 Int (bv2nat (bvxor ((_ int2bv 64) var61) ((_ int2bv 64) var319)))) ; Statement: $i5 = i14 ^ $i15 
(define-const var716 Int (* var1884 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var1509 var305 (namespace/1886228621 var350)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace> 
(assert true)
(define-const var475 Int (hashCode/-1247371579 var1509)) ; Statement: $i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3710 Int (bv2nat (bvxor ((_ int2bv 64) var716) ((_ int2bv 64) var475)))) ; Statement: $i7 = $i6 ^ $i1 
(define-const var756 Int (* var3710 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1698 var305 (boundNames/1886228621 var350)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames> 
(assert true)
(define-const var1786 Int (hashCode/-1247371579 var1698)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3509 Int (bv2nat (bvxor ((_ int2bv 64) var756) ((_ int2bv 64) var1786)))) ; Statement: $i9 = $i8 ^ $i2 
(define-const var1635 Int (* var3509 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var2409 var305 (localNameToLocalExport/1886228621 var350)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport> 
(assert true)
(define-const var3725 Int (hashCode/-1247371579 var2409)) ; Statement: $i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var398 Int (bv2nat (bvxor ((_ int2bv 64) var1635) ((_ int2bv 64) var3725)))) ; Statement: $i11 = $i10 ^ $i3 
(define-const var2929 Int (* var398 1000003)) ; Statement: $i12 = $i11 * 1000003 
(define-const var1405 String (closureNamespace/1886228621 var350)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
 ; Statement: if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
(assert (not (not (= var1405 null-String)))) ; Negate: Cond: $r7 != null  
(define-const var1906 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i4 = $i12 ^ $i16] 
(assert true) ; Non Conditional
(define-const var949 Int (bv2nat (bvxor ((_ int2bv 64) var2929) ((_ int2bv 64) var1906)))) ; Statement: $i4 = $i12 ^ $i16 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), path/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), hashCode/1739917532=([java.lang.Object], int), cast-from-var3196-to-var760=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath], java.lang.Object), namespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), boundNames/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), localNameToLocalExport/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), closureNamespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], java.lang.String)}
; {var2453=com.google.javascript.jscomp.modules.AutoValue_Module, var350=r0, var1258=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1564=$r1, var449=$i0, var1924=i13, var61=i14, var3196=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var3220=$r2, var2576=$r3, var760=java.lang.Object, var319=$i15, var1884=$i5, var716=$i6, var305=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1509=$r4, var475=$i1, var3710=$i7, var756=$i8, var1698=$r5, var1786=$i2, var3509=$i9, var1635=$i10, var2409=$r6, var3725=$i3, var398=$i11, var2929=$i12, var1405=$r7, var1931=null_type, var1906=$i16, var949=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Module=var2453, r0=var350, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var1258, $r1=var1564, $i0=var449, i13=var1924, i14=var61, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var3196, $r2=var3220, $r3=var2576, java.lang.Object=var760, $i15=var319, $i5=var1884, $i6=var716, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var305, $r4=var1509, $i1=var475, $i7=var3710, $i8=var756, $r5=var1698, $i2=var1786, $i9=var3509, $i10=var1635, $r6=var2409, $i3=var3725, $i11=var398, $i12=var2929, $r7=var1405, null_type=var1931, $i16=var1906, $i4=var949}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i13 = 1000003 ^ $i0;	i14 = i13 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	$i15 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i5 = i14 ^ $i15;	$i6 = $i5 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace>;	$i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i7 = $i6 ^ $i1;	$i8 = $i7 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i9 = $i8 ^ $i2;	$i10 = $i9 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport>;	$i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i11 = $i10 ^ $i3;	$i12 = $i11 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i4 = $i12 ^ $i16];	$i4 = $i12 ^ $i16;	return $i4
;block_num 5