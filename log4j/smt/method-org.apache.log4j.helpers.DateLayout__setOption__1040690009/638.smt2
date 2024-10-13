(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1666 0)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1666 var1666)
(declare-const null-String String)
(declare-const var3255 var1666) ; Statement: r1 := @this: org.apache.log4j.helpers.DateLayout 
(assert (not (= var3255 null-var1666)))
(declare-const var3722 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3722 null-String)))
(declare-const var2139 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2139 null-String)))
(assert true)
(define-const var1422 Bool (equalsIgnoreCase/-92311102 var3722 "DateFormat")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("DateFormat") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone") 
(assert (= (ite var1422 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2546 Bool (equalsIgnoreCase/-92311102 var3722 "TimeZone")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2546 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1666=org.apache.log4j.helpers.DateLayout, var3255=r1, var3722=r0, var2117=null_type, var2139=r2, var1422=$z0, var2546=$z1}
; {org.apache.log4j.helpers.DateLayout=var1666, r1=var3255, r0=var3722, null_type=var2117, r2=var2139, $z0=var1422, $z1=var2546}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.log4j.helpers.DateLayout;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("DateFormat");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone");	$z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone");	if $z1 == 0 goto return;	return
;block_num 3