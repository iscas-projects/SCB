(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/2135993258 (var2137) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2137 var2137)
(declare-const var1336 var2137) ; Statement: r0 := @this: org.slf4j.helpers.BasicMarker 
(assert (not (= var1336 null-var2137)))
(define-const var3865 String (name/2135993258 var1336)) ; Statement: $r1 = r0.<org.slf4j.helpers.BasicMarker: java.lang.String name> 
(assert true)
(define-const var1403 Int (hashCode/-467973558 var3865)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/2135993258=([org.slf4j.helpers.BasicMarker], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2137=org.slf4j.helpers.BasicMarker, var1336=r0, var3865=$r1, var1403=$i0}
; {org.slf4j.helpers.BasicMarker=var2137, r0=var1336, $r1=var3865, $i0=var1403}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.slf4j.helpers.BasicMarker;	$r1 = r0.<org.slf4j.helpers.BasicMarker: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1