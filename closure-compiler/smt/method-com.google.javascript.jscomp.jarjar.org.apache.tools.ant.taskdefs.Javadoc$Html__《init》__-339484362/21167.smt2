(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort var3219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3219) void)
(declare-fun cast-from-var3499-to-var3219 (var3499) var3219)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun text/72062773 (var3499) String)
(declare-const null-var3499 var3499)
(declare-const var2763 var3499) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html 
(assert (not (= var2763 null-var3499)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3499-to-var3219 var2763))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2763!1 var3499)
(define-const var3446 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3446)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3446!1 String)
(declare-const var2763!2 var3499)
(assert (not (= var2763!2 null-var3499)))
(assert (= (text/72062773 var2763!2) var3446!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3499-to-var3219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), text/72062773=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html], java.lang.StringBuffer)}
; {var3499=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html, var2763=r0, var3219=java.lang.Object, var3446=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html=var3499, r0=var2763, java.lang.Object=var3219, $r1=var3446}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text> = $r1;	return
;block_num 1