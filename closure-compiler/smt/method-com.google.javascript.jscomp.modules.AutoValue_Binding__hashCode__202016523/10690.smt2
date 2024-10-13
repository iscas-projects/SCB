(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var189 0)
(declare-sort var1300 0)
(declare-sort var1721 0)
(declare-sort var2625 0)
(declare-sort var3912 0)
(declare-sort var1349 0)
(declare-sort var2524 0)
(declare-sort var2691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var189) var1300)
(declare-fun hashCode/-1924871451 (var1300) Int)
(declare-fun sourceNode/1302857860 (var189) var1721)
(declare-fun originatingExport/1302857860 (var189) var2625)
(declare-fun hashCode/1739917532 (var3912) Int)
(declare-fun cast-from-var2625-to-var3912 (var2625) var3912)
(declare-fun isModuleNamespace/1302857860 (var189) Bool)
(declare-fun closureNamespace/1302857860 (var189) String)
(declare-fun createdBy/1302857860 (var189) var2524)
(declare-fun hashCode/385986394 (var2691) Int)
(declare-fun cast-from-var2524-to-var2691 (var2524) var2691)
(declare-const null-var189 var189)
(declare-const null-var1721 var1721)
(declare-const null-var2625 var2625)
(declare-const null-String String)
(declare-const var1348 var189) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var1348 null-var189)))
(define-const var236 var1300 (metadata/1302857860 var1348)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var2704 Int (hashCode/-1924871451 var236)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var1204 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2704)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1212 Int (* var1204 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2285 var1721 (sourceNode/1302857860 var1348)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var2285 null-var1721)))) ; Negate: Cond: $r2 != null  
(define-const var3714 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var1385 Int (bv2nat (bvxor ((_ int2bv 64) var1212) ((_ int2bv 64) var3714)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1463 Int (* var1385 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var20 var2625 (originatingExport/1302857860 var1348)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var20 null-var2625))) ; Cond: $r4 != null 
(define-const var2748 var2625 (originatingExport/1302857860 var1348)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var2074 Int (hashCode/1739917532 (cast-from-var2625-to-var3912 var2748))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3007 Int (bv2nat (bvxor ((_ int2bv 64) var1463) ((_ int2bv 64) var2074)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3864 Int (* var3007 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2870 Bool (isModuleNamespace/1302857860 var1348)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var2870 1 0) 0)) ; Cond: $z0 == 0 
(define-const var15 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var3392 Int (bv2nat (bvxor ((_ int2bv 64) var3864) ((_ int2bv 64) var15)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var311 Int (* var3392 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3929 String (closureNamespace/1302857860 var1348)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var3929 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1943 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var821 Int (bv2nat (bvxor ((_ int2bv 64) var311) ((_ int2bv 64) var1943)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var3026 Int (* var821 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3865 var2524 (createdBy/1302857860 var1348)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var2317 Int (hashCode/385986394 (cast-from-var2524-to-var2691 var3865))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var834 Int (bv2nat (bvxor ((_ int2bv 64) var3026) ((_ int2bv 64) var2317)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), hashCode/1739917532=([java.lang.Object], int), cast-from-var2625-to-var3912=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var2524-to-var2691=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var189=com.google.javascript.jscomp.modules.AutoValue_Binding, var1348=r0, var1300=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var236=$r1, var2704=$i0, var1204=i11, var1212=i12, var1721=com.google.javascript.rhino.Node, var2285=$r2, var3714=$i13, var1385=$i9, var1463=$i10, var2625=com.google.javascript.jscomp.modules.Export, var20=$r4, var2748=$r5, var3912=java.lang.Object, var2074=$i14, var3007=$i7, var3864=$i8, var2870=$z0, var15=$s15, var3392=$i5, var311=$i6, var3929=$r6, var1349=null_type, var1943=$i16, var821=$i2, var3026=$i3, var2524=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3865=$r8, var2691=java.lang.Enum, var2317=$i1, var834=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var189, r0=var1348, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var1300, $r1=var236, $i0=var2704, i11=var1204, i12=var1212, com.google.javascript.rhino.Node=var1721, $r2=var2285, $i13=var3714, $i9=var1385, $i10=var1463, com.google.javascript.jscomp.modules.Export=var2625, $r4=var20, $r5=var2748, java.lang.Object=var3912, $i14=var2074, $i7=var3007, $i8=var3864, $z0=var2870, $s15=var15, $i5=var3392, $i6=var311, $r6=var3929, null_type=var1349, $i16=var1943, $i2=var821, $i3=var3026, com.google.javascript.jscomp.modules.Binding$CreatedBy=var2524, $r8=var3865, java.lang.Enum=var2691, $i1=var2317, $i4=var834}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9