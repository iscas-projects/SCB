(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3241 0)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun dateFormatOption/-241923413 (var3241) String)
(declare-const null-var3241 var3241)
(declare-const null-String String)
(declare-const var1107 var3241) ; Statement: r1 := @this: org.apache.log4j.helpers.DateLayout 
(assert (not (= var1107 null-var3241)))
(declare-const var2332 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2332 null-String)))
(declare-const var3320 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3320 null-String)))
(assert true)
(define-const var1851 Bool (equalsIgnoreCase/-92311102 var2332 "DateFormat")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("DateFormat") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone") 
(assert (not (= (ite var1851 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1982 String (toUpperCase/1156088314 var3320)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase()>() 
(declare-const var1107!1 var3241)
(assert (not (= var1107!1 null-var3241)))
(assert (= (dateFormatOption/-241923413 var1107!1) var1982)) ; Statement: r1.<org.apache.log4j.helpers.DateLayout: java.lang.String dateFormatOption> = $r3 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), toUpperCase/1156088314=([java.lang.String], java.lang.String), dateFormatOption/-241923413=([org.apache.log4j.helpers.DateLayout], java.lang.String)}
; {var3241=org.apache.log4j.helpers.DateLayout, var1107=r1, var2332=r0, var3205=null_type, var3320=r2, var1851=$z0, var1982=$r3}
; {org.apache.log4j.helpers.DateLayout=var3241, r1=var1107, r0=var2332, null_type=var3205, r2=var3320, $z0=var1851, $r3=var1982}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.DateLayout;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("DateFormat");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("TimeZone");	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String toUpperCase()>();	r1.<org.apache.log4j.helpers.DateLayout: java.lang.String dateFormatOption> = $r3;	goto [?= return];	return
;block_num 3