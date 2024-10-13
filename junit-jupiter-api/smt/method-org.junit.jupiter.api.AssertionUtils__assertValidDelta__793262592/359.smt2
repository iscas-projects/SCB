(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Float64_isNaN/-647401060 (Float64) Bool)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun var845_failIllegalDelta/1919354678 (String) void)
(declare-const null-Float64 Float64)
(declare-const var3278 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3278 null-Float64)))
(define-const var361 Bool (Float64_isNaN/-647401060 var3278)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
 ; Statement: if $z0 != 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert (not (= (ite var361 1 0) 0))) ; Cond: $z0 != 0 
(define-const var571 String (String_valueOf/-987357574 var3278)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
;(assert (var845_failIllegalDelta/1919354678 var571)) ; Statement: staticinvoke <org.junit.jupiter.api.AssertionUtils: void failIllegalDelta(java.lang.String)>($r0) 

(declare-const var571!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Float64_isNaN/-647401060=([double], boolean), String_valueOf/-987357574=([double], java.lang.String), var845_failIllegalDelta/1919354678=([java.lang.String], void)}
; {var3278=d0, var361=$z0, var571=$r0, var845=org.junit.jupiter.api.AssertionUtils}
; {d0=var3278, $z0=var361, $r0=var571, org.junit.jupiter.api.AssertionUtils=var845}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts d0 := @parameter0: double;	$z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	if $z0 != 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	staticinvoke <org.junit.jupiter.api.AssertionUtils: void failIllegalDelta(java.lang.String)>($r0);	return
;block_num 3