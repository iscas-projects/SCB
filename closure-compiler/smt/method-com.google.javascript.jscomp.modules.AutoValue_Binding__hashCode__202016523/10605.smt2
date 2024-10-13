(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort var2776 0)
(declare-sort var3472 0)
(declare-sort var1270 0)
(declare-sort var3242 0)
(declare-sort var2722 0)
(declare-sort var2502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var264) var2776)
(declare-fun hashCode/-1924871451 (var2776) Int)
(declare-fun sourceNode/1302857860 (var264) var3472)
(declare-fun originatingExport/1302857860 (var264) var1270)
(declare-fun isModuleNamespace/1302857860 (var264) Bool)
(declare-fun closureNamespace/1302857860 (var264) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var264) var2722)
(declare-fun hashCode/385986394 (var2502) Int)
(declare-fun cast-from-var2722-to-var2502 (var2722) var2502)
(declare-const null-var264 var264)
(declare-const null-var3472 var3472)
(declare-const null-var1270 var1270)
(declare-const null-String String)
(declare-const var1106 var264) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var1106 null-var264)))
(define-const var2644 var2776 (metadata/1302857860 var1106)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var2421 Int (hashCode/-1924871451 var2644)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var862 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2421)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1025 Int (* var862 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3162 var3472 (sourceNode/1302857860 var1106)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var3162 null-var3472)))) ; Negate: Cond: $r2 != null  
(define-const var3457 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var2234 Int (bv2nat (bvxor ((_ int2bv 64) var1025) ((_ int2bv 64) var3457)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var326 Int (* var2234 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3126 var1270 (originatingExport/1302857860 var1106)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var3126 null-var1270)))) ; Negate: Cond: $r4 != null  
(define-const var520 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var2049 Int (bv2nat (bvxor ((_ int2bv 64) var326) ((_ int2bv 64) var520)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3351 Int (* var2049 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2244 Bool (isModuleNamespace/1302857860 var1106)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var2244 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1607 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var1895 Int (bv2nat (bvxor ((_ int2bv 64) var3351) ((_ int2bv 64) var1607)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var316 Int (* var1895 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var2860 String (closureNamespace/1302857860 var1106)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var2860 null-String))) ; Cond: $r6 != null 
(define-const var534 String (closureNamespace/1302857860 var1106)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var146 Int (hashCode/-467973558 var534)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3332 Int (bv2nat (bvxor ((_ int2bv 64) var316) ((_ int2bv 64) var146)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var1853 Int (* var3332 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3130 var2722 (createdBy/1302857860 var1106)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var2335 Int (hashCode/385986394 (cast-from-var2722-to-var2502 var3130))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var1470 Int (bv2nat (bvxor ((_ int2bv 64) var1853) ((_ int2bv 64) var2335)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var2722-to-var2502=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var264=com.google.javascript.jscomp.modules.AutoValue_Binding, var1106=r0, var2776=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var2644=$r1, var2421=$i0, var862=i11, var1025=i12, var3472=com.google.javascript.rhino.Node, var3162=$r2, var3457=$i13, var2234=$i9, var326=$i10, var1270=com.google.javascript.jscomp.modules.Export, var3126=$r4, var520=$i14, var2049=$i7, var3351=$i8, var2244=$z0, var1607=$s15, var1895=$i5, var316=$i6, var2860=$r6, var3242=null_type, var534=$r7, var146=$i16, var3332=$i2, var1853=$i3, var2722=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3130=$r8, var2502=java.lang.Enum, var2335=$i1, var1470=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var264, r0=var1106, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var2776, $r1=var2644, $i0=var2421, i11=var862, i12=var1025, com.google.javascript.rhino.Node=var3472, $r2=var3162, $i13=var3457, $i9=var2234, $i10=var326, com.google.javascript.jscomp.modules.Export=var1270, $r4=var3126, $i14=var520, $i7=var2049, $i8=var3351, $z0=var2244, $s15=var1607, $i5=var1895, $i6=var316, $r6=var2860, null_type=var3242, $r7=var534, $i16=var146, $i2=var3332, $i3=var1853, com.google.javascript.jscomp.modules.Binding$CreatedBy=var2722, $r8=var3130, java.lang.Enum=var2502, $i1=var2335, $i4=var1470}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9