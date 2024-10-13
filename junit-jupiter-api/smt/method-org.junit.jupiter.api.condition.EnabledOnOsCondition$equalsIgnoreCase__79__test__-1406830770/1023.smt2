(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2472 0)
(declare-sort var1767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1767-to-String (var1767) String)
(declare-fun cap0/1556163118 (var2472) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2472 var2472)
(declare-const null-var1767 var1767)
(declare-const var209 var2472) ; Statement: $r0 := @this: org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79 
(assert (not (= var209 null-var2472)))
(declare-const var3328 var1767) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3328 null-var1767)))
(define-const var1503 String (cast-from-var1767-to-String var3328)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var1633 String (cap0/1556163118 var209)) ; Statement: $r3 = $r0.<org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79: java.lang.String cap0> 
(assert true)
(define-const var564 Bool (equalsIgnoreCase/-92311102 var1633 var1503)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1767-to-String=([java.lang.Object], java.lang.String), cap0/1556163118=([org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2472=org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79, var209=$r0, var1767=java.lang.Object, var3328=$r1, var1503=$r2, var1633=$r3, var564=$z0}
; {org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79=var2472, $r0=var209, java.lang.Object=var1767, $r1=var3328, $r2=var1503, $r3=var1633, $z0=var564}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts $r0 := @this: org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<org.junit.jupiter.api.condition.EnabledOnOsCondition$equalsIgnoreCase__79: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1