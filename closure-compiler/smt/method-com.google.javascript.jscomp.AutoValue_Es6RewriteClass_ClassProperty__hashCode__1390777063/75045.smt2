(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var94 0)
(declare-sort var2176 0)
(declare-sort var1695 0)
(declare-sort var2447 0)
(declare-sort var1663 0)
(declare-sort var2604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyKey/-117296600 (var94) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun kind/-117296600 (var94) var2176)
(declare-fun hashCode/385986394 (var1695) Int)
(declare-fun cast-from-var2176-to-var1695 (var2176) var1695)
(declare-fun jsDocInfo/-117296600 (var94) var2447)
(declare-fun hashCode/1739917532 (var1663) Int)
(declare-fun cast-from-var2447-to-var1663 (var2447) var1663)
(declare-fun propertyType/-117296600 (var94) var2604)
(declare-const null-var94 var94)
(declare-const null-var2604 var2604)
(declare-const var1963 var94) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty 
(assert (not (= var1963 null-var94)))
(define-const var675 String (propertyKey/-117296600 var1963)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: java.lang.String propertyKey> 
(assert true)
(define-const var2133 Int (hashCode/-467973558 var675)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2432 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2133)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var1158 Int (* var2432 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var2545 var2176 (kind/-117296600 var1963)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind kind> 
(assert true)
(define-const var1106 Int (hashCode/385986394 (cast-from-var2176-to-var1695 var2545))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind: int hashCode()>() 
(define-const var1355 Int (bv2nat (bvxor ((_ int2bv 64) var1158) ((_ int2bv 64) var1106)))) ; Statement: i6 = i5 ^ $i1 
(define-const var1468 Int (* var1355 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var3875 var2447 (jsDocInfo/-117296600 var1963)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.rhino.JSDocInfo jsDocInfo> 
(assert true)
(define-const var1483 Int (hashCode/1739917532 (cast-from-var2447-to-var1663 var3875))) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var1763 Int (bv2nat (bvxor ((_ int2bv 64) var1468) ((_ int2bv 64) var1483)))) ; Statement: i8 = i7 ^ $i2 
(define-const var3576 Int (* var1763 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var2671 var2604 (propertyType/-117296600 var1963)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType> 
(assert (not (not (= var2671 null-var2604)))) ; Negate: Cond: $r4 != null  
(define-const var1724 Int 0) ; Statement: $i10 = 0 
 ; Statement: goto [?= $i3 = i9 ^ $i10] 
(assert true) ; Non Conditional
(define-const var2308 Int (bv2nat (bvxor ((_ int2bv 64) var3576) ((_ int2bv 64) var1724)))) ; Statement: $i3 = i9 ^ $i10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyKey/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], java.lang.String), hashCode/-467973558=([java.lang.String], int), kind/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind), hashCode/385986394=([java.lang.Enum], int), cast-from-var2176-to-var1695=([com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind], java.lang.Enum), jsDocInfo/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.rhino.JSDocInfo), hashCode/1739917532=([java.lang.Object], int), cast-from-var2447-to-var1663=([com.google.javascript.rhino.JSDocInfo], java.lang.Object), propertyType/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.jscomp.colors.Color)}
; {var94=com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty, var1963=r0, var675=$r1, var2133=$i0, var2432=i4, var1158=i5, var2176=com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind, var2545=$r2, var1695=java.lang.Enum, var1106=$i1, var1355=i6, var1468=i7, var2447=com.google.javascript.rhino.JSDocInfo, var3875=$r3, var1663=java.lang.Object, var1483=$i2, var1763=i8, var3576=i9, var2604=com.google.javascript.jscomp.colors.Color, var2671=$r4, var1724=$i10, var2308=$i3}
; {com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty=var94, r0=var1963, $r1=var675, $i0=var2133, i4=var2432, i5=var1158, com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind=var2176, $r2=var2545, java.lang.Enum=var1695, $i1=var1106, i6=var1355, i7=var1468, com.google.javascript.rhino.JSDocInfo=var2447, $r3=var3875, java.lang.Object=var1663, $i2=var1483, i8=var1763, i9=var3576, com.google.javascript.jscomp.colors.Color=var2604, $r4=var2671, $i10=var1724, $i3=var2308}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: java.lang.String propertyKey>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind kind>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind: int hashCode()>();	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.rhino.JSDocInfo jsDocInfo>;	$i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType>;	$i10 = 0;	goto [?= $i3 = i9 ^ $i10];	$i3 = i9 ^ $i10;	return $i3
;block_num 3