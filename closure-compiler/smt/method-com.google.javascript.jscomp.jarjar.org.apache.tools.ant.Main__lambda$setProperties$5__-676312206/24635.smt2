(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3815 0)
(declare-sort var2803 0)
(declare-sort var1283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1283) String)
(declare-fun setUserProperty/-1892470165 (var3815 String String) void)
(declare-const null-var3815 var3815)
(declare-const null-String String)
(declare-const null-var1283 var1283)
(declare-const var3785 var3815) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3785 null-var3815)))
(declare-const var1875 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1875 null-String)))
(declare-const var2739 var1283) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var2739 null-var1283)))
(define-const var791 String (String_valueOf/-333372740 var2739)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(assert true)
;(assert (setUserProperty/-1892470165 var3785 var1875 var791)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>(r1, $r3) 

(declare-const var3785!1 var3815)
(declare-const var1875!1 String)
(declare-const var791!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), setUserProperty/-1892470165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void)}
; {var3815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3785=r0, var1875=r1, var2803=null_type, var1283=java.lang.Object, var2739=r2, var791=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3815, r0=var3785, r1=var1875, null_type=var2803, java.lang.Object=var1283, r2=var2739, $r3=var791}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>(r1, $r3);	return
;block_num 1