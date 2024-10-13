(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort var3574 0)
(declare-sort var3167 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var3167) String)
(declare-fun cast-from-var3574-to-var3167 (var3574) var3167)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun start/-502981094 (var1736) var2883)
(declare-const null-var1736 var1736)
(declare-const null-var3574 var3574)
(declare-const var2883-TRUE var2883)
(declare-const var3165 var1736) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder 
(assert (not (= var3165 null-var1736)))
(declare-const var1231 var3574) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices 
(assert (not (= var1231 null-var3574)))
(assert true)
(define-const var2226 String (getValue/-1445752687 (cast-from-var3574-to-var3167 var1231))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices: java.lang.String getValue()>() 
(assert true)
(define-const var2641 Bool (equalsIgnoreCase/-92311102 var2226 "start")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("start") 
 ; Statement: if $z0 == 0 goto $r3 = <java.lang.Boolean: java.lang.Boolean FALSE> 
(assert (not (= (ite var2641 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1494 var2883 var2883-TRUE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(declare-const var3165!1 var1736)
(assert (not (= var3165!1 null-var1736)))
(assert (= (start/-502981094 var3165!1) var1494)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder: java.lang.Boolean start> = $r4 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3574-to-var3167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), start/-502981094=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder], java.lang.Boolean)}
; {var1736=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder, var3165=r2, var3574=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices, var1231=r0, var3167=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2226=$r1, var2641=$z0, var2883=java.lang.Boolean, var1494=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder=var1736, r2=var3165, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices=var3574, r0=var1231, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3167, $r1=var2226, $z0=var2641, java.lang.Boolean=var2883, $r4=var1494}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder$ActionChoices: java.lang.String getValue()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("start");	if $z0 == 0 goto $r3 = <java.lang.Boolean: java.lang.Boolean FALSE>;	$r4 = <java.lang.Boolean: java.lang.Boolean TRUE>;	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Recorder: java.lang.Boolean start> = $r4;	goto [?= return];	return
;block_num 3