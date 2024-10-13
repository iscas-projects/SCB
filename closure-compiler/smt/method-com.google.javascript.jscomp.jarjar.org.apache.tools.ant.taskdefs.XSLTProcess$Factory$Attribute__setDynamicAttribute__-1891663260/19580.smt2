(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var3086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun name/-16152562 (var1334) String)
(declare-const null-var1334 var1334)
(declare-const null-String String)
(declare-const var3222 var1334) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute 
(assert (not (= var3222 null-var1334)))
(declare-const var1531 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1531 null-String)))
(declare-const var517 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var517 null-String)))
(define-const var3944 String "name") ; Statement: $r1 = "name" 
(assert true)
(define-const var820 Bool (equalsIgnoreCase/-92311102 var3944 var1531)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "value" 
(assert (not (= (ite var820 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3222!1 var1334)
(assert (not (= var3222!1 null-var1334)))
(assert (= (name/-16152562 var3222!1) var517)) ; Statement: r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute: java.lang.String name> = r9 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), name/-16152562=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute], java.lang.String)}
; {var1334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute, var3222=r7, var1531=r0, var3086=null_type, var517=r9, var3944=$r1, var820=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute=var1334, r7=var3222, r0=var1531, null_type=var3086, r9=var517, $r1=var3944, $z0=var820}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute;	r0 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	$r1 = "name";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "value";	r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute: java.lang.String name> = r9;	goto [?= return];	return
;block_num 3