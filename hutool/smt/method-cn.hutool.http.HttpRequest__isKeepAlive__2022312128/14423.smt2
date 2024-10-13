(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3382 0)
(declare-sort var3596 0)
(declare-sort var2023 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun header/324014591 (var2023 var3596) String)
(declare-fun cast-from-var3382-to-var2023 (var3382) var2023)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3382 var3382)
(declare-const var3596-CONNECTION var3596)
(declare-const null-String String)
(declare-const var1754 var3382) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var1754 null-var3382)))
(define-const var3988 var3596 var3596-CONNECTION) ; Statement: $r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION> 
(assert true)
(define-const var713 String (header/324014591 (cast-from-var3382-to-var2023 var1754) var3988)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1) 
 ; Statement: if r2 != null goto $r3 = "close" 
(assert (not (= var713 null-String))) ; Cond: r2 != null 
(define-const var928 String "close") ; Statement: $r3 = "close" 
(assert true)
(define-const var1881 Bool (equalsIgnoreCase/-92311102 var928 var713)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if 0 != $z0 goto $z3 = 0 
(assert (not (not (= 0 (ite var1881 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var3329 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {header/324014591=([cn.hutool.http.HttpBase, cn.hutool.http.Header], java.lang.String), cast-from-var3382-to-var2023=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3382=cn.hutool.http.HttpRequest, var1754=r0, var3596=cn.hutool.http.Header, var3988=$r1, var2023=cn.hutool.http.HttpBase, var713=r2, var3052=null_type, var928=$r3, var1881=$z0, var3329=$z3}
; {cn.hutool.http.HttpRequest=var3382, r0=var1754, cn.hutool.http.Header=var3596, $r1=var3988, cn.hutool.http.HttpBase=var2023, r2=var713, null_type=var3052, $r3=var928, $z0=var1881, $z3=var3329}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	$r1 = <cn.hutool.http.Header: cn.hutool.http.Header CONNECTION>;	r2 = virtualinvoke r0.<cn.hutool.http.HttpRequest: java.lang.String header(cn.hutool.http.Header)>($r1);	if r2 != null goto $r3 = "close";	$r3 = "close";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if 0 != $z0 goto $z3 = 0;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 4