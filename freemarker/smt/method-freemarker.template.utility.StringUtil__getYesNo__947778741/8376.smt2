(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var1579 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1579 null-String)))
(assert true)
(define-const var3308 Bool (startsWith/-1785782452 var1579 "\u0022")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("\"") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n") 
(assert (= (ite var3308 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2897 Bool (equalsIgnoreCase/-92311102 var1579 "n")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n") 
 ; Statement: if $z1 != 0 goto return 0 
(assert (not (not (= (ite var2897 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3230 Bool (equalsIgnoreCase/-92311102 var1579 "no")) ; Statement: $z2 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("no") 
 ; Statement: if $z2 != 0 goto return 0 
(assert (not (= (ite var3230 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1579=r5, var1259=null_type, var3308=$z0, var2897=$z1, var3230=$z2}
; {r5=var1579, null_type=var1259, $z0=var3308, $z1=var2897, $z2=var3230}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r5 := @parameter0: java.lang.String;	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("\"");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n");	$z1 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("n");	if $z1 != 0 goto return 0;	$z2 = virtualinvoke r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("no");	if $z2 != 0 goto return 0;	return 0
;block_num 4