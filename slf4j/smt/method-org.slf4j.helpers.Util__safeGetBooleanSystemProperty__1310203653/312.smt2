(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var569 0)
(declare-sort var2905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2905_safeGetSystemProperty/735118062 (String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var191 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var191 null-String)))
(define-const var65 String (var2905_safeGetSystemProperty/735118062 var191)) ; Statement: r1 = staticinvoke <org.slf4j.helpers.Util: java.lang.String safeGetSystemProperty(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("true") 
(assert (not (= var65 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2191 Bool (equalsIgnoreCase/-92311102 var65 "true")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("true") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2905_safeGetSystemProperty/735118062=([java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var191=r0, var569=null_type, var2905=org.slf4j.helpers.Util, var65=r1, var2191=$z0}
; {r0=var191, null_type=var569, org.slf4j.helpers.Util=var2905, r1=var65, $z0=var2191}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.slf4j.helpers.Util: java.lang.String safeGetSystemProperty(java.lang.String)>(r0);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("true");	$z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("true");	return $z0
;block_num 2