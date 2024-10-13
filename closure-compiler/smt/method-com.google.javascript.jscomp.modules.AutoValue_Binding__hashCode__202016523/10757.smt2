(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var634 0)
(declare-sort var2143 0)
(declare-sort var1143 0)
(declare-sort var611 0)
(declare-sort var1585 0)
(declare-sort var2234 0)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var14) var634)
(declare-fun hashCode/-1924871451 (var634) Int)
(declare-fun sourceNode/1302857860 (var14) var2143)
(declare-fun hashCode/1739917532 (var1143) Int)
(declare-fun cast-from-var2143-to-var1143 (var2143) var1143)
(declare-fun originatingExport/1302857860 (var14) var611)
(declare-fun isModuleNamespace/1302857860 (var14) Bool)
(declare-fun closureNamespace/1302857860 (var14) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var14) var2234)
(declare-fun hashCode/385986394 (var3588) Int)
(declare-fun cast-from-var2234-to-var3588 (var2234) var3588)
(declare-const null-var14 var14)
(declare-const null-var2143 var2143)
(declare-const null-var611 var611)
(declare-const null-String String)
(declare-const var2116 var14) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var2116 null-var14)))
(define-const var1736 var634 (metadata/1302857860 var2116)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var2110 Int (hashCode/-1924871451 var1736)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var2160 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2110)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var167 Int (* var2160 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var461 var2143 (sourceNode/1302857860 var2116)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var461 null-var2143))) ; Cond: $r2 != null 
(define-const var3044 var2143 (sourceNode/1302857860 var2116)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3776 Int (hashCode/1739917532 (cast-from-var2143-to-var1143 var3044))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2199 Int (bv2nat (bvxor ((_ int2bv 64) var167) ((_ int2bv 64) var3776)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var2993 Int (* var2199 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var1080 var611 (originatingExport/1302857860 var2116)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var1080 null-var611)))) ; Negate: Cond: $r4 != null  
(define-const var2680 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var362 Int (bv2nat (bvxor ((_ int2bv 64) var2993) ((_ int2bv 64) var2680)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var874 Int (* var362 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2813 Bool (isModuleNamespace/1302857860 var2116)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var2813 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1081 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var2141 Int (bv2nat (bvxor ((_ int2bv 64) var874) ((_ int2bv 64) var1081)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var1994 Int (* var2141 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var1752 String (closureNamespace/1302857860 var2116)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var1752 null-String))) ; Cond: $r6 != null 
(define-const var1600 String (closureNamespace/1302857860 var2116)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var2120 Int (hashCode/-467973558 var1600)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1716 Int (bv2nat (bvxor ((_ int2bv 64) var1994) ((_ int2bv 64) var2120)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2082 Int (* var1716 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var1775 var2234 (createdBy/1302857860 var2116)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3531 Int (hashCode/385986394 (cast-from-var2234-to-var3588 var1775))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2253 Int (bv2nat (bvxor ((_ int2bv 64) var2082) ((_ int2bv 64) var3531)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2143-to-var1143=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var2234-to-var3588=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var14=com.google.javascript.jscomp.modules.AutoValue_Binding, var2116=r0, var634=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1736=$r1, var2110=$i0, var2160=i11, var167=i12, var2143=com.google.javascript.rhino.Node, var461=$r2, var3044=$r3, var1143=java.lang.Object, var3776=$i13, var2199=$i9, var2993=$i10, var611=com.google.javascript.jscomp.modules.Export, var1080=$r4, var2680=$i14, var362=$i7, var874=$i8, var2813=$z0, var1081=$s15, var2141=$i5, var1994=$i6, var1752=$r6, var1585=null_type, var1600=$r7, var2120=$i16, var1716=$i2, var2082=$i3, var2234=com.google.javascript.jscomp.modules.Binding$CreatedBy, var1775=$r8, var3588=java.lang.Enum, var3531=$i1, var2253=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var14, r0=var2116, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var634, $r1=var1736, $i0=var2110, i11=var2160, i12=var167, com.google.javascript.rhino.Node=var2143, $r2=var461, $r3=var3044, java.lang.Object=var1143, $i13=var3776, $i9=var2199, $i10=var2993, com.google.javascript.jscomp.modules.Export=var611, $r4=var1080, $i14=var2680, $i7=var362, $i8=var874, $z0=var2813, $s15=var1081, $i5=var2141, $i6=var1994, $r6=var1752, null_type=var1585, $r7=var1600, $i16=var2120, $i2=var1716, $i3=var2082, com.google.javascript.jscomp.modules.Binding$CreatedBy=var2234, $r8=var1775, java.lang.Enum=var3588, $i1=var3531, $i4=var2253}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9