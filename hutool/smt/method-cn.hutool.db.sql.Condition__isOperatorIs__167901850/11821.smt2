(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/-978839151 (var3580) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3580 var3580)
(declare-const var3444 var3580) ; Statement: r0 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var3444 null-var3580)))
(define-const var1879 String "IS") ; Statement: $r2 = "IS" 
(define-const var769 String (operator/-978839151 var3444)) ; Statement: $r1 = r0.<cn.hutool.db.sql.Condition: java.lang.String operator> 
(assert true)
(define-const var3445 Bool (equalsIgnoreCase/-92311102 var1879 var769)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {operator/-978839151=([cn.hutool.db.sql.Condition], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3580=cn.hutool.db.sql.Condition, var3444=r0, var1879=$r2, var769=$r1, var3445=$z0}
; {cn.hutool.db.sql.Condition=var3580, r0=var3444, $r2=var1879, $r1=var769, $z0=var3445}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Condition;	$r2 = "IS";	$r1 = r0.<cn.hutool.db.sql.Condition: java.lang.String operator>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	return $z0
;block_num 1