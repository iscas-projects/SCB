(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var588 0)
(declare-sort var3652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun force/1469346876 (var588) String)
(declare-const null-var588 var588)
(declare-const null-String String)
(declare-const var1408 var588) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs 
(assert (not (= var1408 null-var588)))
(declare-const var1034 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1034 null-String)))
(define-const var2881 String "yes") ; Statement: $r2 = "yes" 
(assert true)
(define-const var438 Bool (equalsIgnoreCase/-92311102 var2881 var1034)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "no" 
(assert (not (= (ite var438 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2672 String "yes") ; Statement: $r3 = "yes" 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String force> = $r3] 
(assert true) ; Non Conditional
(declare-const var1408!1 var588)
(assert (not (= var1408!1 null-var588)))
(assert (= (force/1469346876 var1408!1) var2672)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String force> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), force/1469346876=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs], java.lang.String)}
; {var588=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs, var1408=r0, var1034=r1, var3652=null_type, var2881=$r2, var438=$z0, var2672=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs=var588, r0=var1408, r1=var1034, null_type=var3652, $r2=var2881, $z0=var438, $r3=var2672}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs;	r1 := @parameter0: java.lang.String;	$r2 = "yes";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto $r3 = "no";	$r3 = "yes";	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String force> = $r3];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String force> = $r3;	return
;block_num 3