(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2249 0)
(declare-sort var2045 0)
(declare-sort var755 0)
(declare-sort var1251 0)
(declare-sort var3065 0)
(declare-sort var897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var2249) var2045)
(declare-fun hashCode/1739917532 (var755) Int)
(declare-fun cast-from-var2045-to-var755 (var2045) var755)
(declare-fun name/875906655 (var2249) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var2249) var1251)
(declare-fun hashCode/1275669964 (var3065) Int)
(declare-fun cast-from-var1251-to-var3065 (var1251) var3065)
(declare-fun mutation/875906655 (var2249) Bool)
(declare-fun declaration/875906655 (var2249) Bool)
(declare-fun override/875906655 (var2249) Bool)
(declare-fun readableTypeName/875906655 (var2249) var897)
(declare-fun cast-from-var897-to-var755 (var897) var755)
(declare-const null-var2249 var2249)
(declare-const var72 var2249) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var72 null-var2249)))
(define-const var3017 var2045 (sourceNode/875906655 var72)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var593 Int (hashCode/1739917532 (cast-from-var2045-to-var755 var3017))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3594 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var593)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var1713 Int (* var3594 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var2048 String (name/875906655 var72)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var365 Int (hashCode/-467973558 var2048)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var417 Int (bv2nat (bvxor ((_ int2bv 64) var1713) ((_ int2bv 64) var365)))) ; Statement: i13 = i12 ^ $i1 
(define-const var1209 Int (* var417 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var603 var1251 (receiverType/875906655 var72)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var3413 Int (hashCode/1275669964 (cast-from-var1251-to-var3065 var603))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var894 Int (bv2nat (bvxor ((_ int2bv 64) var1209) ((_ int2bv 64) var3413)))) ; Statement: i15 = i14 ^ $i2 
(define-const var1127 Int (* var894 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var3348 Bool (mutation/875906655 var72)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (= (ite var3348 1 0) 0)) ; Cond: $z0 == 0 
(define-const var656 Int 1237) ; Statement: $s17 = 1237 
(assert true) ; Non Conditional
(define-const var1115 Int (bv2nat (bvxor ((_ int2bv 64) var1127) ((_ int2bv 64) var656)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var1123 Int (* var1115 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var1489 Bool (declaration/875906655 var72)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (= (ite var1489 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3150 Int 1237) ; Statement: $s18 = 1237 
(assert true) ; Non Conditional
(define-const var584 Int (bv2nat (bvxor ((_ int2bv 64) var1123) ((_ int2bv 64) var3150)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var361 Int (* var584 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2636 Bool (override/875906655 var72)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (not (= (ite var2636 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2893 Int 1231) ; Statement: $s19 = 1231 
 ; Statement: goto [?= $i4 = $i8 ^ $s19] 
(assert true) ; Non Conditional
(define-const var3745 Int (bv2nat (bvxor ((_ int2bv 64) var361) ((_ int2bv 64) var2893)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var2366 Int (* var3745 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var3576 var897 (readableTypeName/875906655 var72)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var775 Int (hashCode/1739917532 (cast-from-var897-to-var755 var3576))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var1640 Int (bv2nat (bvxor ((_ int2bv 64) var2366) ((_ int2bv 64) var775)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var2045-to-var755=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var1251-to-var3065=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var897-to-var755=([java.util.function.Supplier], java.lang.Object)}
; {var2249=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var72=r0, var2045=com.google.javascript.rhino.Node, var3017=$r1, var755=java.lang.Object, var593=$i0, var3594=i11, var1713=i12, var2048=$r2, var365=$i1, var417=i13, var1209=i14, var1251=com.google.javascript.rhino.jstype.ObjectType, var603=$r3, var3065=com.google.javascript.rhino.jstype.JSType, var3413=$i2, var894=i15, var1127=i16, var3348=$z0, var656=$s17, var1115=$i9, var1123=$i10, var1489=$z1, var3150=$s18, var584=$i7, var361=$i8, var2636=$z2, var2893=$s19, var3745=$i4, var2366=$i5, var897=java.util.function.Supplier, var3576=$r4, var775=$i3, var1640=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var2249, r0=var72, com.google.javascript.rhino.Node=var2045, $r1=var3017, java.lang.Object=var755, $i0=var593, i11=var3594, i12=var1713, $r2=var2048, $i1=var365, i13=var417, i14=var1209, com.google.javascript.rhino.jstype.ObjectType=var1251, $r3=var603, com.google.javascript.rhino.jstype.JSType=var3065, $i2=var3413, i15=var894, i16=var1127, $z0=var3348, $s17=var656, $i9=var1115, $i10=var1123, $z1=var1489, $s18=var3150, $i7=var584, $i8=var361, $z2=var2636, $s19=var2893, $i4=var3745, $i5=var2366, java.util.function.Supplier=var897, $r4=var3576, $i3=var775, $i6=var1640}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1237;	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1237;	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1231;	goto [?= $i4 = $i8 ^ $s19];	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7