(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Float32_isNaN/1854467376 (Float32) Bool)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun var3058_failIllegalDelta/1919354678 (String) void)
(declare-const null-Float32 Float32)
(declare-const var3070 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var3070 null-Float32)))
(define-const var3810 Bool (Float32_isNaN/1854467376 var3070)) ; Statement: $z0 = staticinvoke <java.lang.Float: boolean isNaN(float)>(f0) 
 ; Statement: if $z0 != 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
(assert (not (= (ite var3810 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2539 String (String_valueOf/-149410723 var3070)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
;(assert (var3058_failIllegalDelta/1919354678 var2539)) ; Statement: staticinvoke <org.junit.jupiter.api.AssertionUtils: void failIllegalDelta(java.lang.String)>($r0) 

(declare-const var2539!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Float32_isNaN/1854467376=([float], boolean), String_valueOf/-149410723=([float], java.lang.String), var3058_failIllegalDelta/1919354678=([java.lang.String], void)}
; {var3070=f0, var3810=$z0, var2539=$r0, var3058=org.junit.jupiter.api.AssertionUtils}
; {f0=var3070, $z0=var3810, $r0=var2539, org.junit.jupiter.api.AssertionUtils=var3058}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts f0 := @parameter0: float;	$z0 = staticinvoke <java.lang.Float: boolean isNaN(float)>(f0);	if $z0 != 0 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	staticinvoke <org.junit.jupiter.api.AssertionUtils: void failIllegalDelta(java.lang.String)>($r0);	return
;block_num 3