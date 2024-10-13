(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var2376 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun genericDeclaration/-1733585890 (var2353) var2376)
(declare-fun hashCode/1739917532 (var2997) Int)
(declare-fun cast-from-var2376-to-var2997 (var2376) var2997)
(declare-fun name/-1733585890 (var2353) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2353 var2353)
(declare-const var733 var2353) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl 
(assert (not (= var733 null-var2353)))
(define-const var92 var2376 (genericDeclaration/-1733585890 var733)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl: java.lang.reflect.GenericDeclaration genericDeclaration> 
(assert true)
(define-const var3626 Int (hashCode/1739917532 (cast-from-var2376-to-var2997 var92))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var1593 String (name/-1733585890 var733)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl: java.lang.String name> 
(assert true)
(define-const var2758 Int (hashCode/-467973558 var1593)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3726 Int (bv2nat (bvxor ((_ int2bv 64) var3626) ((_ int2bv 64) var2758)))) ; Statement: $i2 = $i1 ^ $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {genericDeclaration/-1733585890=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl], java.lang.reflect.GenericDeclaration), hashCode/1739917532=([java.lang.Object], int), cast-from-var2376-to-var2997=([java.lang.reflect.GenericDeclaration], java.lang.Object), name/-1733585890=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2353=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl, var733=r0, var2376=java.lang.reflect.GenericDeclaration, var92=$r1, var2997=java.lang.Object, var3626=$i1, var1593=$r2, var2758=$i0, var3726=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl=var2353, r0=var733, java.lang.reflect.GenericDeclaration=var2376, $r1=var92, java.lang.Object=var2997, $i1=var3626, $r2=var1593, $i0=var2758, $i2=var3726}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl: java.lang.reflect.GenericDeclaration genericDeclaration>;	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$TypeVariableImpl: java.lang.String name>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = $i1 ^ $i0;	return $i2
;block_num 1