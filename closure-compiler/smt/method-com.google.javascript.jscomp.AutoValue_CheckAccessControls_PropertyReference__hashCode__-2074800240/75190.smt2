(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort var2531 0)
(declare-sort var492 0)
(declare-sort var491 0)
(declare-sort var2840 0)
(declare-sort var3457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var3708) var2531)
(declare-fun hashCode/1739917532 (var492) Int)
(declare-fun cast-from-var2531-to-var492 (var2531) var492)
(declare-fun name/875906655 (var3708) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var3708) var491)
(declare-fun hashCode/1275669964 (var2840) Int)
(declare-fun cast-from-var491-to-var2840 (var491) var2840)
(declare-fun mutation/875906655 (var3708) Bool)
(declare-fun declaration/875906655 (var3708) Bool)
(declare-fun override/875906655 (var3708) Bool)
(declare-fun readableTypeName/875906655 (var3708) var3457)
(declare-fun cast-from-var3457-to-var492 (var3457) var492)
(declare-const null-var3708 var3708)
(declare-const var1882 var3708) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var1882 null-var3708)))
(define-const var3322 var2531 (sourceNode/875906655 var1882)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var2718 Int (hashCode/1739917532 (cast-from-var2531-to-var492 var3322))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var532 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2718)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1030 Int (* var532 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var1102 String (name/875906655 var1882)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var739 Int (hashCode/-467973558 var1102)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3900 Int (bv2nat (bvxor ((_ int2bv 64) var1030) ((_ int2bv 64) var739)))) ; Statement: i13 = i12 ^ $i1 
(define-const var1272 Int (* var3900 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2598 var491 (receiverType/875906655 var1882)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var1639 Int (hashCode/1275669964 (cast-from-var491-to-var2840 var2598))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var2319 Int (bv2nat (bvxor ((_ int2bv 64) var1272) ((_ int2bv 64) var1639)))) ; Statement: i15 = i14 ^ $i2 
(define-const var973 Int (* var2319 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var66 Bool (mutation/875906655 var1882)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (not (= (ite var66 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var479 Int 1231) ; Statement: $s17 = 1231 
 ; Statement: goto [?= $i9 = i16 ^ $s17] 
(assert true) ; Non Conditional
(define-const var1724 Int (bv2nat (bvxor ((_ int2bv 64) var973) ((_ int2bv 64) var479)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var710 Int (* var1724 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var161 Bool (declaration/875906655 var1882)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (not (= (ite var161 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var668 Int 1231) ; Statement: $s18 = 1231 
 ; Statement: goto [?= $i7 = $i10 ^ $s18] 
(assert true) ; Non Conditional
(define-const var1894 Int (bv2nat (bvxor ((_ int2bv 64) var710) ((_ int2bv 64) var668)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var2112 Int (* var1894 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1429 Bool (override/875906655 var1882)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (= (ite var1429 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1383 Int 1237) ; Statement: $s19 = 1237 
(assert true) ; Non Conditional
(define-const var1719 Int (bv2nat (bvxor ((_ int2bv 64) var2112) ((_ int2bv 64) var1383)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var3039 Int (* var1719 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2185 var3457 (readableTypeName/875906655 var1882)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var2211 Int (hashCode/1739917532 (cast-from-var3457-to-var492 var2185))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var529 Int (bv2nat (bvxor ((_ int2bv 64) var3039) ((_ int2bv 64) var2211)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2531-to-var492=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var491-to-var2840=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var3457-to-var492=([java.util.function.Supplier], java.lang.Object)}
; {var3708=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var1882=r0, var2531=com.google.javascript.rhino.Node, var3322=$r1, var492=java.lang.Object, var2718=$i0, var532=i11, var1030=i12, var1102=$r2, var739=$i1, var3900=i13, var1272=i14, var491=com.google.javascript.rhino.jstype.ObjectType, var2598=$r3, var2840=com.google.javascript.rhino.jstype.JSType, var1639=$i2, var2319=i15, var973=i16, var66=$z0, var479=$s17, var1724=$i9, var710=$i10, var161=$z1, var668=$s18, var1894=$i7, var2112=$i8, var1429=$z2, var1383=$s19, var1719=$i4, var3039=$i5, var3457=java.util.function.Supplier, var2185=$r4, var2211=$i3, var529=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var3708, r0=var1882, com.google.javascript.rhino.Node=var2531, $r1=var3322, java.lang.Object=var492, $i0=var2718, i11=var532, i12=var1030, $r2=var1102, $i1=var739, i13=var3900, i14=var1272, com.google.javascript.rhino.jstype.ObjectType=var491, $r3=var2598, com.google.javascript.rhino.jstype.JSType=var2840, $i2=var1639, i15=var2319, i16=var973, $z0=var66, $s17=var479, $i9=var1724, $i10=var710, $z1=var161, $s18=var668, $i7=var1894, $i8=var2112, $z2=var1429, $s19=var1383, $i4=var1719, $i5=var3039, java.util.function.Supplier=var3457, $r4=var2185, $i3=var2211, $i6=var529}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1231;	goto [?= $i9 = i16 ^ $s17];	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1231;	goto [?= $i7 = $i10 ^ $s18];	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1237;	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7