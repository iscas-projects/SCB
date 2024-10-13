(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var3159 0)
(declare-sort var860 0)
(declare-sort var1024 0)
(declare-sort var540 0)
(declare-sort var2379 0)
(declare-sort var3375 0)
(declare-sort var2185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var1580) var3159)
(declare-fun hashCode/-1924871451 (var3159) Int)
(declare-fun sourceNode/1302857860 (var1580) var860)
(declare-fun originatingExport/1302857860 (var1580) var1024)
(declare-fun hashCode/1739917532 (var540) Int)
(declare-fun cast-from-var1024-to-var540 (var1024) var540)
(declare-fun isModuleNamespace/1302857860 (var1580) Bool)
(declare-fun closureNamespace/1302857860 (var1580) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var1580) var3375)
(declare-fun hashCode/385986394 (var2185) Int)
(declare-fun cast-from-var3375-to-var2185 (var3375) var2185)
(declare-const null-var1580 var1580)
(declare-const null-var860 var860)
(declare-const null-var1024 var1024)
(declare-const null-String String)
(declare-const var1757 var1580) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var1757 null-var1580)))
(define-const var3712 var3159 (metadata/1302857860 var1757)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var1540 Int (hashCode/-1924871451 var3712)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var2512 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1540)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var57 Int (* var2512 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3086 var860 (sourceNode/1302857860 var1757)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var3086 null-var860)))) ; Negate: Cond: $r2 != null  
(define-const var1 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var1391 Int (bv2nat (bvxor ((_ int2bv 64) var57) ((_ int2bv 64) var1)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1257 Int (* var1391 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var6 var1024 (originatingExport/1302857860 var1757)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var6 null-var1024))) ; Cond: $r4 != null 
(define-const var3768 var1024 (originatingExport/1302857860 var1757)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var3673 Int (hashCode/1739917532 (cast-from-var1024-to-var540 var3768))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var995 Int (bv2nat (bvxor ((_ int2bv 64) var1257) ((_ int2bv 64) var3673)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var2920 Int (* var995 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3752 Bool (isModuleNamespace/1302857860 var1757)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var3752 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3326 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var388 Int (bv2nat (bvxor ((_ int2bv 64) var2920) ((_ int2bv 64) var3326)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var3395 Int (* var388 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var118 String (closureNamespace/1302857860 var1757)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var118 null-String))) ; Cond: $r6 != null 
(define-const var3598 String (closureNamespace/1302857860 var1757)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var1824 Int (hashCode/-467973558 var3598)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2282 Int (bv2nat (bvxor ((_ int2bv 64) var3395) ((_ int2bv 64) var1824)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2575 Int (* var2282 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var1222 var3375 (createdBy/1302857860 var1757)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var85 Int (hashCode/385986394 (cast-from-var3375-to-var2185 var1222))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2520 Int (bv2nat (bvxor ((_ int2bv 64) var2575) ((_ int2bv 64) var85)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), hashCode/1739917532=([java.lang.Object], int), cast-from-var1024-to-var540=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var3375-to-var2185=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1580=com.google.javascript.jscomp.modules.AutoValue_Binding, var1757=r0, var3159=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var3712=$r1, var1540=$i0, var2512=i11, var57=i12, var860=com.google.javascript.rhino.Node, var3086=$r2, var1=$i13, var1391=$i9, var1257=$i10, var1024=com.google.javascript.jscomp.modules.Export, var6=$r4, var3768=$r5, var540=java.lang.Object, var3673=$i14, var995=$i7, var2920=$i8, var3752=$z0, var3326=$s15, var388=$i5, var3395=$i6, var118=$r6, var2379=null_type, var3598=$r7, var1824=$i16, var2282=$i2, var2575=$i3, var3375=com.google.javascript.jscomp.modules.Binding$CreatedBy, var1222=$r8, var2185=java.lang.Enum, var85=$i1, var2520=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var1580, r0=var1757, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3159, $r1=var3712, $i0=var1540, i11=var2512, i12=var57, com.google.javascript.rhino.Node=var860, $r2=var3086, $i13=var1, $i9=var1391, $i10=var1257, com.google.javascript.jscomp.modules.Export=var1024, $r4=var6, $r5=var3768, java.lang.Object=var540, $i14=var3673, $i7=var995, $i8=var2920, $z0=var3752, $s15=var3326, $i5=var388, $i6=var3395, $r6=var118, null_type=var2379, $r7=var3598, $i16=var1824, $i2=var2282, $i3=var2575, com.google.javascript.jscomp.modules.Binding$CreatedBy=var3375, $r8=var1222, java.lang.Enum=var2185, $i1=var85, $i4=var2520}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9