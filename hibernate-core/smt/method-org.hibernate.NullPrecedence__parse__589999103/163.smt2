(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var3695-NONE var3695)
(declare-const var1981 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1981 null-String)))
(define-const var3938 String "none") ; Statement: $r1 = "none" 
(assert true)
(define-const var3449 Bool (equalsIgnoreCase/-92311102 var3938 var1981)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "first" 
(assert (not (= (ite var3449 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3465 var3695 var3695-NONE) ; Statement: $r6 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1981=r0, var1125=null_type, var3938=$r1, var3449=$z0, var3695=org.hibernate.NullPrecedence, var3465=$r6}
; {r0=var1981, null_type=var1125, $r1=var3938, $z0=var3449, org.hibernate.NullPrecedence=var3695, $r6=var3465}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "none";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "first";	$r6 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	return $r6
;block_num 2