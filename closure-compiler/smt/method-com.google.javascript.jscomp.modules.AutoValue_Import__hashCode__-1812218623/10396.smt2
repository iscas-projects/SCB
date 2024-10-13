(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var1255 0)
(declare-sort var3353 0)
(declare-sort var2225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun moduleRequest/1770216902 (var3570) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun importName/1770216902 (var3570) String)
(declare-fun localName/1770216902 (var3570) String)
(declare-fun modulePath/1770216902 (var3570) var1255)
(declare-fun importNode/1770216902 (var3570) var3353)
(declare-fun hashCode/1739917532 (var2225) Int)
(declare-fun cast-from-var3353-to-var2225 (var3353) var2225)
(declare-fun nameNode/1770216902 (var3570) var3353)
(declare-const null-var3570 var3570)
(declare-const null-var1255 var1255)
(declare-const var1089 var3570) ; Statement: r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Import 
(assert (not (= var1089 null-var3570)))
(define-const var2424 String (moduleRequest/1770216902 var1089)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String moduleRequest> 
(assert true)
(define-const var3443 Int (hashCode/-467973558 var2424)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1392 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3443)))) ; Statement: i10 = 1000003 ^ $i0 
(define-const var2129 Int (* var1392 1000003)) ; Statement: i11 = i10 * 1000003 
(define-const var3609 String (importName/1770216902 var1089)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String importName> 
(assert true)
(define-const var1908 Int (hashCode/-467973558 var3609)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1765 Int (bv2nat (bvxor ((_ int2bv 64) var2129) ((_ int2bv 64) var1908)))) ; Statement: i12 = i11 ^ $i1 
(define-const var2994 Int (* var1765 1000003)) ; Statement: i13 = i12 * 1000003 
(define-const var577 String (localName/1770216902 var1089)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String localName> 
(assert true)
(define-const var186 Int (hashCode/-467973558 var577)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2865 Int (bv2nat (bvxor ((_ int2bv 64) var2994) ((_ int2bv 64) var186)))) ; Statement: i14 = i13 ^ $i2 
(define-const var1252 Int (* var2865 1000003)) ; Statement: i15 = i14 * 1000003 
(define-const var2823 var1255 (modulePath/1770216902 var1089)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
(assert (not (not (= var2823 null-var1255)))) ; Negate: Cond: $r4 != null  
(define-const var1496 Int 0) ; Statement: $i16 = 0 
 ; Statement: goto [?= $i5 = i15 ^ $i16] 
(assert true) ; Non Conditional
(define-const var420 Int (bv2nat (bvxor ((_ int2bv 64) var1252) ((_ int2bv 64) var1496)))) ; Statement: $i5 = i15 ^ $i16 
(define-const var868 Int (* var420 1000003)) ; Statement: $i6 = $i5 * 1000003 
(define-const var406 var3353 (importNode/1770216902 var1089)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node importNode> 
(assert true)
(define-const var971 Int (hashCode/1739917532 (cast-from-var3353-to-var2225 var406))) ; Statement: $i3 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
(define-const var878 Int (bv2nat (bvxor ((_ int2bv 64) var868) ((_ int2bv 64) var971)))) ; Statement: $i7 = $i6 ^ $i3 
(define-const var2854 Int (* var878 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var2025 var3353 (nameNode/1770216902 var1089)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node nameNode> 
(assert true)
(define-const var3122 Int (hashCode/1739917532 (cast-from-var3353-to-var2225 var2025))) ; Statement: $i4 = virtualinvoke $r7.<java.lang.Object: int hashCode()>() 
(define-const var3899 Int (bv2nat (bvxor ((_ int2bv 64) var2854) ((_ int2bv 64) var3122)))) ; Statement: $i9 = $i8 ^ $i4 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {moduleRequest/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), hashCode/-467973558=([java.lang.String], int), importName/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), localName/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], java.lang.String), modulePath/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), importNode/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.rhino.Node), hashCode/1739917532=([java.lang.Object], int), cast-from-var3353-to-var2225=([com.google.javascript.rhino.Node], java.lang.Object), nameNode/1770216902=([com.google.javascript.jscomp.modules.AutoValue_Import], com.google.javascript.rhino.Node)}
; {var3570=com.google.javascript.jscomp.modules.AutoValue_Import, var1089=r0, var2424=$r1, var3443=$i0, var1392=i10, var2129=i11, var3609=$r2, var1908=$i1, var1765=i12, var2994=i13, var577=$r3, var186=$i2, var2865=i14, var1252=i15, var1255=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var2823=$r4, var1496=$i16, var420=$i5, var868=$i6, var3353=com.google.javascript.rhino.Node, var406=$r6, var2225=java.lang.Object, var971=$i3, var878=$i7, var2854=$i8, var2025=$r7, var3122=$i4, var3899=$i9}
; {com.google.javascript.jscomp.modules.AutoValue_Import=var3570, r0=var1089, $r1=var2424, $i0=var3443, i10=var1392, i11=var2129, $r2=var3609, $i1=var1908, i12=var1765, i13=var2994, $r3=var577, $i2=var186, i14=var2865, i15=var1252, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var1255, $r4=var2823, $i16=var1496, $i5=var420, $i6=var868, com.google.javascript.rhino.Node=var3353, $r6=var406, java.lang.Object=var2225, $i3=var971, $i7=var878, $i8=var2854, $r7=var2025, $i4=var3122, $i9=var3899}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.modules.AutoValue_Import;	$r1 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String moduleRequest>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i10 = 1000003 ^ $i0;	i11 = i10 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String importName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i12 = i11 ^ $i1;	i13 = i12 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: java.lang.String localName>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i14 = i13 ^ $i2;	i15 = i14 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	$i16 = 0;	goto [?= $i5 = i15 ^ $i16];	$i5 = i15 ^ $i16;	$i6 = $i5 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node importNode>;	$i3 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	$i7 = $i6 ^ $i3;	$i8 = $i7 * 1000003;	$r7 = r0.<com.google.javascript.jscomp.modules.AutoValue_Import: com.google.javascript.rhino.Node nameNode>;	$i4 = virtualinvoke $r7.<java.lang.Object: int hashCode()>();	$i9 = $i8 ^ $i4;	return $i9
;block_num 3