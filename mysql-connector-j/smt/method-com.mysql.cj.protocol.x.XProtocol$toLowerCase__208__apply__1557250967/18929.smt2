(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1014 0)
(declare-sort var3988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3988-to-String (var3988) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var1014 var1014)
(declare-const null-var3988 var3988)
(declare-const var2966 var1014) ; Statement: $r0 := @this: com.mysql.cj.protocol.x.XProtocol$toLowerCase__208 
(assert (not (= var2966 null-var1014)))
(declare-const var3172 var3988) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3172 null-var3988)))
(define-const var3406 String (cast-from-var3988-to-String var3172)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1150 String (toLowerCase/415700667 var3406)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3988-to-String=([java.lang.Object], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var1014=com.mysql.cj.protocol.x.XProtocol$toLowerCase__208, var2966=$r0, var3988=java.lang.Object, var3172=$r1, var3406=$r2, var1150=$r3}
; {com.mysql.cj.protocol.x.XProtocol$toLowerCase__208=var1014, $r0=var2966, java.lang.Object=var3988, $r1=var3172, $r2=var3406, $r3=var1150}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts $r0 := @this: com.mysql.cj.protocol.x.XProtocol$toLowerCase__208;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>();	return $r3
;block_num 1