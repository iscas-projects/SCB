(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var1384 0)
(declare-sort var3656 0)
(declare-sort var2150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2150-init () var2150)
(declare-fun <init>/-1890858707 (var2150) void)
(declare-const null-String String)
(declare-const null-var1384 var1384)
(declare-const null-var3656 var3656)
(declare-const var584 String) ; Statement: r35 := @parameter0: java.lang.String 
(assert (not (= var584 null-String)))
(declare-const var2932 var1384) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var2932 null-var1384)))
(declare-const var1434 var3656) ; Statement: r25 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var1434 null-var3656)))
(define-const var2633 String "jikes") ; Statement: $r0 = "jikes" 
(assert true)
(define-const var3219 Bool (equalsIgnoreCase/-92311102 var2633 var584)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r35) 
 ; Statement: if $z0 == 0 goto $r1 = "extjavac" 
(assert (not (= (ite var3219 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var30 var2150 var2150-init) ; Statement: $r34 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes 
(assert true)
;(assert (<init>/-1890858707 var30)) ; Statement: specialinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes: void <init>()>() 

(declare-const var30!1 var2150)
 ; Statement: return $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2150-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes), <init>/-1890858707=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes], void)}
; {var584=r35, var1979=null_type, var1384=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2932=r3, var3656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1434=r25, var2633=$r0, var3219=$z0, var2150=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes, var30=$r34}
; {r35=var584, null_type=var1979, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1384, r3=var2932, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3656, r25=var1434, $r0=var2633, $z0=var3219, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes=var2150, $r34=var30}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r35 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	r25 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r0 = "jikes";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r35);	if $z0 == 0 goto $r1 = "extjavac";	$r34 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes;	specialinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.compilers.Jikes: void <init>()>();	return $r34
;block_num 2