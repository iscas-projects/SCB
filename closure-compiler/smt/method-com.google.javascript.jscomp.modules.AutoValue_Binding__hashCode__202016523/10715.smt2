(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3107 0)
(declare-sort var2027 0)
(declare-sort var1600 0)
(declare-sort var2709 0)
(declare-sort var2828 0)
(declare-sort var1080 0)
(declare-sort var2283 0)
(declare-sort var3072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var3107) var2027)
(declare-fun hashCode/-1924871451 (var2027) Int)
(declare-fun sourceNode/1302857860 (var3107) var1600)
(declare-fun hashCode/1739917532 (var2709) Int)
(declare-fun cast-from-var1600-to-var2709 (var1600) var2709)
(declare-fun originatingExport/1302857860 (var3107) var2828)
(declare-fun isModuleNamespace/1302857860 (var3107) Bool)
(declare-fun closureNamespace/1302857860 (var3107) String)
(declare-fun createdBy/1302857860 (var3107) var2283)
(declare-fun hashCode/385986394 (var3072) Int)
(declare-fun cast-from-var2283-to-var3072 (var2283) var3072)
(declare-const null-var3107 var3107)
(declare-const null-var1600 var1600)
(declare-const null-var2828 var2828)
(declare-const null-String String)
(declare-const var103 var3107) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var103 null-var3107)))
(define-const var2030 var2027 (metadata/1302857860 var103)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var340 Int (hashCode/-1924871451 var2030)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var579 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var340)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2834 Int (* var579 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var897 var1600 (sourceNode/1302857860 var103)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var897 null-var1600))) ; Cond: $r2 != null 
(define-const var576 var1600 (sourceNode/1302857860 var103)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3064 Int (hashCode/1739917532 (cast-from-var1600-to-var2709 var576))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3277 Int (bv2nat (bvxor ((_ int2bv 64) var2834) ((_ int2bv 64) var3064)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var616 Int (* var3277 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var223 var2828 (originatingExport/1302857860 var103)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var223 null-var2828)))) ; Negate: Cond: $r4 != null  
(define-const var1311 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var1902 Int (bv2nat (bvxor ((_ int2bv 64) var616) ((_ int2bv 64) var1311)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var1543 Int (* var1902 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2985 Bool (isModuleNamespace/1302857860 var103)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var2985 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3318 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var1399 Int (bv2nat (bvxor ((_ int2bv 64) var1543) ((_ int2bv 64) var3318)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var3489 Int (* var1399 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var2941 String (closureNamespace/1302857860 var103)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var2941 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2510 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var3953 Int (bv2nat (bvxor ((_ int2bv 64) var3489) ((_ int2bv 64) var2510)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2171 Int (* var3953 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var1559 var2283 (createdBy/1302857860 var103)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3850 Int (hashCode/385986394 (cast-from-var2283-to-var3072 var1559))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2965 Int (bv2nat (bvxor ((_ int2bv 64) var2171) ((_ int2bv 64) var3850)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var1600-to-var2709=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var2283-to-var3072=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var3107=com.google.javascript.jscomp.modules.AutoValue_Binding, var103=r0, var2027=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var2030=$r1, var340=$i0, var579=i11, var2834=i12, var1600=com.google.javascript.rhino.Node, var897=$r2, var576=$r3, var2709=java.lang.Object, var3064=$i13, var3277=$i9, var616=$i10, var2828=com.google.javascript.jscomp.modules.Export, var223=$r4, var1311=$i14, var1902=$i7, var1543=$i8, var2985=$z0, var3318=$s15, var1399=$i5, var3489=$i6, var2941=$r6, var1080=null_type, var2510=$i16, var3953=$i2, var2171=$i3, var2283=com.google.javascript.jscomp.modules.Binding$CreatedBy, var1559=$r8, var3072=java.lang.Enum, var3850=$i1, var2965=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var3107, r0=var103, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var2027, $r1=var2030, $i0=var340, i11=var579, i12=var2834, com.google.javascript.rhino.Node=var1600, $r2=var897, $r3=var576, java.lang.Object=var2709, $i13=var3064, $i9=var3277, $i10=var616, com.google.javascript.jscomp.modules.Export=var2828, $r4=var223, $i14=var1311, $i7=var1902, $i8=var1543, $z0=var2985, $s15=var3318, $i5=var1399, $i6=var3489, $r6=var2941, null_type=var1080, $i16=var2510, $i2=var3953, $i3=var2171, com.google.javascript.jscomp.modules.Binding$CreatedBy=var2283, $r8=var1559, java.lang.Enum=var3072, $i1=var3850, $i4=var2965}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9