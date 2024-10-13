(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var3253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var3253) String)
(declare-fun cast-from-var1500-to-var3253 (var1500) var3253)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1500 var1500)
(declare-const var1774 var1500) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode 
(assert (not (= var1774 null-var1500)))
(define-const var2593 String "truncate") ; Statement: $r2 = "truncate" 
(assert true)
(define-const var2867 String (getValue/-1445752687 (cast-from-var1500-to-var3253 var1774))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>() 
(assert true)
(define-const var1461 Bool (equalsIgnoreCase/-92311102 var2593 var2867)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1500-to-var3253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1500=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode, var1774=r0, var2593=$r2, var3253=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2867=$r1, var1461=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode=var1500, r0=var1774, $r2=var2593, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3253, $r1=var2867, $z0=var1461}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode;	$r2 = "truncate";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	return $z0
;block_num 1