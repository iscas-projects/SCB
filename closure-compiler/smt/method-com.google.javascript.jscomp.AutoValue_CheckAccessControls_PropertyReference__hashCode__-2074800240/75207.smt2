(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var932 0)
(declare-sort var214 0)
(declare-sort var485 0)
(declare-sort var2653 0)
(declare-sort var3606 0)
(declare-sort var3461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var932) var214)
(declare-fun hashCode/1739917532 (var485) Int)
(declare-fun cast-from-var214-to-var485 (var214) var485)
(declare-fun name/875906655 (var932) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var932) var2653)
(declare-fun hashCode/1275669964 (var3606) Int)
(declare-fun cast-from-var2653-to-var3606 (var2653) var3606)
(declare-fun mutation/875906655 (var932) Bool)
(declare-fun declaration/875906655 (var932) Bool)
(declare-fun override/875906655 (var932) Bool)
(declare-fun readableTypeName/875906655 (var932) var3461)
(declare-fun cast-from-var3461-to-var485 (var3461) var485)
(declare-const null-var932 var932)
(declare-const var16 var932) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var16 null-var932)))
(define-const var1368 var214 (sourceNode/875906655 var16)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var3027 Int (hashCode/1739917532 (cast-from-var214-to-var485 var1368))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var285 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3027)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var3462 Int (* var285 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2005 String (name/875906655 var16)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var2242 Int (hashCode/-467973558 var2005)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1279 Int (bv2nat (bvxor ((_ int2bv 64) var3462) ((_ int2bv 64) var2242)))) ; Statement: i13 = i12 ^ $i1 
(define-const var376 Int (* var1279 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var597 var2653 (receiverType/875906655 var16)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var3121 Int (hashCode/1275669964 (cast-from-var2653-to-var3606 var597))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var3700 Int (bv2nat (bvxor ((_ int2bv 64) var376) ((_ int2bv 64) var3121)))) ; Statement: i15 = i14 ^ $i2 
(define-const var2603 Int (* var3700 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var1816 Bool (mutation/875906655 var16)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (not (= (ite var1816 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1061 Int 1231) ; Statement: $s17 = 1231 
 ; Statement: goto [?= $i9 = i16 ^ $s17] 
(assert true) ; Non Conditional
(define-const var3417 Int (bv2nat (bvxor ((_ int2bv 64) var2603) ((_ int2bv 64) var1061)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var1025 Int (* var3417 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var1875 Bool (declaration/875906655 var16)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (= (ite var1875 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1201 Int 1237) ; Statement: $s18 = 1237 
(assert true) ; Non Conditional
(define-const var2821 Int (bv2nat (bvxor ((_ int2bv 64) var1025) ((_ int2bv 64) var1201)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var3520 Int (* var2821 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var355 Bool (override/875906655 var16)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (= (ite var355 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2456 Int 1237) ; Statement: $s19 = 1237 
(assert true) ; Non Conditional
(define-const var308 Int (bv2nat (bvxor ((_ int2bv 64) var3520) ((_ int2bv 64) var2456)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var2263 Int (* var308 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var444 var3461 (readableTypeName/875906655 var16)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var1337 Int (hashCode/1739917532 (cast-from-var3461-to-var485 var444))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var1667 Int (bv2nat (bvxor ((_ int2bv 64) var2263) ((_ int2bv 64) var1337)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var214-to-var485=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var2653-to-var3606=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var3461-to-var485=([java.util.function.Supplier], java.lang.Object)}
; {var932=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var16=r0, var214=com.google.javascript.rhino.Node, var1368=$r1, var485=java.lang.Object, var3027=$i0, var285=i11, var3462=i12, var2005=$r2, var2242=$i1, var1279=i13, var376=i14, var2653=com.google.javascript.rhino.jstype.ObjectType, var597=$r3, var3606=com.google.javascript.rhino.jstype.JSType, var3121=$i2, var3700=i15, var2603=i16, var1816=$z0, var1061=$s17, var3417=$i9, var1025=$i10, var1875=$z1, var1201=$s18, var2821=$i7, var3520=$i8, var355=$z2, var2456=$s19, var308=$i4, var2263=$i5, var3461=java.util.function.Supplier, var444=$r4, var1337=$i3, var1667=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var932, r0=var16, com.google.javascript.rhino.Node=var214, $r1=var1368, java.lang.Object=var485, $i0=var3027, i11=var285, i12=var3462, $r2=var2005, $i1=var2242, i13=var1279, i14=var376, com.google.javascript.rhino.jstype.ObjectType=var2653, $r3=var597, com.google.javascript.rhino.jstype.JSType=var3606, $i2=var3121, i15=var3700, i16=var2603, $z0=var1816, $s17=var1061, $i9=var3417, $i10=var1025, $z1=var1875, $s18=var1201, $i7=var2821, $i8=var3520, $z2=var355, $s19=var2456, $i4=var308, $i5=var2263, java.util.function.Supplier=var3461, $r4=var444, $i3=var1337, $i6=var1667}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1231;	goto [?= $i9 = i16 ^ $s17];	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1237;	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1237;	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7