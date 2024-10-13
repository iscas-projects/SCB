(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var3848 0)
(declare-sort var111 0)
(declare-sort var664 0)
(declare-sort var1262 0)
(declare-sort var3342 0)
(declare-sort var3200 0)
(declare-sort var612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var687) var3848)
(declare-fun hashCode/-1924871451 (var3848) Int)
(declare-fun sourceNode/1302857860 (var687) var111)
(declare-fun originatingExport/1302857860 (var687) var664)
(declare-fun hashCode/1739917532 (var1262) Int)
(declare-fun cast-from-var664-to-var1262 (var664) var1262)
(declare-fun isModuleNamespace/1302857860 (var687) Bool)
(declare-fun closureNamespace/1302857860 (var687) String)
(declare-fun createdBy/1302857860 (var687) var3200)
(declare-fun hashCode/385986394 (var612) Int)
(declare-fun cast-from-var3200-to-var612 (var3200) var612)
(declare-const null-var687 var687)
(declare-const null-var111 var111)
(declare-const null-var664 var664)
(declare-const null-String String)
(declare-const var2828 var687) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var2828 null-var687)))
(define-const var927 var3848 (metadata/1302857860 var2828)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var1871 Int (hashCode/-1924871451 var927)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var2715 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1871)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1840 Int (* var2715 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var1282 var111 (sourceNode/1302857860 var2828)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var1282 null-var111)))) ; Negate: Cond: $r2 != null  
(define-const var1368 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var3185 Int (bv2nat (bvxor ((_ int2bv 64) var1840) ((_ int2bv 64) var1368)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1742 Int (* var3185 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var2855 var664 (originatingExport/1302857860 var2828)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var2855 null-var664))) ; Cond: $r4 != null 
(define-const var149 var664 (originatingExport/1302857860 var2828)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var3892 Int (hashCode/1739917532 (cast-from-var664-to-var1262 var149))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2613 Int (bv2nat (bvxor ((_ int2bv 64) var1742) ((_ int2bv 64) var3892)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3441 Int (* var2613 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var509 Bool (isModuleNamespace/1302857860 var2828)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var509 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2458 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var2532 Int (bv2nat (bvxor ((_ int2bv 64) var3441) ((_ int2bv 64) var2458)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var2070 Int (* var2532 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3655 String (closureNamespace/1302857860 var2828)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var3655 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3956 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var2414 Int (bv2nat (bvxor ((_ int2bv 64) var2070) ((_ int2bv 64) var3956)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var532 Int (* var2414 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3755 var3200 (createdBy/1302857860 var2828)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3703 Int (hashCode/385986394 (cast-from-var3200-to-var612 var3755))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var3290 Int (bv2nat (bvxor ((_ int2bv 64) var532) ((_ int2bv 64) var3703)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), hashCode/1739917532=([java.lang.Object], int), cast-from-var664-to-var1262=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var3200-to-var612=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var687=com.google.javascript.jscomp.modules.AutoValue_Binding, var2828=r0, var3848=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var927=$r1, var1871=$i0, var2715=i11, var1840=i12, var111=com.google.javascript.rhino.Node, var1282=$r2, var1368=$i13, var3185=$i9, var1742=$i10, var664=com.google.javascript.jscomp.modules.Export, var2855=$r4, var149=$r5, var1262=java.lang.Object, var3892=$i14, var2613=$i7, var3441=$i8, var509=$z0, var2458=$s15, var2532=$i5, var2070=$i6, var3655=$r6, var3342=null_type, var3956=$i16, var2414=$i2, var532=$i3, var3200=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3755=$r8, var612=java.lang.Enum, var3703=$i1, var3290=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var687, r0=var2828, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3848, $r1=var927, $i0=var1871, i11=var2715, i12=var1840, com.google.javascript.rhino.Node=var111, $r2=var1282, $i13=var1368, $i9=var3185, $i10=var1742, com.google.javascript.jscomp.modules.Export=var664, $r4=var2855, $r5=var149, java.lang.Object=var1262, $i14=var3892, $i7=var2613, $i8=var3441, $z0=var509, $s15=var2458, $i5=var2532, $i6=var2070, $r6=var3655, null_type=var3342, $i16=var3956, $i2=var2414, $i3=var532, com.google.javascript.jscomp.modules.Binding$CreatedBy=var3200, $r8=var3755, java.lang.Enum=var612, $i1=var3703, $i4=var3290}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9