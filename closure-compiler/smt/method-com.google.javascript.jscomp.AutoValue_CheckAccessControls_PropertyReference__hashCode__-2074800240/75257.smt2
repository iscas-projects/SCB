(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var137 0)
(declare-sort var3188 0)
(declare-sort var557 0)
(declare-sort var1757 0)
(declare-sort var1657 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var137) var3188)
(declare-fun hashCode/1739917532 (var557) Int)
(declare-fun cast-from-var3188-to-var557 (var3188) var557)
(declare-fun name/875906655 (var137) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var137) var1757)
(declare-fun hashCode/1275669964 (var1657) Int)
(declare-fun cast-from-var1757-to-var1657 (var1757) var1657)
(declare-fun mutation/875906655 (var137) Bool)
(declare-fun declaration/875906655 (var137) Bool)
(declare-fun override/875906655 (var137) Bool)
(declare-fun readableTypeName/875906655 (var137) var1381)
(declare-fun cast-from-var1381-to-var557 (var1381) var557)
(declare-const null-var137 var137)
(declare-const var3248 var137) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var3248 null-var137)))
(define-const var229 var3188 (sourceNode/875906655 var3248)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var1894 Int (hashCode/1739917532 (cast-from-var3188-to-var557 var229))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3810 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1894)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var2848 Int (* var3810 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3868 String (name/875906655 var3248)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var2613 Int (hashCode/-467973558 var3868)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1696 Int (bv2nat (bvxor ((_ int2bv 64) var2848) ((_ int2bv 64) var2613)))) ; Statement: i13 = i12 ^ $i1 
(define-const var3789 Int (* var1696 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2114 var1757 (receiverType/875906655 var3248)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var3100 Int (hashCode/1275669964 (cast-from-var1757-to-var1657 var2114))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var2996 Int (bv2nat (bvxor ((_ int2bv 64) var3789) ((_ int2bv 64) var3100)))) ; Statement: i15 = i14 ^ $i2 
(define-const var2954 Int (* var2996 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var1482 Bool (mutation/875906655 var3248)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (= (ite var1482 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2432 Int 1237) ; Statement: $s17 = 1237 
(assert true) ; Non Conditional
(define-const var1221 Int (bv2nat (bvxor ((_ int2bv 64) var2954) ((_ int2bv 64) var2432)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var733 Int (* var1221 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3763 Bool (declaration/875906655 var3248)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (= (ite var3763 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1547 Int 1237) ; Statement: $s18 = 1237 
(assert true) ; Non Conditional
(define-const var2359 Int (bv2nat (bvxor ((_ int2bv 64) var733) ((_ int2bv 64) var1547)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var2599 Int (* var2359 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var168 Bool (override/875906655 var3248)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (= (ite var168 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2773 Int 1237) ; Statement: $s19 = 1237 
(assert true) ; Non Conditional
(define-const var2347 Int (bv2nat (bvxor ((_ int2bv 64) var2599) ((_ int2bv 64) var2773)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var2833 Int (* var2347 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var307 var1381 (readableTypeName/875906655 var3248)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var233 Int (hashCode/1739917532 (cast-from-var1381-to-var557 var307))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var2140 Int (bv2nat (bvxor ((_ int2bv 64) var2833) ((_ int2bv 64) var233)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var3188-to-var557=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var1757-to-var1657=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var1381-to-var557=([java.util.function.Supplier], java.lang.Object)}
; {var137=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var3248=r0, var3188=com.google.javascript.rhino.Node, var229=$r1, var557=java.lang.Object, var1894=$i0, var3810=i11, var2848=i12, var3868=$r2, var2613=$i1, var1696=i13, var3789=i14, var1757=com.google.javascript.rhino.jstype.ObjectType, var2114=$r3, var1657=com.google.javascript.rhino.jstype.JSType, var3100=$i2, var2996=i15, var2954=i16, var1482=$z0, var2432=$s17, var1221=$i9, var733=$i10, var3763=$z1, var1547=$s18, var2359=$i7, var2599=$i8, var168=$z2, var2773=$s19, var2347=$i4, var2833=$i5, var1381=java.util.function.Supplier, var307=$r4, var233=$i3, var2140=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var137, r0=var3248, com.google.javascript.rhino.Node=var3188, $r1=var229, java.lang.Object=var557, $i0=var1894, i11=var3810, i12=var2848, $r2=var3868, $i1=var2613, i13=var1696, i14=var3789, com.google.javascript.rhino.jstype.ObjectType=var1757, $r3=var2114, com.google.javascript.rhino.jstype.JSType=var1657, $i2=var3100, i15=var2996, i16=var2954, $z0=var1482, $s17=var2432, $i9=var1221, $i10=var733, $z1=var3763, $s18=var1547, $i7=var2359, $i8=var2599, $z2=var168, $s19=var2773, $i4=var2347, $i5=var2833, java.util.function.Supplier=var1381, $r4=var307, $i3=var233, $i6=var2140}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1237;	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1237;	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1237;	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7