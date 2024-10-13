(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3991 0)
(declare-sort var2320 0)
(declare-sort var1822 0)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var2320_contains/1636690605 (var2320 var3548) Bool)
(declare-fun cast-from-String-to-var3548 (String) var3548)
(declare-const null-String String)
(declare-const var1822-jjtreeOptions var2320)
(declare-const var3951 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3951 null-String)))
(define-const var2653 var2320 var1822-jjtreeOptions) ; Statement: $r1 = <org.javacc.jjtree.JJTreeGlobals: java.util.Set jjtreeOptions> 
(assert true)
(define-const var3 String (toUpperCase/1156088314 var3951)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>() 
(define-const var2509 Bool (var2320_contains/1636690605 var2653 (cast-from-String-to-var3548 var3))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/1156088314=([java.lang.String], java.lang.String), var2320_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3548=([java.lang.String], java.lang.Object)}
; {var3951=r0, var3991=null_type, var2320=java.util.Set, var1822=org.javacc.jjtree.JJTreeGlobals, var2653=$r1, var3=$r2, var3548=java.lang.Object, var2509=$z0}
; {r0=var3951, null_type=var3991, java.util.Set=var2320, org.javacc.jjtree.JJTreeGlobals=var1822, $r1=var2653, $r2=var3, java.lang.Object=var3548, $z0=var2509}
;seq <java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.javacc.jjtree.JJTreeGlobals: java.util.Set jjtreeOptions>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>();	$z0 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>($r2);	return $z0
;block_num 1