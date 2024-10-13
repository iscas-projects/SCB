(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var2225 0)
(declare-sort var51 0)
(declare-sort var3067 0)
(declare-sort var984 0)
(declare-sort var1081 0)
(declare-sort var529 0)
(declare-sort var2847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var2375) var2225)
(declare-fun hashCode/-1924871451 (var2225) Int)
(declare-fun sourceNode/1302857860 (var2375) var51)
(declare-fun hashCode/1739917532 (var3067) Int)
(declare-fun cast-from-var51-to-var3067 (var51) var3067)
(declare-fun originatingExport/1302857860 (var2375) var984)
(declare-fun isModuleNamespace/1302857860 (var2375) Bool)
(declare-fun closureNamespace/1302857860 (var2375) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var2375) var529)
(declare-fun hashCode/385986394 (var2847) Int)
(declare-fun cast-from-var529-to-var2847 (var529) var2847)
(declare-const null-var2375 var2375)
(declare-const null-var51 var51)
(declare-const null-var984 var984)
(declare-const null-String String)
(declare-const var2657 var2375) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var2657 null-var2375)))
(define-const var178 var2225 (metadata/1302857860 var2657)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var822 Int (hashCode/-1924871451 var178)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var3652 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var822)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2911 Int (* var3652 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2661 var51 (sourceNode/1302857860 var2657)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (= var2661 null-var51))) ; Cond: $r2 != null 
(define-const var3580 var51 (sourceNode/1302857860 var2657)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var97 Int (hashCode/1739917532 (cast-from-var51-to-var3067 var3580))) ; Statement: $i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3484 Int (bv2nat (bvxor ((_ int2bv 64) var2911) ((_ int2bv 64) var97)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1240 Int (* var3484 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var971 var984 (originatingExport/1302857860 var2657)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var971 null-var984)))) ; Negate: Cond: $r4 != null  
(define-const var811 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var3130 Int (bv2nat (bvxor ((_ int2bv 64) var1240) ((_ int2bv 64) var811)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3347 Int (* var3130 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3559 Bool (isModuleNamespace/1302857860 var2657)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (not (= (ite var3559 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3560 Int 1231) ; Statement: $s15 = 1231 
 ; Statement: goto [?= $i5 = $i8 ^ $s15] 
(assert true) ; Non Conditional
(define-const var1662 Int (bv2nat (bvxor ((_ int2bv 64) var3347) ((_ int2bv 64) var3560)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var1094 Int (* var1662 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3502 String (closureNamespace/1302857860 var2657)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var3502 null-String))) ; Cond: $r6 != null 
(define-const var278 String (closureNamespace/1302857860 var2657)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var2683 Int (hashCode/-467973558 var278)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var839 Int (bv2nat (bvxor ((_ int2bv 64) var1094) ((_ int2bv 64) var2683)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2501 Int (* var839 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var803 var529 (createdBy/1302857860 var2657)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var276 Int (hashCode/385986394 (cast-from-var529-to-var2847 var803))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var3974 Int (bv2nat (bvxor ((_ int2bv 64) var2501) ((_ int2bv 64) var276)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var51-to-var3067=([com.google.javascript.rhino.Node], java.lang.Object), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var529-to-var2847=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var2375=com.google.javascript.jscomp.modules.AutoValue_Binding, var2657=r0, var2225=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var178=$r1, var822=$i0, var3652=i11, var2911=i12, var51=com.google.javascript.rhino.Node, var2661=$r2, var3580=$r3, var3067=java.lang.Object, var97=$i13, var3484=$i9, var1240=$i10, var984=com.google.javascript.jscomp.modules.Export, var971=$r4, var811=$i14, var3130=$i7, var3347=$i8, var3559=$z0, var3560=$s15, var1662=$i5, var1094=$i6, var3502=$r6, var1081=null_type, var278=$r7, var2683=$i16, var839=$i2, var2501=$i3, var529=com.google.javascript.jscomp.modules.Binding$CreatedBy, var803=$r8, var2847=java.lang.Enum, var276=$i1, var3974=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var2375, r0=var2657, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var2225, $r1=var178, $i0=var822, i11=var3652, i12=var2911, com.google.javascript.rhino.Node=var51, $r2=var2661, $r3=var3580, java.lang.Object=var3067, $i13=var97, $i9=var3484, $i10=var1240, com.google.javascript.jscomp.modules.Export=var984, $r4=var971, $i14=var811, $i7=var3130, $i8=var3347, $z0=var3559, $s15=var3560, $i5=var1662, $i6=var1094, $r6=var3502, null_type=var1081, $r7=var278, $i16=var2683, $i2=var839, $i3=var2501, com.google.javascript.jscomp.modules.Binding$CreatedBy=var529, $r8=var803, java.lang.Enum=var2847, $i1=var276, $i4=var3974}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1231;	goto [?= $i5 = $i8 ^ $s15];	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9