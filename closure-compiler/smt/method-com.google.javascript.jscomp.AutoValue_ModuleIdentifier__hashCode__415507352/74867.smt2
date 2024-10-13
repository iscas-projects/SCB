(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1612793009 (var3235) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun closureNamespace/-1612793009 (var3235) String)
(declare-fun moduleName/-1612793009 (var3235) String)
(declare-const null-var3235 var3235)
(declare-const var3084 var3235) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_ModuleIdentifier 
(assert (not (= var3084 null-var3235)))
(define-const var1522 String (name/-1612793009 var3084)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String name> 
(assert true)
(define-const var2716 Int (hashCode/-467973558 var1522)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var284 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2716)))) ; Statement: i3 = 1000003 ^ $i0 
(define-const var3357 Int (* var284 1000003)) ; Statement: i4 = i3 * 1000003 
(define-const var70 String (closureNamespace/-1612793009 var3084)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String closureNamespace> 
(assert true)
(define-const var2277 Int (hashCode/-467973558 var70)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1923 Int (bv2nat (bvxor ((_ int2bv 64) var3357) ((_ int2bv 64) var2277)))) ; Statement: i5 = i4 ^ $i1 
(define-const var826 Int (* var1923 1000003)) ; Statement: i6 = i5 * 1000003 
(define-const var2160 String (moduleName/-1612793009 var3084)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String moduleName> 
(assert true)
(define-const var1866 Int (hashCode/-467973558 var2160)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var596 Int (bv2nat (bvxor ((_ int2bv 64) var826) ((_ int2bv 64) var1866)))) ; Statement: i7 = i6 ^ $i2 
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1612793009=([com.google.javascript.jscomp.AutoValue_ModuleIdentifier], java.lang.String), hashCode/-467973558=([java.lang.String], int), closureNamespace/-1612793009=([com.google.javascript.jscomp.AutoValue_ModuleIdentifier], java.lang.String), moduleName/-1612793009=([com.google.javascript.jscomp.AutoValue_ModuleIdentifier], java.lang.String)}
; {var3235=com.google.javascript.jscomp.AutoValue_ModuleIdentifier, var3084=r0, var1522=$r1, var2716=$i0, var284=i3, var3357=i4, var70=$r2, var2277=$i1, var1923=i5, var826=i6, var2160=$r3, var1866=$i2, var596=i7}
; {com.google.javascript.jscomp.AutoValue_ModuleIdentifier=var3235, r0=var3084, $r1=var1522, $i0=var2716, i3=var284, i4=var3357, $r2=var70, $i1=var2277, i5=var1923, i6=var826, $r3=var2160, $i2=var1866, i7=var596}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_ModuleIdentifier;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 1000003 ^ $i0;	i4 = i3 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String closureNamespace>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i5 = i4 ^ $i1;	i6 = i5 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_ModuleIdentifier: java.lang.String moduleName>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i7 = i6 ^ $i2;	return i7
;block_num 1