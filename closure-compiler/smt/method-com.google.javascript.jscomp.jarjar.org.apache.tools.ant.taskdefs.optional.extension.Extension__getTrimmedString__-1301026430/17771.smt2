(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var1636 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1636 null-String)))
 ; Statement: if null != r0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (not (= null-String var1636))) ; Cond: null != r0 
(assert true)
(define-const var1960 String (trim/-847153721 var1636)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String)}
; {var1636=r0, var223=null_type, var1960=$r1}
; {r0=var1636, null_type=var223, $r1=var1960}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if null != r0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	return $r1
;block_num 3