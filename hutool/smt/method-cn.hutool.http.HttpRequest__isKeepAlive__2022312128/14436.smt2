(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1852 0)
(declare-sort var918 0)
(declare-sort var1533 0)
(declare-sort var2215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun header/324014591 (var1533 var918) String)
(declare-fun cast-from-var1852-to-var1533 (var1852) var1533)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1852 var1852)
(declare-const var918-CONNECTION var918)
(declare-const null-String String)
(declare-const var790 var1852) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var790 null-var1852)))
(define-const var1726 var918 var918-CONNECTION) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION> 
(assert true)
(define-const var353 String (header/324014591 (cast-from-var1852-to-var1533 var790) var1726)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1) 
 ; Statement: if r2 != null goto $r3 = "close" 
(assert (not (= var353 null-String))) ; Cond: r2 != null 
(define-const var1851 String "close") ; Statement: $r3 = "close" 
(assert true)
(define-const var675 Bool (equalsIgnoreCase/-92311102 var1851 var353)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if 0 != $z0 goto $z3 = 0 
(assert (not (= 0 (ite var675 1 0)))) ; Cond: 0 != $z0 
(define-const var3252 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {header/324014591=([cn.hutool.http.HttpBase, cn.hutool.http.Header], java.lang.String), cast-from-var1852-to-var1533=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1852=cn.hutool.http.HttpRequest, var790=r0, var918=cn.hutool.http.Header, var1726=$r1, var1533=cn.hutool.http.HttpBase, var353=r2, var2215=null_type, var1851=$r3, var675=$z0, var3252=$z3}
; {cn.hutool.http.HttpRequest=var1852, r0=var790, cn.hutool.http.Header=var918, $r1=var1726, cn.hutool.http.HttpBase=var1533, r2=var353, null_type=var2215, $r3=var1851, $z0=var675, $z3=var3252}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION>;	r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1);	if r2 != null goto $r3 = "close";	$r3 = "close";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if 0 != $z0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 4