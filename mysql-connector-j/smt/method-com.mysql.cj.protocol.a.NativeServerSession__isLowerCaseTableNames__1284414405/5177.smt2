(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2899 0)
(declare-sort var1652 0)
(declare-sort var1142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serverVariables/262773671 (var2899) var1652)
(declare-fun var1652_get/1088891777 (var1652 var1142) var1142)
(declare-fun cast-from-String-to-var1142 (String) var1142)
(declare-fun cast-from-var1142-to-String (var1142) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2899 var2899)
(declare-const var1901 var2899) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeServerSession 
(assert (not (= var1901 null-var2899)))
(define-const var2676 var1652 (serverVariables/262773671 var1901)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables> 
(define-const var174 var1142 (var1652_get/1088891777 var2676 (cast-from-String-to-var1142 "lower_case_table_names"))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("lower_case_table_names") 
(define-const var26 String (cast-from-var1142-to-String var174)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var2188 String "on") ; Statement: $r4 = "on" 
(assert true)
(define-const var2825 Bool (equalsIgnoreCase/-92311102 var2188 var26)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3) 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var2825 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3159 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {serverVariables/262773671=([com.mysql.cj.protocol.a.NativeServerSession], java.util.Map), var1652_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1142=([java.lang.String], java.lang.Object), cast-from-var1142-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2899=com.mysql.cj.protocol.a.NativeServerSession, var1901=r0, var1652=java.util.Map, var2676=$r1, var1142=java.lang.Object, var174=$r2, var26=r3, var2188=$r4, var2825=$z0, var3159=$z3}
; {com.mysql.cj.protocol.a.NativeServerSession=var2899, r0=var1901, java.util.Map=var1652, $r1=var2676, java.lang.Object=var1142, $r2=var174, r3=var26, $r4=var2188, $z0=var2825, $z3=var3159}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeServerSession;	$r1 = r0.<com.mysql.cj.protocol.a.NativeServerSession: java.util.Map serverVariables>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("lower_case_table_names");	r3 = (java.lang.String) $r2;	$r4 = "on";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r3);	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3