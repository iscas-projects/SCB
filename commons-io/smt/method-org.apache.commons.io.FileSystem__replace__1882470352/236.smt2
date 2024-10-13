(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2205 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2205 null-String)))
(declare-const var2456 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2456 null-Int)))
(declare-const var2695 Int) ; Statement: c1 := @parameter2: char 
(assert (not (= var2695 null-Int)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1) 
(assert (not (= var2205 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var892 String (replace/1524665721 var2205 var2456 var2695)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var2205=r0, var1002=null_type, var2456=c0, var2695=c1, var892=$r1}
; {r0=var2205, null_type=var1002, c0=var2456, c1=var2695, $r1=var892}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	c1 := @parameter2: char;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1);	return $r1
;block_num 3