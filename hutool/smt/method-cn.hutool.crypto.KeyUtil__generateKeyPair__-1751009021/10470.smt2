(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3146 0)
(declare-sort var2780 0)
(declare-sort var334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var334_generateKeyPair/368555398 (String Int) var2780)
(declare-const null-String String)
(declare-const var2813 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2813 null-String)))
(define-const var2618 Int 1024) ; Statement: s0 = 1024 
(define-const var533 String "ECIES") ; Statement: $r1 = "ECIES" 
(assert true)
(define-const var2772 Bool (equalsIgnoreCase/-92311102 var533 var2813)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int)>(r0, s0) 
(assert (= (ite var2772 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1210 var2780 (var334_generateKeyPair/368555398 var2813 var2618)) ; Statement: $r2 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int)>(r0, s0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var334_generateKeyPair/368555398=([java.lang.String, int], java.security.KeyPair)}
; {var2813=r0, var3146=null_type, var2618=s0, var533=$r1, var2772=$z0, var2780=java.security.KeyPair, var334=cn.hutool.crypto.KeyUtil, var1210=$r2}
; {r0=var2813, null_type=var3146, s0=var2618, $r1=var533, $z0=var2772, java.security.KeyPair=var2780, cn.hutool.crypto.KeyUtil=var334, $r2=var1210}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	s0 = 1024;	$r1 = "ECIES";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int)>(r0, s0);	$r2 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int)>(r0, s0);	return $r2
;block_num 2