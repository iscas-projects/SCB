(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var2436 0)
(declare-sort var2538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var356 var356)
(declare-const null-String String)
(declare-const var2538-KEY var2538)
(declare-const var809 var356) ; Statement: r11 := @this: org.hibernate.graph.internal.parse.GraphParser 
(assert (not (= var809 null-var356)))
(declare-const var854 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var854 null-String)))
(define-const var2503 String "key") ; Statement: $r1 = "key" 
(assert true)
(define-const var2392 Bool (equalsIgnoreCase/-92311102 var2503 var854)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "value" 
(assert (not (= (ite var2392 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1678 var2538 var2538-KEY) ; Statement: $r10 = <org.hibernate.graph.internal.parse.PathQualifierType: org.hibernate.graph.internal.parse.PathQualifierType KEY> 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var356=org.hibernate.graph.internal.parse.GraphParser, var809=r11, var854=r0, var2436=null_type, var2503=$r1, var2392=$z0, var2538=org.hibernate.graph.internal.parse.PathQualifierType, var1678=$r10}
; {org.hibernate.graph.internal.parse.GraphParser=var356, r11=var809, r0=var854, null_type=var2436, $r1=var2503, $z0=var2392, org.hibernate.graph.internal.parse.PathQualifierType=var2538, $r10=var1678}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r11 := @this: org.hibernate.graph.internal.parse.GraphParser;	r0 := @parameter0: java.lang.String;	$r1 = "key";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "value";	$r10 = <org.hibernate.graph.internal.parse.PathQualifierType: org.hibernate.graph.internal.parse.PathQualifierType KEY>;	return $r10
;block_num 2