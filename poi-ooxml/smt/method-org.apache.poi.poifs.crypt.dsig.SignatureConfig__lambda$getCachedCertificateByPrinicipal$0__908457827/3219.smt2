(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1631 0)
(declare-sort var2832 0)
(declare-sort var3553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubjectX500Principal/-415787385 (var2832) var3553)
(declare-fun getName/-1628125019 (var3553) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var2832 var2832)
(declare-const var2709 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2709 null-String)))
(declare-const var207 var2832) ; Statement: r1 := @parameter1: java.security.cert.X509Certificate 
(assert (not (= var207 null-var2832)))
(assert true)
(define-const var1206 var3553 (getSubjectX500Principal/-415787385 var207)) ; Statement: $r2 = virtualinvoke r1.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getSubjectX500Principal()>() 
(assert true)
(define-const var2505 String (getName/-1628125019 var1206)) ; Statement: $r3 = virtualinvoke $r2.<javax.security.auth.x500.X500Principal: java.lang.String getName()>() 
(assert true)
(define-const var1303 Bool (equalsIgnoreCase/-92311102 var2709 var2505)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubjectX500Principal/-415787385=([java.security.cert.X509Certificate], javax.security.auth.x500.X500Principal), getName/-1628125019=([javax.security.auth.x500.X500Principal], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2709=r0, var1631=null_type, var2832=java.security.cert.X509Certificate, var207=r1, var3553=javax.security.auth.x500.X500Principal, var1206=$r2, var2505=$r3, var1303=$z0}
; {r0=var2709, null_type=var1631, java.security.cert.X509Certificate=var2832, r1=var207, javax.security.auth.x500.X500Principal=var3553, $r2=var1206, $r3=var2505, $z0=var1303}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.security.cert.X509Certificate;	$r2 = virtualinvoke r1.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getSubjectX500Principal()>();	$r3 = virtualinvoke $r2.<javax.security.auth.x500.X500Principal: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r3);	return $z0
;block_num 1