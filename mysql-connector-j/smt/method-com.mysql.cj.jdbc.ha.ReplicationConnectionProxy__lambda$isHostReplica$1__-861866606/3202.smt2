(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var267 0)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHostPortPair/582926859 (var815) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var815 var815)
(declare-const var3101 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3101 null-String)))
(declare-const var524 var815) ; Statement: r1 := @parameter1: com.mysql.cj.conf.HostInfo 
(assert (not (= var524 null-var815)))
(assert true)
(define-const var2566 String (getHostPortPair/582926859 var524)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>() 
(assert true)
(define-const var3383 Bool (equalsIgnoreCase/-92311102 var3101 var2566)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getHostPortPair/582926859=([com.mysql.cj.conf.HostInfo], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3101=r0, var267=null_type, var815=com.mysql.cj.conf.HostInfo, var524=r1, var2566=$r2, var3383=$z0}
; {r0=var3101, null_type=var267, com.mysql.cj.conf.HostInfo=var815, r1=var524, $r2=var2566, $z0=var3383}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.mysql.cj.conf.HostInfo;	$r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1