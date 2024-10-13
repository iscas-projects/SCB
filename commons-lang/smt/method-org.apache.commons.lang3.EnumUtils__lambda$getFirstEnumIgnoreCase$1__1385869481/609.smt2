(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var202 0)
(declare-sort var2535 0)
(declare-sort var2405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var202_apply/533941847 (var202 var2405) var2405)
(declare-fun cast-from-var2535-to-var2405 (var2535) var2405)
(declare-fun cast-from-var2405-to-String (var2405) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var202 var202)
(declare-const null-var2535 var2535)
(declare-const var2708 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2708 null-String)))
(declare-const var1732 var202) ; Statement: r1 := @parameter1: java.util.function.Function 
(assert (not (= var1732 null-var202)))
(declare-const var830 var2535) ; Statement: r2 := @parameter2: java.lang.Enum 
(assert (not (= var830 null-var2535)))
(define-const var2502 var2405 (var202_apply/533941847 var1732 (cast-from-var2535-to-var2405 var830))) ; Statement: $r3 = interfaceinvoke r1.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r2) 
(define-const var2839 String (cast-from-var2405-to-String var2502)) ; Statement: $r4 = (java.lang.String) $r3 
(assert true)
(define-const var2829 Bool (equalsIgnoreCase/-92311102 var2708 var2839)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var202_apply/533941847=([java.util.function.Function, java.lang.Object], java.lang.Object), cast-from-var2535-to-var2405=([java.lang.Enum], java.lang.Object), cast-from-var2405-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2708=r0, var2299=null_type, var202=java.util.function.Function, var1732=r1, var2535=java.lang.Enum, var830=r2, var2405=java.lang.Object, var2502=$r3, var2839=$r4, var2829=$z0}
; {r0=var2708, null_type=var2299, java.util.function.Function=var202, r1=var1732, java.lang.Enum=var2535, r2=var830, java.lang.Object=var2405, $r3=var2502, $r4=var2839, $z0=var2829}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.function.Function;	r2 := @parameter2: java.lang.Enum;	$r3 = interfaceinvoke r1.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r2);	$r4 = (java.lang.String) $r3;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	return $z0
;block_num 1