(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var93 0)
(declare-sort var1930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var1930) String)
(declare-fun cast-from-var93-to-var1930 (var93) var1930)
(declare-fun getMethod/-880050594 (var425) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var425 var425)
(declare-const var93-GET var93)
(declare-const var2268 var425) ; Statement: r1 := @this: cn.hutool.http.server.HttpServerRequest 
(assert (not (= var2268 null-var425)))
(define-const var3140 var93 var93-GET) ; Statement: $r0 = <cn.hutool.http.Method: cn.hutool.http.Method GET> 
(assert true)
(define-const var3485 String (name/1633728430 (cast-from-var93-to-var1930 var3140))) ; Statement: $r3 = virtualinvoke $r0.<cn.hutool.http.Method: java.lang.String name()>() 
(assert true)
(define-const var160 String (getMethod/-880050594 var2268)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.http.server.HttpServerRequest: java.lang.String getMethod()>() 
(assert true)
(define-const var478 Bool (equalsIgnoreCase/-92311102 var3485 var160)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var93-to-var1930=([cn.hutool.http.Method], java.lang.Enum), getMethod/-880050594=([cn.hutool.http.server.HttpServerRequest], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var425=cn.hutool.http.server.HttpServerRequest, var2268=r1, var93=cn.hutool.http.Method, var3140=$r0, var1930=java.lang.Enum, var3485=$r3, var160=$r2, var478=$z0}
; {cn.hutool.http.server.HttpServerRequest=var425, r1=var2268, cn.hutool.http.Method=var93, $r0=var3140, java.lang.Enum=var1930, $r3=var3485, $r2=var160, $z0=var478}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: cn.hutool.http.server.HttpServerRequest;	$r0 = <cn.hutool.http.Method: cn.hutool.http.Method GET>;	$r3 = virtualinvoke $r0.<cn.hutool.http.Method: java.lang.String name()>();	$r2 = virtualinvoke r1.<cn.hutool.http.server.HttpServerRequest: java.lang.String getMethod()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1