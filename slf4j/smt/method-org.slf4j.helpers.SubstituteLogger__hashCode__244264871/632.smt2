(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-383701400 (var1102) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1102 var1102)
(declare-const var2639 var1102) ; Statement: r0 := @this: org.slf4j.helpers.SubstituteLogger 
(assert (not (= var2639 null-var1102)))
(define-const var3994 String (name/-383701400 var2639)) ; Statement: $r1 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name> 
(assert true)
(define-const var1377 Int (hashCode/-467973558 var3994)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-383701400=([org.slf4j.helpers.SubstituteLogger], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1102=org.slf4j.helpers.SubstituteLogger, var2639=r0, var3994=$r1, var1377=$i0}
; {org.slf4j.helpers.SubstituteLogger=var1102, r0=var2639, $r1=var3994, $i0=var1377}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.slf4j.helpers.SubstituteLogger;	$r1 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1