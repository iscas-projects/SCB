(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1156 0)
(declare-sort var66 0)
(declare-sort var779 0)
(declare-sort var52 0)
(declare-sort var3286 0)
(declare-sort var439 0)
(declare-sort var986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun metadata/1302857860 (var1156) var66)
(declare-fun hashCode/-1924871451 (var66) Int)
(declare-fun sourceNode/1302857860 (var1156) var779)
(declare-fun originatingExport/1302857860 (var1156) var52)
(declare-fun isModuleNamespace/1302857860 (var1156) Bool)
(declare-fun closureNamespace/1302857860 (var1156) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun createdBy/1302857860 (var1156) var439)
(declare-fun hashCode/385986394 (var986) Int)
(declare-fun cast-from-var439-to-var986 (var439) var986)
(declare-const null-var1156 var1156)
(declare-const null-var779 var779)
(declare-const null-var52 var52)
(declare-const null-String String)
(declare-const var893 var1156) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding 
(assert (not (= var893 null-var1156)))
(define-const var441 var66 (metadata/1302857860 var893)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata> 
(assert true)
(define-const var1316 Int (hashCode/-1924871451 var441)) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>() 
(define-const var2904 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1316)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2745 Int (* var2904 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var1373 var779 (sourceNode/1302857860 var893)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode> 
(assert (not (not (= var1373 null-var779)))) ; Negate: Cond: $r2 != null  
(define-const var869 Int 0) ; Statement: $i13 = 0 
 ; Statement: goto [?= $i9 = i12 ^ $i13] 
(assert true) ; Non Conditional
(define-const var1015 Int (bv2nat (bvxor ((_ int2bv 64) var2745) ((_ int2bv 64) var869)))) ; Statement: $i9 = i12 ^ $i13 
(define-const var2632 Int (* var1015 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3625 var52 (originatingExport/1302857860 var893)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport> 
(assert (not (not (= var3625 null-var52)))) ; Negate: Cond: $r4 != null  
(define-const var2657 Int 0) ; Statement: $i14 = 0 
 ; Statement: goto [?= $i7 = $i10 ^ $i14] 
(assert true) ; Non Conditional
(define-const var667 Int (bv2nat (bvxor ((_ int2bv 64) var2632) ((_ int2bv 64) var2657)))) ; Statement: $i7 = $i10 ^ $i14 
(define-const var3207 Int (* var667 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var179 Bool (isModuleNamespace/1302857860 var893)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace> 
 ; Statement: if $z0 == 0 goto $s15 = 1237 
(assert (= (ite var179 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1429 Int 1237) ; Statement: $s15 = 1237 
(assert true) ; Non Conditional
(define-const var194 Int (bv2nat (bvxor ((_ int2bv 64) var3207) ((_ int2bv 64) var1429)))) ; Statement: $i5 = $i8 ^ $s15 
(define-const var2113 Int (* var194 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var635 String (closureNamespace/1302857860 var893)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert (not (= var635 null-String))) ; Cond: $r6 != null 
(define-const var3568 String (closureNamespace/1302857860 var893)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace> 
(assert true)
(define-const var947 Int (hashCode/-467973558 var3568)) ; Statement: $i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var200 Int (bv2nat (bvxor ((_ int2bv 64) var2113) ((_ int2bv 64) var947)))) ; Statement: $i2 = $i6 ^ $i16 
(define-const var1045 Int (* var200 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3993 var439 (createdBy/1302857860 var893)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy> 
(assert true)
(define-const var896 Int (hashCode/385986394 (cast-from-var439-to-var986 var3993))) ; Statement: $i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>() 
(define-const var3319 Int (bv2nat (bvxor ((_ int2bv 64) var1045) ((_ int2bv 64) var896)))) ; Statement: $i4 = $i3 ^ $i1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {metadata/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata), hashCode/-1924871451=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata], int), sourceNode/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.rhino.Node), originatingExport/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Export), isModuleNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], boolean), closureNamespace/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], java.lang.String), hashCode/-467973558=([java.lang.String], int), createdBy/1302857860=([com.google.javascript.jscomp.modules.AutoValue_Binding], com.google.javascript.jscomp.modules.Binding$CreatedBy), hashCode/385986394=([java.lang.Enum], int), cast-from-var439-to-var986=([com.google.javascript.jscomp.modules.Binding$CreatedBy], java.lang.Enum)}
; {var1156=com.google.javascript.jscomp.modules.AutoValue_Binding, var893=r0, var66=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata, var441=$r1, var1316=$i0, var2904=i11, var2745=i12, var779=com.google.javascript.rhino.Node, var1373=$r2, var869=$i13, var1015=$i9, var2632=$i10, var52=com.google.javascript.jscomp.modules.Export, var3625=$r4, var2657=$i14, var667=$i7, var3207=$i8, var179=$z0, var1429=$s15, var194=$i5, var2113=$i6, var635=$r6, var3286=null_type, var3568=$r7, var947=$i16, var200=$i2, var1045=$i3, var439=com.google.javascript.jscomp.modules.Binding$CreatedBy, var3993=$r8, var986=java.lang.Enum, var896=$i1, var3319=$i4}
; {com.google.javascript.jscomp.modules.AutoValue_Binding=var1156, r0=var893, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata=var66, $r1=var441, $i0=var1316, i11=var2904, i12=var2745, com.google.javascript.rhino.Node=var779, $r2=var1373, $i13=var869, $i9=var1015, $i10=var2632, com.google.javascript.jscomp.modules.Export=var52, $r4=var3625, $i14=var2657, $i7=var667, $i8=var3207, $z0=var179, $s15=var1429, $i5=var194, $i6=var2113, $r6=var635, null_type=var3286, $r7=var3568, $i16=var947, $i2=var200, $i3=var1045, com.google.javascript.jscomp.modules.Binding$CreatedBy=var439, $r8=var3993, java.lang.Enum=var986, $i1=var896, $i4=var3319}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Binding;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata metadata>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.rhino.Node sourceNode>;	$i13 = 0;	goto [?= $i9 = i12 ^ $i13];	$i9 = i12 ^ $i13;	$i10 = $i9 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Export originatingExport>;	$i14 = 0;	goto [?= $i7 = $i10 ^ $i14];	$i7 = $i10 ^ $i14;	$i8 = $i7 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: boolean isModuleNamespace>;	if $z0 == 0 goto $s15 = 1237;	$s15 = 1237;	$i5 = $i8 ^ $s15;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: java.lang.String closureNamespace>;	$i16 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i2 = $i6 ^ $i16;	$i3 = $i2 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.modules.AutoValue_Binding: com.google.javascript.jscomp.modules.Binding$CreatedBy createdBy>;	$i1 = virtualinvoke $r8.<com.google.javascript.jscomp.modules.Binding$CreatedBy: int hashCode()>();	$i4 = $i3 ^ $i1;	return $i4
;block_num 9