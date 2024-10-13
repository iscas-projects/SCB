(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var2691 0)
(declare-sort var574 0)
(declare-sort var741 0)
(declare-sort var1004 0)
(declare-sort var2325 0)
(declare-sort var1436 0)
(declare-sort var329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var989) var2691)
(declare-fun hashCode/-1924871451 (var2691) Int)
(declare-fun sourceNode/1302857860 (var989) var574)
(declare-fun hashCode/1739917532 (var741) Int)
(declare-fun cast-from-var574-to-var741 (var574) var741)
(declare-fun originatingExport/1302857860 (var989) var1004)
(declare-fun cast-from-var1004-to-var741 (var1004) var741)
(declare-fun isModuleNamespace/1302857860 (var989) Bool)
(declare-fun closureNamespace/1302857860 (var989) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var989) var1436)
(declare-fun hashCode/385986394 (var329) Int)
(declare-fun cast-from-var1436-to-var329 (var1436) var329)
(declare-const null-var989 var989)
(declare-const null-var574 var574)
(declare-const null-var1004 var1004)
(declare-const null-String String)
(declare-const var2194 var989) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var2194 null-var989)))
(define-const var3447 var2691 (metadata/1302857860 var2194)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var3024 Int (hashCode/-1924871451 var3447)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var3201 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3024)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var3853 Int (* var3201 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3318 var574 (sourceNode/1302857860 var2194)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var3318 null-var574))) ; Cond: $r2 != null 
(define-const var3939 var574 (sourceNode/1302857860 var2194)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3801 Int (hashCode/1739917532 (cast-from-var574-to-var741 var3939))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2760 Int (bv2nat (bvxor ((_ int2bv 64) var3853) ((_ int2bv 64) var3801)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var2804 Int (* var2760 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3825 var1004 (originatingExport/1302857860 var2194)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (= var3825 null-var1004))) ; Cond: $r4 != null 
(define-const var3620 var1004 (originatingExport/1302857860 var2194)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert true)
(define-const var3428 Int (hashCode/1739917532 (cast-from-var1004-to-var741 var3620))) ; Statement: $i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2189 Int (bv2nat (bvxor ((_ int2bv 64) var2804) ((_ int2bv 64) var3428)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var2601 Int (* var2189 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var283 Bool (isModuleNamespace/1302857860 var2194)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var283 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3995 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var3469 Int (bv2nat (bvxor ((_ int2bv 64) var2601) ((_ int2bv 64) var3995)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var2360 Int (* var3469 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var2556 String (closureNamespace/1302857860 var2194)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var2556 null-String))) ; Cond: $r6 != null 
(define-const var1749 String (closureNamespace/1302857860 var2194)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var3871 Int (hashCode/-467973558 var1749)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1881 Int (bv2nat (bvxor ((_ int2bv 64) var2360) ((_ int2bv 64) var3871)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var767 Int (* var1881 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var663 var1436 (createdBy/1302857860 var2194)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var2165 Int (hashCode/385986394 (cast-from-var1436-to-var329 var663))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var2931 Int (bv2nat (bvxor ((_ int2bv 64) var767) ((_ int2bv 64) var2165)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var574-to-var741=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), cast-from-var1004-to-var741=([com.google.javascript.jscomp.modules.Export], java.lang.Object), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var1436-to-var329=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var989=com.google.javascript.jscomp.modules.AutoValue_Binding, var2194=r0, var2691=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var3447=$r1, var3024=$i0, var3201=i11, var3853=i12, var574=com.google.javascript.rhino.Node, var3318=$r2, var3939=$r3, var741=java.lang.Object, var3801=$i13, var2760=$i9, var2804=$i10, var1004=com.google.javascript.jscomp.modules.Export, var3825=$r4, var3620=$r5, var3428=$i14, var2189=$i7, var2601=$i8, var283=$z0, var3995=$s15, var3469=$i5, var2360=$i6, var2556=$r6, var2325=null_type, var1749=$r7, var3871=$i16, var1881=$i2, var767=$i3, var1436=com.google.javascript.jscomp.modules.Binding$CreatedBy, var663=$r8, var329=java.lang.Enum, var2165=$i1, var2931=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var989, r0=var2194, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var2691, $r1=var3447, $i0=var3024, i11=var3201, i12=var3853, com.google.javascript.rhino.Node=var574, $r2=var3318, $r3=var3939, java.lang.Object=var741, $i13=var3801, $i9=var2760, $i10=var2804, com.google.javascript.jscomp.modules.Export=var1004, $r4=var3825, $r5=var3620, $i14=var3428, $i7=var2189, $i8=var2601, $z0=var283, $s15=var3995, $i5=var3469, $i6=var2360, $r6=var2556, null_type=var2325, $r7=var1749, $i16=var3871, $i2=var1881, $i3=var767, com.google.javascript.jscomp.modules.Binding$CreatedBy=var1436, $r8=var663, java.lang.Enum=var329, $i1=var2165, $i4=var2931}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9