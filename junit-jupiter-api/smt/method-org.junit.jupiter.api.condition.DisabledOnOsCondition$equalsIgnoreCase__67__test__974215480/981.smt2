(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var996 0)
(declare-sort var2956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2956-to-String (var2956) String)
(declare-fun cap0/-171075316 (var996) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var996 var996)
(declare-const null-var2956 var2956)
(declare-const var1760 var996) ; Statement: $r0 := @this: org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67 
(assert (not (= var1760 null-var996)))
(declare-const var3242 var2956) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3242 null-var2956)))
(define-const var1546 String (cast-from-var2956-to-String var3242)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var3102 String (cap0/-171075316 var1760)) ; Statement: $r3 = $r0.<org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67: java.lang.String cap0> 
(assert true)
(define-const var3971 Bool (equalsIgnoreCase/-92311102 var3102 var1546)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2956-to-String=([java.lang.Object], java.lang.String), cap0/-171075316=([org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var996=org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67, var1760=$r0, var2956=java.lang.Object, var3242=$r1, var1546=$r2, var3102=$r3, var3971=$z0}
; {org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67=var996, $r0=var1760, java.lang.Object=var2956, $r1=var3242, $r2=var1546, $r3=var3102, $z0=var3971}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts $r0 := @this: org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = $r0.<org.junit.jupiter.api.condition.DisabledOnOsCondition$equalsIgnoreCase__67: java.lang.String cap0>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1