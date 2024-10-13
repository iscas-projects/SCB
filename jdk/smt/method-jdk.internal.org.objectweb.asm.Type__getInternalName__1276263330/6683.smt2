(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-ClassObject ClassObject)
(declare-const var3315 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3315 null-ClassObject)))
(assert true)
(define-const var2823 String (getName/-1958580599 var3315)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3935 String (replace/1524665721 var2823 46 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3315=r0, var2823=$r1, var3935=$r2}
; {r0=var3315, $r1=var2823, $r2=var3935}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	return $r2
;block_num 1