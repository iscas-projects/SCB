(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2254 0)
(declare-sort var3374 0)
(declare-sort var1637 0)
(declare-sort var3352 0)
(declare-sort var2804 0)
(declare-sort var1699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceNode/875906655 (var2254) var3374)
(declare-fun hashCode/1739917532 (var1637) Int)
(declare-fun cast-from-var3374-to-var1637 (var3374) var1637)
(declare-fun name/875906655 (var2254) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun receiverType/875906655 (var2254) var3352)
(declare-fun hashCode/1275669964 (var2804) Int)
(declare-fun cast-from-var3352-to-var2804 (var3352) var2804)
(declare-fun mutation/875906655 (var2254) Bool)
(declare-fun declaration/875906655 (var2254) Bool)
(declare-fun override/875906655 (var2254) Bool)
(declare-fun readableTypeName/875906655 (var2254) var1699)
(declare-fun cast-from-var1699-to-var1637 (var1699) var1637)
(declare-const null-var2254 var2254)
(declare-const var1627 var2254) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference 
(assert (not (= var1627 null-var2254)))
(define-const var1698 var3374 (sourceNode/875906655 var1627)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode> 
(assert true)
(define-const var2353 Int (hashCode/1739917532 (cast-from-var3374-to-var1637 var1698))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var374 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2353)))) ; Statement: i11 = 1000003 ^ $i0 
(define-const var3898 Int (* var374 1000003)) ; Statement: i12 = i11 * 1000003 
(define-const var1934 String (name/875906655 var1627)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name> 
(assert true)
(define-const var410 Int (hashCode/-467973558 var1934)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var449 Int (bv2nat (bvxor ((_ int2bv 64) var3898) ((_ int2bv 64) var410)))) ; Statement: i13 = i12 ^ $i1 
(define-const var2701 Int (* var449 1000003)) ; Statement: i14 = i13 * 1000003 
(define-const var2667 var3352 (receiverType/875906655 var1627)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType> 
(assert true)
(define-const var3383 Int (hashCode/1275669964 (cast-from-var3352-to-var2804 var2667))) ; Statement: $i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>() 
(define-const var377 Int (bv2nat (bvxor ((_ int2bv 64) var2701) ((_ int2bv 64) var3383)))) ; Statement: i15 = i14 ^ $i2 
(define-const var3538 Int (* var377 1000003)) ; Statement: i16 = i15 * 1000003 
(define-const var2998 Bool (mutation/875906655 var1627)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation> 
 ; Statement: if $z0 == 0 goto $s17 = 1237 
(assert (not (= (ite var2998 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3446 Int 1231) ; Statement: $s17 = 1231 
 ; Statement: goto [?= $i9 = i16 ^ $s17] 
(assert true) ; Non Conditional
(define-const var3977 Int (bv2nat (bvxor ((_ int2bv 64) var3538) ((_ int2bv 64) var3446)))) ; Statement: $i9 = i16 ^ $s17 
(define-const var2236 Int (* var3977 1000003)) ; Statement: $i10 = $i9 * 1000003 
(define-const var20 Bool (declaration/875906655 var1627)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration> 
 ; Statement: if $z1 == 0 goto $s18 = 1237 
(assert (not (= (ite var20 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var800 Int 1231) ; Statement: $s18 = 1231 
 ; Statement: goto [?= $i7 = $i10 ^ $s18] 
(assert true) ; Non Conditional
(define-const var1907 Int (bv2nat (bvxor ((_ int2bv 64) var2236) ((_ int2bv 64) var800)))) ; Statement: $i7 = $i10 ^ $s18 
(define-const var837 Int (* var1907 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1478 Bool (override/875906655 var1627)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override> 
 ; Statement: if $z2 == 0 goto $s19 = 1237 
(assert (not (= (ite var1478 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var207 Int 1231) ; Statement: $s19 = 1231 
 ; Statement: goto [?= $i4 = $i8 ^ $s19] 
(assert true) ; Non Conditional
(define-const var925 Int (bv2nat (bvxor ((_ int2bv 64) var837) ((_ int2bv 64) var207)))) ; Statement: $i4 = $i8 ^ $s19 
(define-const var2569 Int (* var925 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2215 var1699 (readableTypeName/875906655 var1627)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName> 
(assert true)
(define-const var1044 Int (hashCode/1739917532 (cast-from-var1699-to-var1637 var2215))) ; Statement: $i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var3104 Int (bv2nat (bvxor ((_ int2bv 64) var2569) ((_ int2bv 64) var1044)))) ; Statement: $i6 = $i5 ^ $i3 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceNode/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var3374-to-var1637=([com.google.javascript.rhino.Node], java.lang.Object), name/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), receiverType/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], com.google.javascript.rhino.jstype.ObjectType), hashCode/1275669964=([com.google.javascript.rhino.jstype.JSType], int), cast-from-var3352-to-var2804=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType), mutation/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), declaration/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), override/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], boolean), readableTypeName/875906655=([com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference], java.util.function.Supplier), cast-from-var1699-to-var1637=([java.util.function.Supplier], java.lang.Object)}
; {var2254=com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference, var1627=r0, var3374=com.google.javascript.rhino.Node, var1698=$r1, var1637=java.lang.Object, var2353=$i0, var374=i11, var3898=i12, var1934=$r2, var410=$i1, var449=i13, var2701=i14, var3352=com.google.javascript.rhino.jstype.ObjectType, var2667=$r3, var2804=com.google.javascript.rhino.jstype.JSType, var3383=$i2, var377=i15, var3538=i16, var2998=$z0, var3446=$s17, var3977=$i9, var2236=$i10, var20=$z1, var800=$s18, var1907=$i7, var837=$i8, var1478=$z2, var207=$s19, var925=$i4, var2569=$i5, var1699=java.util.function.Supplier, var2215=$r4, var1044=$i3, var3104=$i6}
; {com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference=var2254, r0=var1627, com.google.javascript.rhino.Node=var3374, $r1=var1698, java.lang.Object=var1637, $i0=var2353, i11=var374, i12=var3898, $r2=var1934, $i1=var410, i13=var449, i14=var2701, com.google.javascript.rhino.jstype.ObjectType=var3352, $r3=var2667, com.google.javascript.rhino.jstype.JSType=var2804, $i2=var3383, i15=var377, i16=var3538, $z0=var2998, $s17=var3446, $i9=var3977, $i10=var2236, $z1=var20, $s18=var800, $i7=var1907, $i8=var837, $z2=var1478, $s19=var207, $i4=var925, $i5=var2569, java.util.function.Supplier=var1699, $r4=var2215, $i3=var1044, $i6=var3104}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.Node sourceNode>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 1000003 ^ $i0;	i12 = i11 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = i12 ^ $i1;	i14 = i13 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: com.google.javascript.rhino.jstype.ObjectType receiverType>;	$i2 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.ObjectType: int hashCode()>();	i15 = i14 ^ $i2;	i16 = i15 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean mutation>;	if $z0 == 0 goto $s17 = 1237;	$s17 = 1231;	goto [?= $i9 = i16 ^ $s17];	$i9 = i16 ^ $s17;	$i10 = $i9 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean declaration>;	if $z1 == 0 goto $s18 = 1237;	$s18 = 1231;	goto [?= $i7 = $i10 ^ $s18];	$i7 = $i10 ^ $s18;	$i8 = $i7 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: boolean override>;	if $z2 == 0 goto $s19 = 1237;	$s19 = 1231;	goto [?= $i4 = $i8 ^ $s19];	$i4 = $i8 ^ $s19;	$i5 = $i4 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CheckAccessControls_PropertyReference: java.util.function.Supplier readableTypeName>;	$i3 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	$i6 = $i5 ^ $i3;	return $i6
;block_num 7