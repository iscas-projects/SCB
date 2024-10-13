(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var1655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var1655) String)
(declare-fun cast-from-var3416-to-var1655 (var3416) var1655)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3416 var3416)
(declare-const var833 var3416) ; Statement: r0 := @this: org.junit.experimental.theories.internal.ParameterizedAssertionError 
(assert (not (= var833 null-var3416)))
(assert true)
(define-const var3959 String (toString/-1112415476 (cast-from-var3416-to-var1655 var833))) ; Statement: $r1 = virtualinvoke r0.<org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.String toString()>() 
(assert true)
(define-const var322 Int (hashCode/-467973558 var3959)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3416-to-var1655=([org.junit.experimental.theories.internal.ParameterizedAssertionError], java.lang.Throwable), hashCode/-467973558=([java.lang.String], int)}
; {var3416=org.junit.experimental.theories.internal.ParameterizedAssertionError, var833=r0, var1655=java.lang.Throwable, var3959=$r1, var322=$i0}
; {org.junit.experimental.theories.internal.ParameterizedAssertionError=var3416, r0=var833, java.lang.Throwable=var1655, $r1=var3959, $i0=var322}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.junit.experimental.theories.internal.ParameterizedAssertionError;	$r1 = virtualinvoke r0.<org.junit.experimental.theories.internal.ParameterizedAssertionError: java.lang.String toString()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1