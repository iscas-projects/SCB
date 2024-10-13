(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var463 0)
(declare-sort var1420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var463 var463)
(declare-const null-String String)
(declare-const var3733 var463) ; Statement: r15 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac 
(assert (not (= var3733 null-var463)))
(declare-const var1437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1437 null-String)))
(define-const var1025 String "javac10+") ; Statement: $r1 = "javac10+" 
(assert true)
(define-const var3506 Bool (equalsIgnoreCase/-92311102 var1025 var1437)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto return "modern" 
(assert (not (= (ite var3506 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return "modern" 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var463=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var3733=r15, var1437=r0, var1420=null_type, var1025=$r1, var3506=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var463, r15=var3733, r0=var1437, null_type=var1420, $r1=var1025, $z0=var3506}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r15 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac;	r0 := @parameter0: java.lang.String;	$r1 = "javac10+";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 != 0 goto return "modern";	return "modern"
;block_num 2