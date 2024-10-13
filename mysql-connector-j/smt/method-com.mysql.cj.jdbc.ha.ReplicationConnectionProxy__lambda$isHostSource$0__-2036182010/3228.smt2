(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var738 0)
(declare-sort var1748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHostPortPair/582926859 (var1748) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var1748 var1748)
(declare-const var341 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var341 null-String)))
(declare-const var1259 var1748) ; Statement: r1 := @parameter1: com.mysql.cj.conf.HostInfo 
(assert (not (= var1259 null-var1748)))
(assert true)
(define-const var3176 String (getHostPortPair/582926859 var1259)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>() 
(assert true)
(define-const var693 Bool (equalsIgnoreCase/-92311102 var341 var3176)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getHostPortPair/582926859=([com.mysql.cj.conf.HostInfo], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var341=r0, var738=null_type, var1748=com.mysql.cj.conf.HostInfo, var1259=r1, var3176=$r2, var693=$z0}
; {r0=var341, null_type=var738, com.mysql.cj.conf.HostInfo=var1748, r1=var1259, $r2=var3176, $z0=var693}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.mysql.cj.conf.HostInfo;	$r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1