(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var1601 0)
(declare-sort var297 0)
(declare-sort var988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun moduleRequest/1770216902 (var3724) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun importName/1770216902 (var3724) String)
(declare-fun localName/1770216902 (var3724) String)
(declare-fun modulePath/1770216902 (var3724) var1601)
(declare-fun hashCode/1739917532 (var297) Int)
(declare-fun cast-from-var1601-to-var297 (var1601) var297)
(declare-fun importNode/1770216902 (var3724) var988)
(declare-fun cast-from-var988-to-var297 (var988) var297)
(declare-fun nameNode/1770216902 (var3724) var988)
(declare-const null-var3724 var3724)
(declare-const null-var1601 var1601)
(declare-const var3357 var3724) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Import 
(assert (not (= var3357 null-var3724)))
(define-const var3015 String (moduleRequest/1770216902 var3357)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String moduleRequest> 
(assert true)
(define-const var1514 Int (hashCode/-467973558 var3015)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var853 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1514)))) ; Statement: i10 = 1000003 ^ $i0 
(define-const var2015 Int (* var853 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var3138 String (importName/1770216902 var3357)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String importName> 
(assert true)
(define-const var3162 Int (hashCode/-467973558 var3138)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var240 Int (bv2nat (bvxor ((_ int2bv 64) var2015) ((_ int2bv 64) var3162)))) ; Statement: i12 = i11 ^ $i1 
(define-const var3777 Int (* var240 1000003)) ; Statement: i13 = i12 * 1000003 
(define-const var2492 String (localName/1770216902 var3357)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String localName> 
(assert true)
(define-const var3002 Int (hashCode/-467973558 var2492)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2656 Int (bv2nat (bvxor ((_ int2bv 64) var3777) ((_ int2bv 64) var3002)))) ; Statement: i14 = i13 ^ $i2 
(define-const var1519 Int (* var2656 1000003)) ; Statement: i15 = i14 * 1000003 
(define-const var3013 var1601 (modulePath/1770216902 var3357)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
(assert (not (= var3013 null-var1601))) ; Cond: $r4 != null 
(define-const var2168 var1601 (modulePath/1770216902 var3357)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
(assert true)
(define-const var2329 Int (hashCode/1739917532 (cast-from-var1601-to-var297 var2168))) ; Statement: $i16 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var624 Int (bv2nat (bvxor ((_ int2bv 64) var1519) ((_ int2bv 64) var2329)))) ; Statement: $i5 = i15 ^ $i16 
(define-const var3894 Int (* var624 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var1521 var988 (importNode/1770216902 var3357)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node importNode> 
(assert true)
(define-const var1752 Int (hashCode/1739917532 (cast-from-var988-to-var297 var1521))) ; Statement: $i3 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(define-const var998 Int (bv2nat (bvxor ((_ int2bv 64) var3894) ((_ int2bv 64) var1752)))) ; Statement: $i7 = $i6 ^ $i3 
(define-const var3662 Int (* var998 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var1136 var988 (nameNode/1770216902 var3357)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node nameNode> 
(assert true)
(define-const var2464 Int (hashCode/1739917532 (cast-from-var988-to-var297 var1136))) ; Statement: $i4 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
(define-const var3639 Int (bv2nat (bvxor ((_ int2bv 64) var3662) ((_ int2bv 64) var2464)))) ; Statement: $i9 = $i8 ^ $i4 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {moduleRequest/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), hashCode/-467973558=([java.lang.String], int), importName/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), localName/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), modulePath/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), hashCode/1739917532=([java.lang.Object], int), cast-from-var1601-to-var297=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath], java.lang.Object), importNode/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.rhino.Node), cast-from-var988-to-var297=([com.google.javascript.rhino.Node], java.lang.Object), nameNode/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.rhino.Node)}
; {var3724=com.google.javascript.jscomp.modules.AutoValue_Import, var3357=r0, var3015=$r1, var1514=$i0, var853=i10, var2015=i11, var3138=$r2, var3162=$i1, var240=i12, var3777=i13, var2492=$r3, var3002=$i2, var2656=i14, var1519=i15, var1601=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var3013=$r4, var2168=$r5, var297=java.lang.Object, var2329=$i16, var624=$i5, var3894=$i6, var988=com.google.javascript.rhino.Node, var1521=$r6, var1752=$i3, var998=$i7, var3662=$i8, var1136=$r7, var2464=$i4, var3639=$i9}
; {com.google.javascript.jscomp.modules.AutoValue_Import=var3724, r0=var3357, $r1=var3015, $i0=var1514, i10=var853, i11=var2015, $r2=var3138, $i1=var3162, i12=var240, i13=var3777, $r3=var2492, $i2=var3002, i14=var2656, i15=var1519, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var1601, $r4=var3013, $r5=var2168, java.lang.Object=var297, $i16=var2329, $i5=var624, $i6=var3894, com.google.javascript.rhino.Node=var988, $r6=var1521, $i3=var1752, $i7=var998, $i8=var3662, $r7=var1136, $i4=var2464, $i9=var3639}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Import;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String moduleRequest>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i10 = 1000003 ^ $i0;	i11 = i10 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String importName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i12 = i11 ^ $i1;	i13 = i12 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String localName>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i14 = i13 ^ $i2;	i15 = i14 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	$r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	$i16 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	$i5 = i15 ^ $i16;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node importNode>;	$i3 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i7 = $i6 ^ $i3;	$i8 = $i7 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node nameNode>;	$i4 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	$i9 = $i8 ^ $i4;	return $i9
;block_num 3