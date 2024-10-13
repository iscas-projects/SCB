(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2849_getMethod/-904985820 (var2849) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2849 var2849)
(declare-const var3138 var2849) ; Statement: r0 := @parameter0: jakarta.servlet.http.HttpServletRequest 
(assert (not (= var3138 null-var2849)))
(define-const var3075 String "POST") ; Statement: $r2 = "POST" 
(define-const var3855 String (var2849_getMethod/-904985820 var3138)) ; Statement: $r1 = interfaceinvoke r0.<jakarta.servlet.http.HttpServletRequest: java.lang.String getMethod()>() 
(assert true)
(define-const var2401 Bool (equalsIgnoreCase/-92311102 var3075 var3855)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2849_getMethod/-904985820=([jakarta.servlet.http.HttpServletRequest], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2849=jakarta.servlet.http.HttpServletRequest, var3138=r0, var3075=$r2, var3855=$r1, var2401=$z0}
; {jakarta.servlet.http.HttpServletRequest=var2849, r0=var3138, $r2=var3075, $r1=var3855, $z0=var2401}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: jakarta.servlet.http.HttpServletRequest;	$r2 = "POST";	$r1 = interfaceinvoke r0.<jakarta.servlet.http.HttpServletRequest: java.lang.String getMethod()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	return $z0
;block_num 1