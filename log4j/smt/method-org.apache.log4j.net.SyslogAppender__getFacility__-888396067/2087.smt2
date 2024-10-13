(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var11 String) ; Statement: r20 := @parameter0: java.lang.String 
(assert (not (= var11 null-String)))
 ; Statement: if r20 == null goto $r0 = "KERN" 
(assert (= var11 null-String)) ; Cond: r20 == null 
(define-const var2407 String "KERN") ; Statement: $r0 = "KERN" 
(assert true)
(define-const var2215 Bool (equalsIgnoreCase/-92311102 var2407 var11)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r20) 
 ; Statement: if $z0 == 0 goto $r1 = "USER" 
(assert (not (= (ite var2215 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var11=r20, var389=null_type, var2407=$r0, var2215=$z0}
; {r20=var11, null_type=var389, $r0=var2407, $z0=var2215}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r20 := @parameter0: java.lang.String;	if r20 == null goto $r0 = "KERN";	$r0 = "KERN";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r20);	if $z0 == 0 goto $r1 = "USER";	return 0
;block_num 3