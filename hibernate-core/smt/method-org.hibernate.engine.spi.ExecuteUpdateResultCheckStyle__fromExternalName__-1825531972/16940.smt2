(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3747 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1804258844 (var2879) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var2879-NONE var2879)
(declare-const var218 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var218 null-String)))
(define-const var201 var2879 var2879-NONE) ; Statement: $r1 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle NONE> 
(define-const var3179 String (name/1804258844 var201)) ; Statement: $r2 = $r1.<org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: java.lang.String name> 
(assert true)
(define-const var590 Bool (equalsIgnoreCase/-92311102 var218 var3179)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle COUNT> 
(assert (not (= (ite var590 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var846 var2879 var2879-NONE) ; Statement: $r9 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle NONE> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1804258844=([org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var218=r0, var3747=null_type, var2879=org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle, var201=$r1, var3179=$r2, var590=$z0, var846=$r9}
; {r0=var218, null_type=var3747, org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle=var2879, $r1=var201, $r2=var3179, $z0=var590, $r9=var846}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle NONE>;	$r2 = $r1.<org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: java.lang.String name>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	if $z0 == 0 goto $r3 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle COUNT>;	$r9 = <org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle: org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle NONE>;	return $r9
;block_num 2