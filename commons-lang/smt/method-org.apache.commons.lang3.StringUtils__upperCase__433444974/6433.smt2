(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-const null-String String)
(declare-const var1099 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1099 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>() 
(assert (not (= var1099 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var251 String (toUpperCase/1156088314 var1099)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/1156088314=([java.lang.String], java.lang.String)}
; {var1099=r0, var1585=null_type, var251=$r1}
; {r0=var1099, null_type=var1585, $r1=var251}
;seq <java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>();	return $r1
;block_num 2