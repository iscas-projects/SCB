(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-33675711 (var3476) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3476 var3476)
(declare-const var22 var3476) ; Statement: r0 := @this: com.google.gson.internal.LazilyParsedNumber 
(assert (not (= var22 null-var3476)))
(define-const var521 String (value/-33675711 var22)) ; Statement: $r1 = r0.<com.google.gson.internal.LazilyParsedNumber: java.lang.String value> 
(assert true)
(define-const var32 Int (hashCode/-467973558 var521)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-33675711=([com.google.gson.internal.LazilyParsedNumber], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3476=com.google.gson.internal.LazilyParsedNumber, var22=r0, var521=$r1, var32=$i0}
; {com.google.gson.internal.LazilyParsedNumber=var3476, r0=var22, $r1=var521, $i0=var32}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.gson.internal.LazilyParsedNumber;	$r1 = r0.<com.google.gson.internal.LazilyParsedNumber: java.lang.String value>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1