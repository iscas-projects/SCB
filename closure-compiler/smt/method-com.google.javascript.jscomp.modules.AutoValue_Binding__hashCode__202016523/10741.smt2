(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1316 0)
(declare-sort var3149 0)
(declare-sort var436 0)
(declare-sort var322 0)
(declare-sort var2385 0)
(declare-sort var1054 0)
(declare-sort var3598 0)
(declare-sort var1069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var1316) var3149)
(declare-fun hashCode/-1924871451 (var3149) Int)
(declare-fun sourceNode/1302857860 (var1316) var436)
(declare-fun hashCode/1739917532 (var322) Int)
(declare-fun cast-from-var436-to-var322 (var436) var322)
(declare-fun originatingExport/1302857860 (var1316) var2385)
(declare-fun isModuleNamespace/1302857860 (var1316) Bool)
(declare-fun closureNamespace/1302857860 (var1316) String)
(declare-fun createdBy/1302857860 (var1316) var3598)
(declare-fun hashCode/385986394 (var1069) Int)
(declare-fun cast-from-var3598-to-var1069 (var3598) var1069)
(declare-const null-var1316 var1316)
(declare-const null-var436 var436)
(declare-const null-var2385 var2385)
(declare-const null-String String)
(declare-const var0 var1316) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var0 null-var1316)))
(define-const var716 var3149 (metadata/1302857860 var0)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var2050 Int (hashCode/-1924871451 var716)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var21 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2050)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var3081 Int (* var21 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2045 var436 (sourceNode/1302857860 var0)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var2045 null-var436))) ; Cond: $r2 != null 
(define-const var1098 var436 (sourceNode/1302857860 var0)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3008 Int (hashCode/1739917532 (cast-from-var436-to-var322 var1098))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var940 Int (bv2nat (bvxor ((_ int2bv 64) var3081) ((_ int2bv 64) var3008)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var593 Int (* var940 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var60 var2385 (originatingExport/1302857860 var0)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var60 null-var2385)))) ; Negate: Cond: $r4 != null  
(define-const var1433 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var1960 Int (bv2nat (bvxor ((_ int2bv 64) var593) ((_ int2bv 64) var1433)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var510 Int (* var1960 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2318 Bool (isModuleNamespace/1302857860 var0)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var2318 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3060 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var86 Int (bv2nat (bvxor ((_ int2bv 64) var510) ((_ int2bv 64) var3060)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var3111 Int (* var86 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var108 String (closureNamespace/1302857860 var0)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var108 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1909 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var1712 Int (bv2nat (bvxor ((_ int2bv 64) var3111) ((_ int2bv 64) var1909)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2116 Int (* var1712 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var2889 var3598 (createdBy/1302857860 var0)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var287 Int (hashCode/385986394 (cast-from-var3598-to-var1069 var2889))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2549 Int (bv2nat (bvxor ((_ int2bv 64) var2116) ((_ int2bv 64) var287)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var436-to-var322=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var3598-to-var1069=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1316=com.google.javascript.jscomp.modules.AutoValue_Binding, var0=r0, var3149=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var716=$r1, var2050=$i0, var21=i11, var3081=i12, var436=com.google.javascript.rhino.Node, var2045=$r2, var1098=$r3, var322=java.lang.Object, var3008=$i13, var940=$i9, var593=$i10, var2385=com.google.javascript.jscomp.modules.Export, var60=$r4, var1433=$i14, var1960=$i7, var510=$i8, var2318=$z0, var3060=$s15, var86=$i5, var3111=$i6, var108=$r6, var1054=null_type, var1909=$i16, var1712=$i2, var2116=$i3, var3598=com.google.javascript.jscomp.modules.Binding$CreatedBy, var2889=$r8, var1069=java.lang.Enum, var287=$i1, var2549=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var1316, r0=var0, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var3149, $r1=var716, $i0=var2050, i11=var21, i12=var3081, com.google.javascript.rhino.Node=var436, $r2=var2045, $r3=var1098, java.lang.Object=var322, $i13=var3008, $i9=var940, $i10=var593, com.google.javascript.jscomp.modules.Export=var2385, $r4=var60, $i14=var1433, $i7=var1960, $i8=var510, $z0=var2318, $s15=var3060, $i5=var86, $i6=var3111, $r6=var108, null_type=var1054, $i16=var1909, $i2=var1712, $i3=var2116, com.google.javascript.jscomp.modules.Binding$CreatedBy=var3598, $r8=var2889, java.lang.Enum=var1069, $i1=var287, $i4=var2549}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9