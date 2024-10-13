(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort var687 0)
(declare-sort var812 0)
(declare-sort var1246 0)
(declare-sort var1441 0)
(declare-sort var2007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyKey/-117296600 (var709) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun kind/-117296600 (var709) var687)
(declare-fun hashCode/385986394 (var812) Int)
(declare-fun cast-from-var687-to-var812 (var687) var812)
(declare-fun jsDocInfo/-117296600 (var709) var1246)
(declare-fun hashCode/1739917532 (var1441) Int)
(declare-fun cast-from-var1246-to-var1441 (var1246) var1441)
(declare-fun propertyType/-117296600 (var709) var2007)
(declare-fun cast-from-var2007-to-var1441 (var2007) var1441)
(declare-const null-var709 var709)
(declare-const null-var2007 var2007)
(declare-const var1738 var709) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty 
(assert (not (= var1738 null-var709)))
(define-const var2831 String (propertyKey/-117296600 var1738)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: java.lang.String propertyKey> 
(assert true)
(define-const var3523 Int (hashCode/-467973558 var2831)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3707 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3523)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var3869 Int (* var3707 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var1944 var687 (kind/-117296600 var1738)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind kind> 
(assert true)
(define-const var2049 Int (hashCode/385986394 (cast-from-var687-to-var812 var1944))) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind: int hashCode()>() 
(define-const var1062 Int (bv2nat (bvxor ((_ int2bv 64) var3869) ((_ int2bv 64) var2049)))) ; Statement: i6 = i5 ^ $i1 
(define-const var2530 Int (* var1062 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var1592 var1246 (jsDocInfo/-117296600 var1738)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.rhino.JSDocInfo jsDocInfo> 
(assert true)
(define-const var3333 Int (hashCode/1739917532 (cast-from-var1246-to-var1441 var1592))) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var950 Int (bv2nat (bvxor ((_ int2bv 64) var2530) ((_ int2bv 64) var3333)))) ; Statement: i8 = i7 ^ $i2 
(define-const var1980 Int (* var950 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var1510 var2007 (propertyType/-117296600 var1738)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType> 
(assert (not (= var1510 null-var2007))) ; Cond: $r4 != null 
(define-const var1920 var2007 (propertyType/-117296600 var1738)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType> 
(assert true)
(define-const var2686 Int (hashCode/1739917532 (cast-from-var2007-to-var1441 var1920))) ; Statement: $i10 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2061 Int (bv2nat (bvxor ((_ int2bv 64) var1980) ((_ int2bv 64) var2686)))) ; Statement: $i3 = i9 ^ $i10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyKey/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], java.lang.String), hashCode/-467973558=([java.lang.String], int), kind/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind), hashCode/385986394=([java.lang.Enum], int), cast-from-var687-to-var812=([com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind], java.lang.Enum), jsDocInfo/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.rhino.JSDocInfo), hashCode/1739917532=([java.lang.Object], int), cast-from-var1246-to-var1441=([com.google.javascript.rhino.JSDocInfo], java.lang.Object), propertyType/-117296600=([com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty], com.google.javascript.jscomp.colors.Color), cast-from-var2007-to-var1441=([com.google.javascript.jscomp.colors.Color], java.lang.Object)}
; {var709=com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty, var1738=r0, var2831=$r1, var3523=$i0, var3707=i4, var3869=i5, var687=com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind, var1944=$r2, var812=java.lang.Enum, var2049=$i1, var1062=i6, var2530=i7, var1246=com.google.javascript.rhino.JSDocInfo, var1592=$r3, var1441=java.lang.Object, var3333=$i2, var950=i8, var1980=i9, var2007=com.google.javascript.jscomp.colors.Color, var1510=$r4, var1920=$r5, var2686=$i10, var2061=$i3}
; {com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty=var709, r0=var1738, $r1=var2831, $i0=var3523, i4=var3707, i5=var3869, com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind=var687, $r2=var1944, java.lang.Enum=var812, $i1=var2049, i6=var1062, i7=var2530, com.google.javascript.rhino.JSDocInfo=var1246, $r3=var1592, java.lang.Object=var1441, $i2=var3333, i8=var950, i9=var1980, com.google.javascript.jscomp.colors.Color=var2007, $r4=var1510, $r5=var1920, $i10=var2686, $i3=var2061}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: java.lang.String propertyKey>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind kind>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteClass$ClassProperty$PropertyKind: int hashCode()>();	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.rhino.JSDocInfo jsDocInfo>;	$i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType>;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_Es6RewriteClass_ClassProperty: com.google.javascript.jscomp.colors.Color propertyType>;	$i10 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i3 = i9 ^ $i10;	return $i3
;block_num 3