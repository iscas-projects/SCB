(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var1453 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1453 null-String)))
(assert true)
(define-const var3323 String (replace/1524665721 var1453 92 46)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 46) 
(assert true)
(define-const var1779 String (replace/1524665721 var3323 47 46)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1453=r0, var1916=null_type, var3323=$r1, var1779=$r2}
; {r0=var1453, null_type=var1916, $r1=var3323, $r2=var1779}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 46);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r2
;block_num 1