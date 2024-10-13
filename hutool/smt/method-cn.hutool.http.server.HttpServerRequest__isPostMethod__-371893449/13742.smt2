(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var516 0)
(declare-sort var1006 0)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var858) String)
(declare-fun cast-from-var1006-to-var858 (var1006) var858)
(declare-fun getMethod/-880050594 (var516) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var516 var516)
(declare-const var1006-POST var1006)
(declare-const var1798 var516) ; Statement: r1 := @this: cn.hutool.http.server.HttpServerRequest 
(assert (not (= var1798 null-var516)))
(define-const var1351 var1006 var1006-POST) ; Statement: $r0 = <cn.hutool.http.Method: cn.hutool.http.Method POST> 
(assert true)
(define-const var2177 String (name/1633728430 (cast-from-var1006-to-var858 var1351))) ; Statement: $r3 = virtualinvoke $r0.<cn.hutool.http.Method: java.lang.String name()>() 
(assert true)
(define-const var700 String (getMethod/-880050594 var1798)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.http.server.HttpServerRequest: java.lang.String getMethod()>() 
(assert true)
(define-const var3372 Bool (equalsIgnoreCase/-92311102 var2177 var700)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1006-to-var858=([cn.hutool.http.Method], java.lang.Enum), getMethod/-880050594=([cn.hutool.http.server.HttpServerRequest], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var516=cn.hutool.http.server.HttpServerRequest, var1798=r1, var1006=cn.hutool.http.Method, var1351=$r0, var858=java.lang.Enum, var2177=$r3, var700=$r2, var3372=$z0}
; {cn.hutool.http.server.HttpServerRequest=var516, r1=var1798, cn.hutool.http.Method=var1006, $r0=var1351, java.lang.Enum=var858, $r3=var2177, $r2=var700, $z0=var3372}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: cn.hutool.http.server.HttpServerRequest;	$r0 = <cn.hutool.http.Method: cn.hutool.http.Method POST>;	$r3 = virtualinvoke $r0.<cn.hutool.http.Method: java.lang.String name()>();	$r2 = virtualinvoke r1.<cn.hutool.http.server.HttpServerRequest: java.lang.String getMethod()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1