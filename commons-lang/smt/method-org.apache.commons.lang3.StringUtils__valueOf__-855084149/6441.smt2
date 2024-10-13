(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-911079903 ((Array Int Int)) String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var385 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var385 null-__Array__Int__Int__)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0) 
(assert (not (= var385 null-__Array__Int__Int__))) ; Cond: r0 != null 
(define-const var2557 String (String_valueOf/-911079903 var385)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-911079903=([char[]], java.lang.String)}
; {var385=r0, var2557=$r1}
; {r0=var385, $r1=var2557}
;seq <java.lang.String: java.lang.String valueOf(char[])>
;cnt {"<java.lang.String: java.lang.String valueOf(char[])>": 1}
;stmts r0 := @parameter0: char[];	if r0 != null goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0);	return $r1
;block_num 3