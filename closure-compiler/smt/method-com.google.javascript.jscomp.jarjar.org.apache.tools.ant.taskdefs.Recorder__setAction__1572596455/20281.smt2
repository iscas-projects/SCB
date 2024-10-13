(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
(declare-sort var1453 0)
(declare-sort var3648 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var3648) String)
(declare-fun cast-from-var1453-to-var3648 (var1453) var3648)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun start/-502981094 (var1213) var2394)
(declare-const null-var1213 var1213)
(declare-const null-var1453 var1453)
(declare-const var2394-FALSE var2394)
(declare-const var1973 var1213) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder 
(assert (not (= var1973 null-var1213)))
(declare-const var3209 var1453) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices 
(assert (not (= var3209 null-var1453)))
(assert true)
(define-const var155 String (getValue/-1445752687 (cast-from-var1453-to-var3648 var3209))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices: java.lang.String getValue()>() 
(assert true)
(define-const var3883 Bool (equalsIgnoreCase/-92311102 var155 "start")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("start") 
 ; Statement: if $z0 == 0 goto $r3 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(assert (= (ite var3883 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3674 var2394 var2394-FALSE) ; Statement: $r3 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(declare-const var1973!1 var1213)
(assert (not (= var1973!1 null-var1213)))
(assert (= (start/-502981094 var1973!1) var3674)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder: java.lang.Boolean start> = $r3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1453-to-var3648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), start/-502981094=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder], java.lang.Boolean)}
; {var1213=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder, var1973=r2, var1453=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices, var3209=r0, var3648=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var155=$r1, var3883=$z0, var2394=java.lang.Boolean, var3674=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder=var1213, r2=var1973, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices=var1453, r0=var3209, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3648, $r1=var155, $z0=var3883, java.lang.Boolean=var2394, $r3=var3674}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices: java.lang.String getValue()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("start");	if $z0 == 0 goto $r3 = <java.lang.Boolean: java.lang.Boolean FALSE>;	$r3 = <java.lang.Boolean: java.lang.Boolean FALSE>;	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder: java.lang.Boolean start> = $r3;	return
;block_num 3