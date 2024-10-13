(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/117193136 (var377) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var377 var377)
(declare-const var481 var377) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber 
(assert (not (= var481 null-var377)))
(define-const var1158 String (value/117193136 var481)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber: java.lang.String value> 
(assert true)
(define-const var3679 Int (hashCode/-467973558 var1158)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/117193136=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var377=com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber, var481=r0, var1158=$r1, var3679=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber=var377, r0=var481, $r1=var1158, $i0=var3679}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.LazilyParsedNumber: java.lang.String value>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1