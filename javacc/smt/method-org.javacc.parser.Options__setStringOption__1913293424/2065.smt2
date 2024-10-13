(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var373 0)
(declare-sort var868 0)
(declare-sort var3757 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var868_put/1464166817 (var868 var3694 var3694) var3694)
(declare-fun cast-from-String-to-var3694 (String) var3694)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var3757-optionValues var868)
(declare-const var530 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var530 null-String)))
(declare-const var419 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var419 null-String)))
(define-const var2000 var868 var3757-optionValues) ; Statement: $r2 = <org.javacc.parser.Options: java.util.Map optionValues> 
;(assert (var868_put/1464166817 var2000 (cast-from-String-to-var3694 var530) (cast-from-String-to-var3694 var419))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r1) 

(declare-const var2000!1 var868)
(declare-const var530!1 String)
(declare-const var419!1 String)
(assert true)
(define-const var310 Bool (equalsIgnoreCase/-92311102 var530!1 "NAMESPACE")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("NAMESPACE") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var310 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var868_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3694=([java.lang.String], java.lang.Object), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var530=r0, var373=null_type, var419=r1, var868=java.util.Map, var3757=org.javacc.parser.Options, var2000=$r2, var3694=java.lang.Object, var310=$z0}
; {r0=var530, null_type=var373, r1=var419, java.util.Map=var868, org.javacc.parser.Options=var3757, $r2=var2000, java.lang.Object=var3694, $z0=var310}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = <org.javacc.parser.Options: java.util.Map optionValues>;	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("NAMESPACE");	if $z0 == 0 goto return;	return
;block_num 2