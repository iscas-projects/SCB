(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var3494 0)
(declare-sort var787 0)
(declare-sort var249 0)
(declare-sort var2135 0)
(declare-sort var1826 0)
(declare-sort var3395 0)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var3882) var3494)
(declare-fun hashCode/-1924871451 (var3494) Int)
(declare-fun sourceNode/1302857860 (var3882) var787)
(declare-fun hashCode/1739917532 (var249) Int)
(declare-fun cast-from-var787-to-var249 (var787) var249)
(declare-fun originatingExport/1302857860 (var3882) var2135)
(declare-fun cast-from-var2135-to-var249 (var2135) var249)
(declare-fun isModuleNamespace/1302857860 (var3882) Bool)
(declare-fun closureNamespace/1302857860 (var3882) String)
(declare-fun createdBy/1302857860 (var3882) var3395)
(declare-fun hashCode/385986394 (var1315) Int)
(declare-fun cast-from-var3395-to-var1315 (var3395) var1315)
(declare-const null-var3882 var3882)
(declare-const null-var787 var787)
(declare-const null-var2135 var2135)
(declare-const null-String String)
(declare-const var2508 var3882) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var2508 null-var3882)))
(define-const var1366 var3494 (metadata/1302857860 var2508)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var3435 Int (hashCode/-1924871451 var1366)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var647 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3435)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var610 Int (* var647 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var180 var787 (sourceNode/1302857860 var2508)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var180 null-var787))) ; Cond: $r2 != null 
(define-const var1715 var787 (sourceNode/1302857860 var2508)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var2423 Int (hashCode/1739917532 (cast-from-var787-to-var249 var1715))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2427 Int (bv2nat (bvxor ((_ int2bv 64) var610) ((_ int2bv 64) var2423)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1479 Int (* var2427 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3666 var2135 (originatingExport/1302857860 var2508)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var3666 null-var2135))) ; Cond: $r4 != null 
(define-const var937 var2135 (originatingExport/1302857860 var2508)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var2079 Int (hashCode/1739917532 (cast-from-var2135-to-var249 var937))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3169 Int (bv2nat (bvxor ((_ int2bv 64) var1479) ((_ int2bv 64) var2079)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var2386 Int (* var3169 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2744 Bool (isModuleNamespace/1302857860 var2508)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var2744 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2465 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var3158 Int (bv2nat (bvxor ((_ int2bv 64) var2386) ((_ int2bv 64) var2465)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var710 Int (* var3158 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var1538 String (closureNamespace/1302857860 var2508)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var1538 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3088 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var540 Int (bv2nat (bvxor ((_ int2bv 64) var710) ((_ int2bv 64) var3088)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var1864 Int (* var540 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3487 var3395 (createdBy/1302857860 var2508)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var2695 Int (hashCode/385986394 (cast-from-var3395-to-var1315 var3487))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var1217 Int (bv2nat (bvxor ((_ int2bv 64) var1864) ((_ int2bv 64) var2695)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var787-to-var249=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), cast-from-var2135-to-var249=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var3395-to-var1315=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var3882=com.google.javascript.jscomp.modules.AutoValue_Binding, var2508=r0, var3494=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1366=$r1, var3435=$i0, var647=i11, var610=i12, var787=com.google.javascript.rhino.Node, var180=$r2, var1715=$r3, var249=java.lang.Object, var2423=$i13, var2427=$i9, var1479=$i10, var2135=com.google.javascript.jscomp.modules.Export, var3666=$r4, var937=$r5, var2079=$i14, var3169=$i7, var2386=$i8, var2744=$z0, var2465=$s15, var3158=$i5, var710=$i6, var1538=$r6, var1826=null_type, var3088=$i16, var540=$i2, var1864=$i3, var3395=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3487=$r8, var1315=java.lang.Enum, var2695=$i1, var1217=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var3882, r0=var2508, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3494, $r1=var1366, $i0=var3435, i11=var647, i12=var610, com.google.javascript.rhino.Node=var787, $r2=var180, $r3=var1715, java.lang.Object=var249, $i13=var2423, $i9=var2427, $i10=var1479, com.google.javascript.jscomp.modules.Export=var2135, $r4=var3666, $r5=var937, $i14=var2079, $i7=var3169, $i8=var2386, $z0=var2744, $s15=var2465, $i5=var3158, $i6=var710, $r6=var1538, null_type=var1826, $i16=var3088, $i2=var540, $i3=var1864, com.google.javascript.jscomp.modules.Binding$CreatedBy=var3395, $r8=var3487, java.lang.Enum=var1315, $i1=var2695, $i4=var1217}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9