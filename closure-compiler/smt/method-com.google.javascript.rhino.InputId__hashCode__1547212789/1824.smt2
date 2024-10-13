(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun id/454845266 (var2191) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2191 var2191)
(declare-const var329 var2191) ; Statement: r0 := @this: com.google.javascript.rhino.InputId 
(assert (not (= var329 null-var2191)))
(define-const var883 String (id/454845266 var329)) ; Statement: $r1 = r0.<com.google.javascript.rhino.InputId: java.lang.String id> 
(assert true)
(define-const var709 Int (hashCode/-467973558 var883)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {id/454845266=([com.google.javascript.rhino.InputId], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2191=com.google.javascript.rhino.InputId, var329=r0, var883=$r1, var709=$i0}
; {com.google.javascript.rhino.InputId=var2191, r0=var329, $r1=var883, $i0=var709}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.InputId;	$r1 = r0.<com.google.javascript.rhino.InputId: java.lang.String id>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1