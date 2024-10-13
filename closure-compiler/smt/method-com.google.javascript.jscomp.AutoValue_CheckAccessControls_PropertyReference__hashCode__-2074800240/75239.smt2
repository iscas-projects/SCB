(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3618 0)
(declare-sort var1823 0)
(declare-sort var1120 0)
(declare-sort var1093 0)
(declare-sort var3161 0)
(declare-sort var3784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var3618) var1823)
(declare-fun hashCode/1739917532 (var1120) Int)
(declare-fun cast-from-var1823-to-var1120 (var1823) var1120)
(declare-fun name/875906655 (var3618) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var3618) var1093)
(declare-fun hashCode/1275669964 (var3161) Int)
(declare-fun cast-from-var1093-to-var3161 (var1093) var3161)
(declare-fun mutation/875906655 (var3618) Bool)
(declare-fun declaration/875906655 (var3618) Bool)
(declare-fun override/875906655 (var3618) Bool)
(declare-fun readableTypeName/875906655 (var3618) var3784)
(declare-fun cast-from-var3784-to-var1120 (var3784) var1120)
(declare-const null-var3618 var3618)
(declare-const var3213 var3618) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var3213 null-var3618)))
(define-const var1969 var1823 (sourceNode/875906655 var3213)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3065 Int (hashCode/1739917532 (cast-from-var1823-to-var1120 var1969))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var2977 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3065)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var830 Int (* var2977 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3726 String (name/875906655 var3213)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var3997 Int (hashCode/-467973558 var3726)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1370 Int (bv2nat (bvxor ((_ int2bv 64) var830) ((_ int2bv 64) var3997)))) ; Statement: i13 = i12 ^ $i1 
(define-const var598 Int (* var1370 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var3554 var1093 (receiverType/875906655 var3213)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var2803 Int (hashCode/1275669964 (cast-from-var1093-to-var3161 var3554))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var1898 Int (bv2nat (bvxor ((_ int2bv 64) var598) ((_ int2bv 64) var2803)))) ; Statement: i15 = i14 ^ $i2 
(define-const var3205 Int (* var1898 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var1285 Bool (mutation/875906655 var3213)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (= (ite var1285 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3959 Int 1237) ; Statement: $s17 = 1237 
(assert true) ; Non Conditional
(define-const var639 Int (bv2nat (bvxor ((_ int2bv 64) var3205) ((_ int2bv 64) var3959)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var3178 Int (* var639 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var669 Bool (declaration/875906655 var3213)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (not (= (ite var669 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var176 Int 1231) ; Statement: $s18 = 1231 
 ; Statement: goto [?= $i7 = $i10 ^ $s18] 
(assert true) ; Non Conditional
(define-const var3192 Int (bv2nat (bvxor ((_ int2bv 64) var3178) ((_ int2bv 64) var176)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var1236 Int (* var3192 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var965 Bool (override/875906655 var3213)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (= (ite var965 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2938 Int 1237) ; Statement: $s19 = 1237 
(assert true) ; Non Conditional
(define-const var836 Int (bv2nat (bvxor ((_ int2bv 64) var1236) ((_ int2bv 64) var2938)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var949 Int (* var836 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var3346 var3784 (readableTypeName/875906655 var3213)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var1052 Int (hashCode/1739917532 (cast-from-var3784-to-var1120 var3346))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var1794 Int (bv2nat (bvxor ((_ int2bv 64) var949) ((_ int2bv 64) var1052)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var1823-to-var1120=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var1093-to-var3161=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var3784-to-var1120=([java.util.function.Supplier], java.lang.Object)}
; {var3618=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var3213=r0, var1823=com.google.javascript.rhino.Node, var1969=$r1, var1120=java.lang.Object, var3065=$i0, var2977=i11, var830=i12, var3726=$r2, var3997=$i1, var1370=i13, var598=i14, var1093=com.google.javascript.rhino.jstype.ObjectType, var3554=$r3, var3161=com.google.javascript.rhino.jstype.JSType, var2803=$i2, var1898=i15, var3205=i16, var1285=$z0, var3959=$s17, var639=$i9, var3178=$i10, var669=$z1, var176=$s18, var3192=$i7, var1236=$i8, var965=$z2, var2938=$s19, var836=$i4, var949=$i5, var3784=java.util.function.Supplier, var3346=$r4, var1052=$i3, var1794=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var3618, r0=var3213, com.google.javascript.rhino.Node=var1823, $r1=var1969, java.lang.Object=var1120, $i0=var3065, i11=var2977, i12=var830, $r2=var3726, $i1=var3997, i13=var1370, i14=var598, com.google.javascript.rhino.jstype.ObjectType=var1093, $r3=var3554, com.google.javascript.rhino.jstype.JSType=var3161, $i2=var2803, i15=var1898, i16=var3205, $z0=var1285, $s17=var3959, $i9=var639, $i10=var3178, $z1=var669, $s18=var176, $i7=var3192, $i8=var1236, $z2=var965, $s19=var2938, $i4=var836, $i5=var949, java.util.function.Supplier=var3784, $r4=var3346, $i3=var1052, $i6=var1794}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1237;	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1231;	goto [?= $i7 = $i10 ^ $s18];	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1237;	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7