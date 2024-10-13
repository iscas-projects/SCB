(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1433 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1433 null-String)))
(declare-const var1620 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1620 null-Int)))
(declare-const var3991 Int) ; Statement: c1 := @parameter2: char 
(assert (not (= var3991 null-Int)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1) 
(assert (not (= var1433 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var783 String (replace/1524665721 var1433 var1620 var3991)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1433=r0, var1506=null_type, var1620=c0, var3991=c1, var783=$r1}
; {r0=var1433, null_type=var1506, c0=var1620, c1=var3991, $r1=var783}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	c1 := @parameter2: char;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(c0, c1);	return $r1
;block_num 2