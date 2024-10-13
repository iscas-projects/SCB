(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1745590912 (var2273) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2273 var2273)
(declare-const var3906 var2273) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader 
(assert (not (= var3906 null-var2273)))
(define-const var360 String (buffer/1745590912 var3906)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> 
(assert true)
(define-const var174 String (toString/-222306083 var360)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2273=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader, var3906=r0, var360=$r1, var174=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader=var2273, r0=var3906, $r1=var360, $r2=var174}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1