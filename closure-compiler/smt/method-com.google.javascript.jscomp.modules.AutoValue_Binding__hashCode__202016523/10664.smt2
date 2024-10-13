(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2772 0)
(declare-sort var1967 0)
(declare-sort var1230 0)
(declare-sort var345 0)
(declare-sort var938 0)
(declare-sort var1589 0)
(declare-sort var1708 0)
(declare-sort var2309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var2772) var1967)
(declare-fun hashCode/-1924871451 (var1967) Int)
(declare-fun sourceNode/1302857860 (var2772) var1230)
(declare-fun originatingExport/1302857860 (var2772) var345)
(declare-fun hashCode/1739917532 (var938) Int)
(declare-fun cast-from-var345-to-var938 (var345) var938)
(declare-fun isModuleNamespace/1302857860 (var2772) Bool)
(declare-fun closureNamespace/1302857860 (var2772) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var2772) var1708)
(declare-fun hashCode/385986394 (var2309) Int)
(declare-fun cast-from-var1708-to-var2309 (var1708) var2309)
(declare-const null-var2772 var2772)
(declare-const null-var1230 var1230)
(declare-const null-var345 var345)
(declare-const null-String String)
(declare-const var3688 var2772) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var3688 null-var2772)))
(define-const var1999 var1967 (metadata/1302857860 var3688)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var683 Int (hashCode/-1924871451 var1999)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var3272 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var683)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1810 Int (* var3272 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var905 var1230 (sourceNode/1302857860 var3688)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var905 null-var1230)))) ; Negate: Cond: $r2 != null  
(define-const var1504 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var2250 Int (bv2nat (bvxor ((_ int2bv 64) var1810) ((_ int2bv 64) var1504)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var2346 Int (* var2250 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var2293 var345 (originatingExport/1302857860 var3688)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var2293 null-var345))) ; Cond: $r4 != null 
(define-const var130 var345 (originatingExport/1302857860 var3688)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var493 Int (hashCode/1739917532 (cast-from-var345-to-var938 var130))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var954 Int (bv2nat (bvxor ((_ int2bv 64) var2346) ((_ int2bv 64) var493)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var2008 Int (* var954 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var211 Bool (isModuleNamespace/1302857860 var3688)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var211 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1997 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var2268 Int (bv2nat (bvxor ((_ int2bv 64) var2008) ((_ int2bv 64) var1997)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var1512 Int (* var2268 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3343 String (closureNamespace/1302857860 var3688)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var3343 null-String))) ; Cond: $r6 != null 
(define-const var2194 String (closureNamespace/1302857860 var3688)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var852 Int (hashCode/-467973558 var2194)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3909 Int (bv2nat (bvxor ((_ int2bv 64) var1512) ((_ int2bv 64) var852)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2116 Int (* var3909 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var86 var1708 (createdBy/1302857860 var3688)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var1454 Int (hashCode/385986394 (cast-from-var1708-to-var2309 var86))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2698 Int (bv2nat (bvxor ((_ int2bv 64) var2116) ((_ int2bv 64) var1454)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), hashCode/1739917532=([java.lang.Object], int), cast-from-var345-to-var938=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var1708-to-var2309=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var2772=com.google.javascript.jscomp.modules.AutoValue_Binding, var3688=r0, var1967=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var1999=$r1, var683=$i0, var3272=i11, var1810=i12, var1230=com.google.javascript.rhino.Node, var905=$r2, var1504=$i13, var2250=$i9, var2346=$i10, var345=com.google.javascript.jscomp.modules.Export, var2293=$r4, var130=$r5, var938=java.lang.Object, var493=$i14, var954=$i7, var2008=$i8, var211=$z0, var1997=$s15, var2268=$i5, var1512=$i6, var3343=$r6, var1589=null_type, var2194=$r7, var852=$i16, var3909=$i2, var2116=$i3, var1708=com.google.javascript.jscomp.modules.Binding$CreatedBy, var86=$r8, var2309=java.lang.Enum, var1454=$i1, var2698=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var2772, r0=var3688, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var1967, $r1=var1999, $i0=var683, i11=var3272, i12=var1810, com.google.javascript.rhino.Node=var1230, $r2=var905, $i13=var1504, $i9=var2250, $i10=var2346, com.google.javascript.jscomp.modules.Export=var345, $r4=var2293, $r5=var130, java.lang.Object=var938, $i14=var493, $i7=var954, $i8=var2008, $z0=var211, $s15=var1997, $i5=var2268, $i6=var1512, $r6=var3343, null_type=var1589, $r7=var2194, $i16=var852, $i2=var3909, $i3=var2116, com.google.javascript.jscomp.modules.Binding$CreatedBy=var1708, $r8=var86, java.lang.Enum=var2309, $i1=var1454, $i4=var2698}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9