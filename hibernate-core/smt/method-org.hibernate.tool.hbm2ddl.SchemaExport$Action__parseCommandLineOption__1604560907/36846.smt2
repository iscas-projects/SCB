(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var2556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var2556-CREATE var2556)
(declare-const var2202 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2202 null-String)))
(assert true)
(define-const var2511 Bool (equalsIgnoreCase/-92311102 var2202 "create")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("create") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("drop") 
(assert (not (= (ite var2511 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1006 var2556 var2556-CREATE) ; Statement: $r4 = <org.hibernate.tool.hbm2ddl.SchemaExport$Action: org.hibernate.tool.hbm2ddl.SchemaExport$Action CREATE> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2202=r0, var1386=null_type, var2511=$z0, var2556=org.hibernate.tool.hbm2ddl.SchemaExport$Action, var1006=$r4}
; {r0=var2202, null_type=var1386, $z0=var2511, org.hibernate.tool.hbm2ddl.SchemaExport$Action=var2556, $r4=var1006}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("create");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("drop");	$r4 = <org.hibernate.tool.hbm2ddl.SchemaExport$Action: org.hibernate.tool.hbm2ddl.SchemaExport$Action CREATE>;	return $r4
;block_num 2