(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var3127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3127-to-String (var3127) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3007 var3007)
(declare-const null-var3127 var3127)
(declare-const var2271 var3007) ; Statement: $r0 := @this: org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences$trim__27 
(assert (not (= var2271 null-var3007)))
(declare-const var3724 var3127) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3724 null-var3127)))
(define-const var1803 String (cast-from-var3127-to-String var3724)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var928 String (trim/-847153721 var1803)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3127-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3007=org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences$trim__27, var2271=$r0, var3127=java.lang.Object, var3724=$r1, var1803=$r2, var928=$r3}
; {org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences$trim__27=var3007, $r0=var2271, java.lang.Object=var3127, $r1=var3724, $r2=var1803, $r3=var928}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts $r0 := @this: org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences$trim__27;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1