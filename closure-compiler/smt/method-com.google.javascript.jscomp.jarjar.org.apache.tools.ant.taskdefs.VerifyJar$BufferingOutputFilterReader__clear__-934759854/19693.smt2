(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/1745590912 (var1164) String)
(declare-const null-var1164 var1164)
(declare-const var1567 var1164) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader 
(assert (not (= var1567 null-var1164)))
(define-const var2467 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2467)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2467!1 String)
(declare-const var1567!1 var1164)
(assert (not (= var1567!1 null-var1164)))
(assert (= (buffer/1745590912 var1567!1) var2467!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.lang.StringBuffer)}
; {var1164=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader, var1567=r0, var2467=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader=var1164, r0=var1567, $r1=var2467}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> = $r1;	return
;block_num 1