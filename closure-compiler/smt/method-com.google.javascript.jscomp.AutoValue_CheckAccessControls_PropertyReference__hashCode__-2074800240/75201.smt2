(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3567 0)
(declare-sort var1912 0)
(declare-sort var1464 0)
(declare-sort var993 0)
(declare-sort var1103 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var3567) var1912)
(declare-fun hashCode/1739917532 (var1464) Int)
(declare-fun cast-from-var1912-to-var1464 (var1912) var1464)
(declare-fun name/875906655 (var3567) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var3567) var993)
(declare-fun hashCode/1275669964 (var1103) Int)
(declare-fun cast-from-var993-to-var1103 (var993) var1103)
(declare-fun mutation/875906655 (var3567) Bool)
(declare-fun declaration/875906655 (var3567) Bool)
(declare-fun override/875906655 (var3567) Bool)
(declare-fun readableTypeName/875906655 (var3567) var771)
(declare-fun cast-from-var771-to-var1464 (var771) var1464)
(declare-const null-var3567 var3567)
(declare-const var2829 var3567) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var2829 null-var3567)))
(define-const var858 var1912 (sourceNode/875906655 var2829)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var485 Int (hashCode/1739917532 (cast-from-var1912-to-var1464 var858))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var2182 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var485)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var255 Int (* var2182 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var3584 String (name/875906655 var2829)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var3411 Int (hashCode/-467973558 var3584)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2035 Int (bv2nat (bvxor ((_ int2bv 64) var255) ((_ int2bv 64) var3411)))) ; Statement: i13 = i12 ^ $i1 
(define-const var944 Int (* var2035 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var655 var993 (receiverType/875906655 var2829)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var3191 Int (hashCode/1275669964 (cast-from-var993-to-var1103 var655))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var336 Int (bv2nat (bvxor ((_ int2bv 64) var944) ((_ int2bv 64) var3191)))) ; Statement: i15 = i14 ^ $i2 
(define-const var3184 Int (* var336 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var841 Bool (mutation/875906655 var2829)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (not (= (ite var841 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1234 Int 1231) ; Statement: $s17 = 1231 
 ; Statement: goto [?= $i9 = i16 ^ $s17] 
(assert true) ; Non Conditional
(define-const var763 Int (bv2nat (bvxor ((_ int2bv 64) var3184) ((_ int2bv 64) var1234)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var3588 Int (* var763 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var3229 Bool (declaration/875906655 var2829)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (= (ite var3229 1 0) 0)) ; Cond: $z1 == 0 
(define-const var130 Int 1237) ; Statement: $s18 = 1237 
(assert true) ; Non Conditional
(define-const var1594 Int (bv2nat (bvxor ((_ int2bv 64) var3588) ((_ int2bv 64) var130)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var3752 Int (* var1594 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var251 Bool (override/875906655 var2829)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (not (= (ite var251 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2826 Int 1231) ; Statement: $s19 = 1231 
 ; Statement: goto [?= $i4 = $i8 ^ $s19] 
(assert true) ; Non Conditional
(define-const var918 Int (bv2nat (bvxor ((_ int2bv 64) var3752) ((_ int2bv 64) var2826)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var499 Int (* var918 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2824 var771 (readableTypeName/875906655 var2829)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var3806 Int (hashCode/1739917532 (cast-from-var771-to-var1464 var2824))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var3675 Int (bv2nat (bvxor ((_ int2bv 64) var499) ((_ int2bv 64) var3806)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var1912-to-var1464=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var993-to-var1103=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var771-to-var1464=([java.util.function.Supplier], java.lang.Object)}
; {var3567=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var2829=r0, var1912=com.google.javascript.rhino.Node, var858=$r1, var1464=java.lang.Object, var485=$i0, var2182=i11, var255=i12, var3584=$r2, var3411=$i1, var2035=i13, var944=i14, var993=com.google.javascript.rhino.jstype.ObjectType, var655=$r3, var1103=com.google.javascript.rhino.jstype.JSType, var3191=$i2, var336=i15, var3184=i16, var841=$z0, var1234=$s17, var763=$i9, var3588=$i10, var3229=$z1, var130=$s18, var1594=$i7, var3752=$i8, var251=$z2, var2826=$s19, var918=$i4, var499=$i5, var771=java.util.function.Supplier, var2824=$r4, var3806=$i3, var3675=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var3567, r0=var2829, com.google.javascript.rhino.Node=var1912, $r1=var858, java.lang.Object=var1464, $i0=var485, i11=var2182, i12=var255, $r2=var3584, $i1=var3411, i13=var2035, i14=var944, com.google.javascript.rhino.jstype.ObjectType=var993, $r3=var655, com.google.javascript.rhino.jstype.JSType=var1103, $i2=var3191, i15=var336, i16=var3184, $z0=var841, $s17=var1234, $i9=var763, $i10=var3588, $z1=var3229, $s18=var130, $i7=var1594, $i8=var3752, $z2=var251, $s19=var2826, $i4=var918, $i5=var499, java.util.function.Supplier=var771, $r4=var2824, $i3=var3806, $i6=var3675}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1231;	goto [?= $i9 = i16 ^ $s17];	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1237;	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1231;	goto [?= $i4 = $i8 ^ $s19];	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7