(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2897 0)
(declare-sort var594 0)
(declare-sort var2189 0)
(declare-sort var846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun header/324014591 (var2189 var594) String)
(declare-fun cast-from-var2897-to-var2189 (var2897) var2189)
(declare-fun httpVersion/-1932151335 (var2189) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2897 var2897)
(declare-const var594-CONNECTION var594)
(declare-const null-String String)
(declare-const var1268 var2897) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var1268 null-var2897)))
(define-const var1678 var594 var594-CONNECTION) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION> 
(assert true)
(define-const var1661 String (header/324014591 (cast-from-var2897-to-var2189 var1268) var1678)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1) 
 ; Statement: if r2 != null goto $r3 = "close" 
(assert (not (not (= var1661 null-String)))) ; Negate: Cond: r2 != null  
(define-const var125 String "HTTP/1.0") ; Statement: $r5 = "HTTP/1.0" 
(define-const var2743 String (httpVersion/-1932151335 (cast-from-var2897-to-var2189 var1268))) ; Statement: $r4 = r0.<cn.hutool.http.HttpRequest: java.lang.String httpVersion> 
(assert true)
(define-const var2508 Bool (equalsIgnoreCase/-92311102 var125 var2743)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: if 0 != $z1 goto $z2 = 0 
(assert (not (not (= 0 (ite var2508 1 0))))) ; Negate: Cond: 0 != $z1  
(define-const var1032 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {header/324014591=([cn.hutool.http.HttpBase, cn.hutool.http.Header], java.lang.String), cast-from-var2897-to-var2189=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase), httpVersion/-1932151335=([cn.hutool.http.HttpBase], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2897=cn.hutool.http.HttpRequest, var1268=r0, var594=cn.hutool.http.Header, var1678=$r1, var2189=cn.hutool.http.HttpBase, var1661=r2, var846=null_type, var125=$r5, var2743=$r4, var2508=$z1, var1032=$z2}
; {cn.hutool.http.HttpRequest=var2897, r0=var1268, cn.hutool.http.Header=var594, $r1=var1678, cn.hutool.http.HttpBase=var2189, r2=var1661, null_type=var846, $r5=var125, $r4=var2743, $z1=var2508, $z2=var1032}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION>;	r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1);	if r2 != null goto $r3 = "close";	$r5 = "HTTP/1.0";	$r4 = r0.<cn.hutool.http.HttpRequest: java.lang.String httpVersion>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if 0 != $z1 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4