(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var441 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var441 null-String)))
(assert true)
(define-const var642 String (replace/1524665721 var441 92 47)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var441=r0, var2554=null_type, var642=$r1}
; {r0=var441, null_type=var2554, $r1=var642}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	return $r1
;block_num 1