(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var716 0)
(declare-sort var899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var899) String)
(declare-fun cast-from-var716-to-var899 (var716) var899)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var716 var716)
(declare-const var2966 var716) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode 
(assert (not (= var2966 null-var716)))
(define-const var2749 String "gnu") ; Statement: $r2 = "gnu" 
(assert true)
(define-const var2320 String (getValue/-1445752687 (cast-from-var716-to-var899 var2966))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>() 
(assert true)
(define-const var3710 Bool (equalsIgnoreCase/-92311102 var2749 var2320)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var716-to-var899=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var716=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode, var2966=r0, var2749=$r2, var899=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2320=$r1, var3710=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode=var716, r0=var2966, $r2=var2749, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var899, $r1=var2320, $z0=var3710}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode;	$r2 = "gnu";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tar$TarLongFileMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r1);	return $z0
;block_num 1