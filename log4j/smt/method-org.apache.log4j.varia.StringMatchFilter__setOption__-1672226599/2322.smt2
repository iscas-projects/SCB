(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var3336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1829 var1829)
(declare-const null-String String)
(declare-const var2467 var1829) ; Statement: r1 := @this: org.apache.log4j.varia.StringMatchFilter 
(assert (not (= var2467 null-var1829)))
(declare-const var2840 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2840 null-String)))
(declare-const var2587 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2587 null-String)))
(assert true)
(define-const var1368 Bool (equalsIgnoreCase/-92311102 var2840 "StringToMatch")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("StringToMatch") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch") 
(assert (= (ite var1368 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1644 Bool (equalsIgnoreCase/-92311102 var2840 "AcceptOnMatch")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1644 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1829=org.apache.log4j.varia.StringMatchFilter, var2467=r1, var2840=r0, var3336=null_type, var2587=r2, var1368=$z0, var1644=$z1}
; {org.apache.log4j.varia.StringMatchFilter=var1829, r1=var2467, r0=var2840, null_type=var3336, r2=var2587, $z0=var1368, $z1=var1644}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.log4j.varia.StringMatchFilter;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("StringToMatch");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch");	$z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch");	if $z1 == 0 goto return;	return
;block_num 3