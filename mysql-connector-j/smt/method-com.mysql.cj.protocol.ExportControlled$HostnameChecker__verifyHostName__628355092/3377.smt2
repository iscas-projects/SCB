(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun hostname/-2139483928 (var1904) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1904 var1904)
(declare-const null-String String)
(declare-const var316 var1904) ; Statement: r1 := @this: com.mysql.cj.protocol.ExportControlled$HostnameChecker 
(assert (not (= var316 null-var1904)))
(declare-const var759 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var759 null-String)))
(assert true)
(define-const var3626 Int (indexOf/-1037706067 var759 42)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42) 
 ; Statement: if i0 < 0 goto $r2 = r1.<com.mysql.cj.protocol.ExportControlled$HostnameChecker: java.lang.String hostname> 
(assert (< var3626 0)) ; Cond: i0 < 0 
(define-const var1363 String (hostname/-2139483928 var316)) ; Statement: $r2 = r1.<com.mysql.cj.protocol.ExportControlled$HostnameChecker: java.lang.String hostname> 
(assert true)
(define-const var3340 Bool (equalsIgnoreCase/-92311102 var1363 var759)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), hostname/-2139483928=([com.mysql.cj.protocol.ExportControlled$HostnameChecker], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1904=com.mysql.cj.protocol.ExportControlled$HostnameChecker, var316=r1, var759=r0, var1597=null_type, var3626=i0, var1363=$r2, var3340=$z0}
; {com.mysql.cj.protocol.ExportControlled$HostnameChecker=var1904, r1=var316, r0=var759, null_type=var1597, i0=var3626, $r2=var1363, $z0=var3340}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: com.mysql.cj.protocol.ExportControlled$HostnameChecker;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42);	if i0 < 0 goto $r2 = r1.<com.mysql.cj.protocol.ExportControlled$HostnameChecker: java.lang.String hostname>;	$r2 = r1.<com.mysql.cj.protocol.ExportControlled$HostnameChecker: java.lang.String hostname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	return $z0
;block_num 2