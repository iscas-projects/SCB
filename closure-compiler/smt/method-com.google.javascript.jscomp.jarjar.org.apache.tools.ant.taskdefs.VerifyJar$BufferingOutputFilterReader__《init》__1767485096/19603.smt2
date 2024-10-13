(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3408 0)
(declare-sort var1640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-553797664 (var1640) void)
(declare-fun cast-from-var3408-to-var1640 (var3408) var1640)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/1745590912 (var3408) String)
(declare-fun next/1745590912 (var3408) var1640)
(declare-const null-var3408 var3408)
(declare-const null-var1640 var1640)
(declare-const var39 var3408) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader 
(assert (not (= var39 null-var3408)))
(declare-const var1934 var1640) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var1934 null-var1640)))
(assert true)
;(assert (<init>/-553797664 (cast-from-var3408-to-var1640 var39))) ; Statement: specialinvoke r0.<java.io.Reader: void <init>()>() 

(declare-const var39!1 var3408)
(define-const var2853 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2853)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2853!1 String)
(declare-const var39!2 var3408)
(assert (not (= var39!2 null-var3408)))
(assert (= (buffer/1745590912 var39!2) var2853!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> = $r1 
(declare-const var39!3 var3408)
(assert (not (= var39!3 null-var3408)))
(assert (= (next/1745590912 var39!3) var1934)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.io.Reader next> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-553797664=([java.io.Reader], void), cast-from-var3408-to-var1640=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.io.Reader), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.lang.StringBuffer), next/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.io.Reader)}
; {var3408=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader, var39=r0, var1640=java.io.Reader, var1934=r2, var2853=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader=var3408, r0=var39, java.io.Reader=var1640, r2=var1934, $r1=var2853}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader;	r2 := @parameter0: java.io.Reader;	specialinvoke r0.<java.io.Reader: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.io.Reader next> = r2;	return
;block_num 1