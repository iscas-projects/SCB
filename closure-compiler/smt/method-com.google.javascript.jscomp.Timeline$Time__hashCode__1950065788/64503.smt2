(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-84427533 (var293) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var293 var293)
(declare-const var3725 var293) ; Statement: r0 := @this: com.google.javascript.jscomp.Timeline$Time 
(assert (not (= var3725 null-var293)))
(define-const var784 String (name/-84427533 var3725)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name> 
(assert true)
(define-const var2090 Int (hashCode/-467973558 var784)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-84427533=([com.google.javascript.jscomp.Timeline$Time], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var293=com.google.javascript.jscomp.Timeline$Time, var3725=r0, var784=$r1, var2090=$i0}
; {com.google.javascript.jscomp.Timeline$Time=var293, r0=var3725, $r1=var784, $i0=var2090}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Timeline$Time;	$r1 = r0.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1