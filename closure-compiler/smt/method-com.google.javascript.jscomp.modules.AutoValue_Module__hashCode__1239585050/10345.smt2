(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2449 0)
(declare-sort var3410 0)
(declare-sort var1880 0)
(declare-sort var290 0)
(declare-sort var1390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1886228621 (var2449) var3410)
(declare-fun hashCode/-1924871451 (var3410) Int)
(declare-fun path/1886228621 (var2449) var1880)
(declare-fun namespace/1886228621 (var2449) var290)
(declare-fun hashCode/-1247371579 (var290) Int)
(declare-fun boundNames/1886228621 (var2449) var290)
(declare-fun localNameToLocalExport/1886228621 (var2449) var290)
(declare-fun closureNamespace/1886228621 (var2449) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2449 var2449)
(declare-const null-var1880 var1880)
(declare-const null-String String)
(declare-const var3990 var2449) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module 
(assert (not (= var3990 null-var2449)))
(define-const var1268 var3410 (metadata/1886228621 var3990)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var591 Int (hashCode/-1924871451 var1268)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var2126 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var591)))) ; Statement: i13 = 1000003 ^ $i0 
(define-const var2365 Int (* var2126 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2733 var1880 (path/1886228621 var3990)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path> 
(assert (not (not (= var2733 null-var1880)))) ; Negate: Cond: $r2 != null  
(define-const var1029 Int 0) ; Statement: $i15 = 0 
 ; Statement: goto [?= $i5 = i14 ^ $i15] 
(assert true) ; Non Conditional
(define-const var639 Int (bv2nat (bvxor ((_ int2bv 64) var2365) ((_ int2bv 64) var1029)))) ; Statement: $i5 = i14 ^ $i15 
(define-const var2840 Int (* var639 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var1721 var290 (namespace/1886228621 var3990)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace> 
(assert true)
(define-const var650 Int (hashCode/-1247371579 var1721)) ; Statement: $i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var550 Int (bv2nat (bvxor ((_ int2bv 64) var2840) ((_ int2bv 64) var650)))) ; Statement: $i7 = $i6 ^ $i1 
(define-const var1182 Int (* var550 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3629 var290 (boundNames/1886228621 var3990)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames> 
(assert true)
(define-const var2875 Int (hashCode/-1247371579 var3629)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2286 Int (bv2nat (bvxor ((_ int2bv 64) var1182) ((_ int2bv 64) var2875)))) ; Statement: $i9 = $i8 ^ $i2 
(define-const var3241 Int (* var2286 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3355 var290 (localNameToLocalExport/1886228621 var3990)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport> 
(assert true)
(define-const var670 Int (hashCode/-1247371579 var3355)) ; Statement: $i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1236 Int (bv2nat (bvxor ((_ int2bv 64) var3241) ((_ int2bv 64) var670)))) ; Statement: $i11 = $i10 ^ $i3 
(define-const var3154 Int (* var1236 1000003)) ; Statement: $i12 = $i11 * 1000003 
(define-const var3041 String (closureNamespace/1886228621 var3990)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
 ; Statement: if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
(assert (not (= var3041 null-String))) ; Cond: $r7 != null 
(define-const var59 String (closureNamespace/1886228621 var3990)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace> 
(assert true)
(define-const var1603 Int (hashCode/-467973558 var59)) ; Statement: $i16 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2564 Int (bv2nat (bvxor ((_ int2bv 64) var3154) ((_ int2bv 64) var1603)))) ; Statement: $i4 = $i12 ^ $i16 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), path/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), namespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), boundNames/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), localNameToLocalExport/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), closureNamespace/1886228621=([com.google.javascript.jscomp.modules.AutoValue_Module], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2449=com.google.javascript.jscomp.modules.AutoValue_Module, var3990=r0, var3410=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1268=$r1, var591=$i0, var2126=i13, var2365=i14, var1880=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var2733=$r2, var1029=$i15, var639=$i5, var2840=$i6, var290=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1721=$r4, var650=$i1, var550=$i7, var1182=$i8, var3629=$r5, var2875=$i2, var2286=$i9, var3241=$i10, var3355=$r6, var670=$i3, var1236=$i11, var3154=$i12, var3041=$r7, var1390=null_type, var59=$r8, var1603=$i16, var2564=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Module=var2449, r0=var3990, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3410, $r1=var1268, $i0=var591, i13=var2126, i14=var2365, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var1880, $r2=var2733, $i15=var1029, $i5=var639, $i6=var2840, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var290, $r4=var1721, $i1=var650, $i7=var550, $i8=var1182, $r5=var3629, $i2=var2875, $i9=var2286, $i10=var3241, $r6=var3355, $i3=var670, $i11=var1236, $i12=var3154, $r7=var3041, null_type=var1390, $r8=var59, $i16=var1603, $i4=var2564}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Module;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i13 = 1000003 ^ $i0;	i14 = i13 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath path>;	$i15 = 0;	goto [?= $i5 = i14 ^ $i15];	$i5 = i14 ^ $i15;	$i6 = $i5 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap namespace>;	$i1 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i7 = $i6 ^ $i1;	$i8 = $i7 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap boundNames>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i9 = $i8 ^ $i2;	$i10 = $i9 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap localNameToLocalExport>;	$i3 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i11 = $i10 ^ $i3;	$i12 = $i11 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	if $r7 != null goto $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Module: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	$i4 = $i12 ^ $i16;	return $i4
;block_num 5