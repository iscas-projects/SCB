(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1501 0)
(declare-sort var1409 0)
(declare-sort var2931 0)
(declare-sort var2022 0)
(declare-sort var1551 0)
(declare-sort var605 0)
(declare-sort var1399 0)
(declare-sort var1062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var1501) var1409)
(declare-fun hashCode/-1924871451 (var1409) Int)
(declare-fun sourceNode/1302857860 (var1501) var2931)
(declare-fun hashCode/1739917532 (var2022) Int)
(declare-fun cast-from-var2931-to-var2022 (var2931) var2022)
(declare-fun originatingExport/1302857860 (var1501) var1551)
(declare-fun cast-from-var1551-to-var2022 (var1551) var2022)
(declare-fun isModuleNamespace/1302857860 (var1501) Bool)
(declare-fun closureNamespace/1302857860 (var1501) String)
(declare-fun createdBy/1302857860 (var1501) var1399)
(declare-fun hashCode/385986394 (var1062) Int)
(declare-fun cast-from-var1399-to-var1062 (var1399) var1062)
(declare-const null-var1501 var1501)
(declare-const null-var2931 var2931)
(declare-const null-var1551 var1551)
(declare-const null-String String)
(declare-const var1681 var1501) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var1681 null-var1501)))
(define-const var1118 var1409 (metadata/1302857860 var1681)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var2637 Int (hashCode/-1924871451 var1118)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var3605 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2637)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2153 Int (* var3605 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var509 var2931 (sourceNode/1302857860 var1681)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var509 null-var2931))) ; Cond: $r2 != null 
(define-const var670 var2931 (sourceNode/1302857860 var1681)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var2994 Int (hashCode/1739917532 (cast-from-var2931-to-var2022 var670))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1936 Int (bv2nat (bvxor ((_ int2bv 64) var2153) ((_ int2bv 64) var2994)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1914 Int (* var1936 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var1430 var1551 (originatingExport/1302857860 var1681)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var1430 null-var1551))) ; Cond: $r4 != null 
(define-const var713 var1551 (originatingExport/1302857860 var1681)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var3002 Int (hashCode/1739917532 (cast-from-var1551-to-var2022 var713))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1531 Int (bv2nat (bvxor ((_ int2bv 64) var1914) ((_ int2bv 64) var3002)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3489 Int (* var1531 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1621 Bool (isModuleNamespace/1302857860 var1681)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var1621 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3519 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var442 Int (bv2nat (bvxor ((_ int2bv 64) var3489) ((_ int2bv 64) var3519)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var1 Int (* var442 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3496 String (closureNamespace/1302857860 var1681)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var3496 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var275 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var1431 Int (bv2nat (bvxor ((_ int2bv 64) var1) ((_ int2bv 64) var275)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var3029 Int (* var1431 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3940 var1399 (createdBy/1302857860 var1681)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3241 Int (hashCode/385986394 (cast-from-var1399-to-var1062 var3940))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var3437 Int (bv2nat (bvxor ((_ int2bv 64) var3029) ((_ int2bv 64) var3241)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2931-to-var2022=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), cast-from-var1551-to-var2022=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var1399-to-var1062=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1501=com.google.javascript.jscomp.modules.AutoValue_Binding, var1681=r0, var1409=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1118=$r1, var2637=$i0, var3605=i11, var2153=i12, var2931=com.google.javascript.rhino.Node, var509=$r2, var670=$r3, var2022=java.lang.Object, var2994=$i13, var1936=$i9, var1914=$i10, var1551=com.google.javascript.jscomp.modules.Export, var1430=$r4, var713=$r5, var3002=$i14, var1531=$i7, var3489=$i8, var1621=$z0, var3519=$s15, var442=$i5, var1=$i6, var3496=$r6, var605=null_type, var275=$i16, var1431=$i2, var3029=$i3, var1399=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3940=$r8, var1062=java.lang.Enum, var3241=$i1, var3437=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var1501, r0=var1681, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var1409, $r1=var1118, $i0=var2637, i11=var3605, i12=var2153, com.google.javascript.rhino.Node=var2931, $r2=var509, $r3=var670, java.lang.Object=var2022, $i13=var2994, $i9=var1936, $i10=var1914, com.google.javascript.jscomp.modules.Export=var1551, $r4=var1430, $r5=var713, $i14=var3002, $i7=var1531, $i8=var3489, $z0=var1621, $s15=var3519, $i5=var442, $i6=var1, $r6=var3496, null_type=var605, $i16=var275, $i2=var1431, $i3=var3029, com.google.javascript.jscomp.modules.Binding$CreatedBy=var1399, $r8=var3940, java.lang.Enum=var1062, $i1=var3241, $i4=var3437}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9