(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2026 0)
(declare-sort var1206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun stringToMatch/654023219 (var2026) String)
(declare-const null-var2026 var2026)
(declare-const null-String String)
(declare-const var339 var2026) ; Statement: r1 := @this: org.apache.log4j.varia.StringMatchFilter 
(assert (not (= var339 null-var2026)))
(declare-const var1168 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1168 null-String)))
(declare-const var834 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var834 null-String)))
(assert true)
(define-const var612 Bool (equalsIgnoreCase/-92311102 var1168 "StringToMatch")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("StringToMatch") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch") 
(assert (not (= (ite var612 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var339!1 var2026)
(assert (not (= var339!1 null-var2026)))
(assert (= (stringToMatch/654023219 var339!1) var834)) ; Statement: r1.<org.apache.log4j.varia.StringMatchFilter: java.lang.String stringToMatch> = r2 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), stringToMatch/654023219=([org.apache.log4j.varia.StringMatchFilter], java.lang.String)}
; {var2026=org.apache.log4j.varia.StringMatchFilter, var339=r1, var1168=r0, var1206=null_type, var834=r2, var612=$z0}
; {org.apache.log4j.varia.StringMatchFilter=var2026, r1=var339, r0=var1168, null_type=var1206, r2=var834, $z0=var612}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.varia.StringMatchFilter;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("StringToMatch");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("AcceptOnMatch");	r1.<org.apache.log4j.varia.StringMatchFilter: java.lang.String stringToMatch> = r2;	goto [?= return];	return
;block_num 3