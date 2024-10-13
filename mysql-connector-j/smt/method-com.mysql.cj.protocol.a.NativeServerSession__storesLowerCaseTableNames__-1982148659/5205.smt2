(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort var1586 0)
(declare-sort var102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serverVariables/262773671 (var1216) var1586)
(declare-fun var1586_get/1088891777 (var1586 var102) var102)
(declare-fun cast-from-String-to-var102 (String) var102)
(declare-fun cast-from-var102-to-String (var102) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1216 var1216)
(declare-const var1286 var1216) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeServerSession 
(assert (not (= var1286 null-var1216)))
(define-const var3174 var1586 (serverVariables/262773671 var1286)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables> 
(define-const var2320 var102 (var1586_get/1088891777 var3174 (cast-from-String-to-var102 "lower_case_table_names"))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("lower_case_table_names") 
(define-const var2112 String (cast-from-var102-to-String var2320)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2574 String "1") ; Statement: $r4 = "1" 
(assert true)
(define-const var2184 Bool (equalsIgnoreCase/-92311102 var2574 var2112)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2184 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3718 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {serverVariables/262773671=([com.mysql.cj.protocol.a.NativeServerSession], java.util.Map), var1586_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var102=([java.lang.String], java.lang.Object), cast-from-var102-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1216=com.mysql.cj.protocol.a.NativeServerSession, var1286=r0, var1586=java.util.Map, var3174=$r1, var102=java.lang.Object, var2320=$r2, var2112=r3, var2574=$r4, var2184=$z0, var3718=$z2}
; {com.mysql.cj.protocol.a.NativeServerSession=var1216, r0=var1286, java.util.Map=var1586, $r1=var3174, java.lang.Object=var102, $r2=var2320, r3=var2112, $r4=var2574, $z0=var2184, $z2=var3718}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeServerSession;	$r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("lower_case_table_names");	r3 = (java.lang.String) $r2;	$r4 = "1";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3