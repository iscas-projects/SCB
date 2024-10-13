(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1200 0)
(declare-sort var2489 0)
(declare-sort var1530 0)
(declare-sort var1401 0)
(declare-sort var3826 0)
(declare-sort var3044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var1200) var2489)
(declare-fun hashCode/1739917532 (var1530) Int)
(declare-fun cast-from-var2489-to-var1530 (var2489) var1530)
(declare-fun name/875906655 (var1200) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var1200) var1401)
(declare-fun hashCode/1275669964 (var3826) Int)
(declare-fun cast-from-var1401-to-var3826 (var1401) var3826)
(declare-fun mutation/875906655 (var1200) Bool)
(declare-fun declaration/875906655 (var1200) Bool)
(declare-fun override/875906655 (var1200) Bool)
(declare-fun readableTypeName/875906655 (var1200) var3044)
(declare-fun cast-from-var3044-to-var1530 (var3044) var1530)
(declare-const null-var1200 var1200)
(declare-const var1955 var1200) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var1955 null-var1200)))
(define-const var646 var2489 (sourceNode/875906655 var1955)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var1153 Int (hashCode/1739917532 (cast-from-var2489-to-var1530 var646))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3883 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1153)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2019 Int (* var3883 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var607 String (name/875906655 var1955)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var401 Int (hashCode/-467973558 var607)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1879 Int (bv2nat (bvxor ((_ int2bv 64) var2019) ((_ int2bv 64) var401)))) ; Statement: i13 = i12 ^ $i1 
(define-const var2618 Int (* var1879 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2294 var1401 (receiverType/875906655 var1955)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var1432 Int (hashCode/1275669964 (cast-from-var1401-to-var3826 var2294))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var2440 Int (bv2nat (bvxor ((_ int2bv 64) var2618) ((_ int2bv 64) var1432)))) ; Statement: i15 = i14 ^ $i2 
(define-const var1362 Int (* var2440 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var155 Bool (mutation/875906655 var1955)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (= (ite var155 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1269 Int 1237) ; Statement: $s17 = 1237 
(assert true) ; Non Conditional
(define-const var3554 Int (bv2nat (bvxor ((_ int2bv 64) var1362) ((_ int2bv 64) var1269)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var3458 Int (* var3554 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var2326 Bool (declaration/875906655 var1955)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (not (= (ite var2326 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3413 Int 1231) ; Statement: $s18 = 1231 
 ; Statement: goto [?= $i7 = $i10 ^ $s18] 
(assert true) ; Non Conditional
(define-const var1142 Int (bv2nat (bvxor ((_ int2bv 64) var3458) ((_ int2bv 64) var3413)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var1459 Int (* var1142 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3852 Bool (override/875906655 var1955)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (not (= (ite var3852 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1701 Int 1231) ; Statement: $s19 = 1231 
 ; Statement: goto [?= $i4 = $i8 ^ $s19] 
(assert true) ; Non Conditional
(define-const var1892 Int (bv2nat (bvxor ((_ int2bv 64) var1459) ((_ int2bv 64) var1701)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var3744 Int (* var1892 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var1554 var3044 (readableTypeName/875906655 var1955)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var3579 Int (hashCode/1739917532 (cast-from-var3044-to-var1530 var1554))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var3398 Int (bv2nat (bvxor ((_ int2bv 64) var3744) ((_ int2bv 64) var3579)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2489-to-var1530=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var1401-to-var3826=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var3044-to-var1530=([java.util.function.Supplier], java.lang.Object)}
; {var1200=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var1955=r0, var2489=com.google.javascript.rhino.Node, var646=$r1, var1530=java.lang.Object, var1153=$i0, var3883=i11, var2019=i12, var607=$r2, var401=$i1, var1879=i13, var2618=i14, var1401=com.google.javascript.rhino.jstype.ObjectType, var2294=$r3, var3826=com.google.javascript.rhino.jstype.JSType, var1432=$i2, var2440=i15, var1362=i16, var155=$z0, var1269=$s17, var3554=$i9, var3458=$i10, var2326=$z1, var3413=$s18, var1142=$i7, var1459=$i8, var3852=$z2, var1701=$s19, var1892=$i4, var3744=$i5, var3044=java.util.function.Supplier, var1554=$r4, var3579=$i3, var3398=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var1200, r0=var1955, com.google.javascript.rhino.Node=var2489, $r1=var646, java.lang.Object=var1530, $i0=var1153, i11=var3883, i12=var2019, $r2=var607, $i1=var401, i13=var1879, i14=var2618, com.google.javascript.rhino.jstype.ObjectType=var1401, $r3=var2294, com.google.javascript.rhino.jstype.JSType=var3826, $i2=var1432, i15=var2440, i16=var1362, $z0=var155, $s17=var1269, $i9=var3554, $i10=var3458, $z1=var2326, $s18=var3413, $i7=var1142, $i8=var1459, $z2=var3852, $s19=var1701, $i4=var1892, $i5=var3744, java.util.function.Supplier=var3044, $r4=var1554, $i3=var3579, $i6=var3398}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1237;	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1231;	goto [?= $i7 = $i10 ^ $s18];	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1231;	goto [?= $i4 = $i8 ^ $s19];	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7