(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1216559684 (var3533) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const null-var3533 var3533)
(declare-const var2468 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2468 null-String)))
(declare-const var693 var3533) ; Statement: r1 := @parameter1: com.mysql.cj.NativeQueryBindValue 
(assert (not (= var693 null-var3533)))
(assert true)
(define-const var371 String (getName/-1216559684 var693)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.NativeQueryBindValue: java.lang.String getName()>() 
(assert true)
(define-const var1681 Bool (equalsIgnoreCase/-92311102 var2468 var371)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1216559684=([com.mysql.cj.NativeQueryBindValue], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2468=r0, var2492=null_type, var3533=com.mysql.cj.NativeQueryBindValue, var693=r1, var371=$r2, var1681=$z0}
; {r0=var2468, null_type=var2492, com.mysql.cj.NativeQueryBindValue=var3533, r1=var693, $r2=var371, $z0=var1681}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.mysql.cj.NativeQueryBindValue;	$r2 = virtualinvoke r1.<com.mysql.cj.NativeQueryBindValue: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z0
;block_num 1