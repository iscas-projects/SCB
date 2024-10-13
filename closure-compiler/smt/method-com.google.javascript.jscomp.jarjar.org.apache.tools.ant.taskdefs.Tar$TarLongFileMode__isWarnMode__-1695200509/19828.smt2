(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var2136) String)
(declare-fun cast-from-var872-to-var2136 (var872) var2136)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var872 var872)
(declare-const var2440 var872) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode 
(assert (not (= var2440 null-var872)))
(define-const var726 String "warn") ; Statement: $r2 = "warn" 
(assert true)
(define-const var231 String (getValue/-1445752687 (cast-from-var872-to-var2136 var2440))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>() 
(assert true)
(define-const var183 Bool (equalsIgnoreCase/-92311102 var726 var231)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var872-to-var2136=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var872=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode, var2440=r0, var726=$r2, var2136=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var231=$r1, var183=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode=var872, r0=var2440, $r2=var726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2136, $r1=var231, $z0=var183}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode;	$r2 = "warn";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	return $z0
;block_num 1