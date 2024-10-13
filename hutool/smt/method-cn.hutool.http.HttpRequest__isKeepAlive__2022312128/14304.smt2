(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2169 0)
(declare-sort var2419 0)
(declare-sort var63 0)
(declare-sort var628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun header/324014591 (var63 var2419) String)
(declare-fun cast-from-var2169-to-var63 (var2169) var63)
(declare-fun httpVersion/-1932151335 (var63) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2169 var2169)
(declare-const var2419-CONNECTION var2419)
(declare-const null-String String)
(declare-const var1489 var2169) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var1489 null-var2169)))
(define-const var1043 var2419 var2419-CONNECTION) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION> 
(assert true)
(define-const var465 String (header/324014591 (cast-from-var2169-to-var63 var1489) var1043)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1) 
 ; Statement: if r2 != null goto $r3 = "close" 
(assert (not (not (= var465 null-String)))) ; Negate: Cond: r2 != null  
(define-const var1858 String "HTTP/1.0") ; Statement: $r5 = "HTTP/1.0" 
(define-const var807 String (httpVersion/-1932151335 (cast-from-var2169-to-var63 var1489))) ; Statement: $r4 = r0.<cn.hutool.http.HttpRequest: java.lang.String httpVersion> 
(assert true)
(define-const var1953 Bool (equalsIgnoreCase/-92311102 var1858 var807)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: if 0 != $z1 goto $z2 = 0 
(assert (not (= 0 (ite var1953 1 0)))) ; Cond: 0 != $z1 
(define-const var1114 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {header/324014591=([cn.hutool.http.HttpBase, cn.hutool.http.Header], java.lang.String), cast-from-var2169-to-var63=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase), httpVersion/-1932151335=([cn.hutool.http.HttpBase], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2169=cn.hutool.http.HttpRequest, var1489=r0, var2419=cn.hutool.http.Header, var1043=$r1, var63=cn.hutool.http.HttpBase, var465=r2, var628=null_type, var1858=$r5, var807=$r4, var1953=$z1, var1114=$z2}
; {cn.hutool.http.HttpRequest=var2169, r0=var1489, cn.hutool.http.Header=var2419, $r1=var1043, cn.hutool.http.HttpBase=var63, r2=var465, null_type=var628, $r5=var1858, $r4=var807, $z1=var1953, $z2=var1114}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION>;	r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1);	if r2 != null goto $r3 = "close";	$r5 = "HTTP/1.0";	$r4 = r0.<cn.hutool.http.HttpRequest: java.lang.String httpVersion>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if 0 != $z1 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 4