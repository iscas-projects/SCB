(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3757 0)
(declare-sort var3981 0)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serverVariables/262773671 (var3757) var3981)
(declare-fun var3981_get/1088891777 (var3981 var950) var950)
(declare-fun cast-from-String-to-var950 (String) var950)
(declare-fun cast-from-var950-to-String (var950) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3757 var3757)
(declare-const var2159 var3757) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeServerSession 
(assert (not (= var2159 null-var3757)))
(define-const var3155 String "ON") ; Statement: $r4 = "ON" 
(define-const var2035 var3981 (serverVariables/262773671 var2159)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables> 
(define-const var2545 var950 (var3981_get/1088891777 var2035 (cast-from-String-to-var950 "query_cache_type"))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("query_cache_type") 
(define-const var998 String (cast-from-var950-to-String var2545)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var2785 Bool (equalsIgnoreCase/-92311102 var3155 var998)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r3) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2785 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3019 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {serverVariables/262773671=([com.mysql.cj.protocol.a.NativeServerSession], java.util.Map), var3981_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var950=([java.lang.String], java.lang.Object), cast-from-var950-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3757=com.mysql.cj.protocol.a.NativeServerSession, var2159=r0, var3155=$r4, var3981=java.util.Map, var2035=$r1, var950=java.lang.Object, var2545=$r2, var998=$r3, var2785=$z0, var3019=$z2}
; {com.mysql.cj.protocol.a.NativeServerSession=var3757, r0=var2159, $r4=var3155, java.util.Map=var3981, $r1=var2035, java.lang.Object=var950, $r2=var2545, $r3=var998, $z0=var2785, $z2=var3019}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeServerSession;	$r4 = "ON";	$r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("query_cache_type");	$r3 = (java.lang.String) $r2;	$z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r3);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3