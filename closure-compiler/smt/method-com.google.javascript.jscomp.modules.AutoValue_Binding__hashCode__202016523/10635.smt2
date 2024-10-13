(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var263 0)
(declare-sort var917 0)
(declare-sort var2773 0)
(declare-sort var3491 0)
(declare-sort var437 0)
(declare-sort var3353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var1029) var263)
(declare-fun hashCode/-1924871451 (var263) Int)
(declare-fun sourceNode/1302857860 (var1029) var917)
(declare-fun originatingExport/1302857860 (var1029) var2773)
(declare-fun isModuleNamespace/1302857860 (var1029) Bool)
(declare-fun closureNamespace/1302857860 (var1029) String)
(declare-fun createdBy/1302857860 (var1029) var437)
(declare-fun hashCode/385986394 (var3353) Int)
(declare-fun cast-from-var437-to-var3353 (var437) var3353)
(declare-const null-var1029 var1029)
(declare-const null-var917 var917)
(declare-const null-var2773 var2773)
(declare-const null-String String)
(declare-const var3083 var1029) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var3083 null-var1029)))
(define-const var3205 var263 (metadata/1302857860 var3083)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var3343 Int (hashCode/-1924871451 var3205)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var1972 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3343)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1853 Int (* var1972 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2353 var917 (sourceNode/1302857860 var3083)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var2353 null-var917)))) ; Negate: Cond: $r2 != null  
(define-const var2580 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var816 Int (bv2nat (bvxor ((_ int2bv 64) var1853) ((_ int2bv 64) var2580)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var1986 Int (* var816 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3284 var2773 (originatingExport/1302857860 var3083)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var3284 null-var2773)))) ; Negate: Cond: $r4 != null  
(define-const var305 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var1941 Int (bv2nat (bvxor ((_ int2bv 64) var1986) ((_ int2bv 64) var305)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3367 Int (* var1941 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var548 Bool (isModuleNamespace/1302857860 var3083)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var548 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3556 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var3029 Int (bv2nat (bvxor ((_ int2bv 64) var3367) ((_ int2bv 64) var3556)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var3930 Int (* var3029 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var3214 String (closureNamespace/1302857860 var3083)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (not (= var3214 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1414 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i2 = $i6 ^ $i16] 
(assert true) ; Non Conditional
(define-const var1068 Int (bv2nat (bvxor ((_ int2bv 64) var3930) ((_ int2bv 64) var1414)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var2448 Int (* var1068 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var2638 var437 (createdBy/1302857860 var3083)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var3308 Int (hashCode/385986394 (cast-from-var437-to-var3353 var2638))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var617 Int (bv2nat (bvxor ((_ int2bv 64) var2448) ((_ int2bv 64) var3308)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var437-to-var3353=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1029=com.google.javascript.jscomp.modules.AutoValue_Binding, var3083=r0, var263=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var3205=$r1, var3343=$i0, var1972=i11, var1853=i12, var917=com.google.javascript.rhino.Node, var2353=$r2, var2580=$i13, var816=$i9, var1986=$i10, var2773=com.google.javascript.jscomp.modules.Export, var3284=$r4, var305=$i14, var1941=$i7, var3367=$i8, var548=$z0, var3556=$s15, var3029=$i5, var3930=$i6, var3214=$r6, var3491=null_type, var1414=$i16, var1068=$i2, var2448=$i3, var437=com.google.javascript.jscomp.modules.Binding$CreatedBy, var2638=$r8, var3353=java.lang.Enum, var3308=$i1, var617=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var1029, r0=var3083, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var263, $r1=var3205, $i0=var3343, i11=var1972, i12=var1853, com.google.javascript.rhino.Node=var917, $r2=var2353, $i13=var2580, $i9=var816, $i10=var1986, com.google.javascript.jscomp.modules.Export=var2773, $r4=var3284, $i14=var305, $i7=var1941, $i8=var3367, $z0=var548, $s15=var3556, $i5=var3029, $i6=var3930, $r6=var3214, null_type=var3491, $i16=var1414, $i2=var1068, $i3=var2448, com.google.javascript.jscomp.modules.Binding$CreatedBy=var437, $r8=var2638, java.lang.Enum=var3353, $i1=var3308, $i4=var617}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = 0;	goto [?= $i2 = $i6 ^ $i16];	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9