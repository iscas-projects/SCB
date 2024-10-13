(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var1646 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1646 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var1646 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2291 String (trim/-847153721 var1646)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String)}
; {var1646=r0, var951=null_type, var2291=$r1}
; {r0=var1646, null_type=var951, $r1=var2291}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	return $r1
;block_num 2