(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var2113 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun header/324014591 (var3368 var2113) String)
(declare-fun cast-from-var2471-to-var3368 (var2471) var3368)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2471 var2471)
(declare-const var2113-TRANSFER_ENCODING var2113)
(declare-const var735 var2471) ; Statement: r0 := @this: cn.hutool.http.HttpResponse 
(assert (not (= var735 null-var2471)))
(define-const var3712 var2113 var2113-TRANSFER_ENCODING) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header TRANSFER_ENCODING> 
(assert true)
(define-const var237 String (header/324014591 (cast-from-var2471-to-var3368 var735) var3712)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.http.HttpResponse: java.lang.String header(cn.hutool.http.Header)>($r1) 
(define-const var2392 String "Chunked") ; Statement: $r3 = "Chunked" 
(assert true)
(define-const var3953 Bool (equalsIgnoreCase/-92311102 var2392 var237)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {header/324014591=([cn.hutool.http.HttpBase, cn.hutool.http.Header], java.lang.String), cast-from-var2471-to-var3368=([cn.hutool.http.HttpResponse], cn.hutool.http.HttpBase), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2471=cn.hutool.http.HttpResponse, var735=r0, var2113=cn.hutool.http.Header, var3712=$r1, var3368=cn.hutool.http.HttpBase, var237=r2, var2392=$r3, var3953=$z0}
; {cn.hutool.http.HttpResponse=var2471, r0=var735, cn.hutool.http.Header=var2113, $r1=var3712, cn.hutool.http.HttpBase=var3368, r2=var237, $r3=var2392, $z0=var3953}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpResponse;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header TRANSFER_ENCODING>;	r2 = virtualinvoke r0.<cn.hutool.http.HttpResponse: java.lang.String header(cn.hutool.http.Header)>($r1);	$r3 = "Chunked";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	return $z0
;block_num 1