(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var3019 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var3832) String)
(declare-fun cast-from-var3019-to-var3832 (var3019) var3832)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var3019-ALIAS var3019)
(declare-const var3011 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3011 null-String)))
(define-const var2704 var3019 var3019-ALIAS) ; Statement: $r0 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ALIAS> 
(assert true)
(define-const var1916 String (name/1633728430 (cast-from-var3019-to-var3832 var2704))) ; Statement: $r2 = virtualinvoke $r0.<org.hibernate.dialect.ResultColumnReferenceStrategy: java.lang.String name()>() 
(assert true)
(define-const var1709 Bool (equalsIgnoreCase/-92311102 var1916 var3011)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ORDINAL> 
(assert (not (= (ite var1709 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2792 var3019 var3019-ALIAS) ; Statement: $r7 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ALIAS> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3019-to-var3832=([org.hibernate.dialect.ResultColumnReferenceStrategy], java.lang.Enum), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3011=r1, var3110=null_type, var3019=org.hibernate.dialect.ResultColumnReferenceStrategy, var2704=$r0, var3832=java.lang.Enum, var1916=$r2, var1709=$z0, var2792=$r7}
; {r1=var3011, null_type=var3110, org.hibernate.dialect.ResultColumnReferenceStrategy=var3019, $r0=var2704, java.lang.Enum=var3832, $r2=var1916, $z0=var1709, $r7=var2792}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ALIAS>;	$r2 = virtualinvoke $r0.<org.hibernate.dialect.ResultColumnReferenceStrategy: java.lang.String name()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ORDINAL>;	$r7 = <org.hibernate.dialect.ResultColumnReferenceStrategy: org.hibernate.dialect.ResultColumnReferenceStrategy ALIAS>;	return $r7
;block_num 2