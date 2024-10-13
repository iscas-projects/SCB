(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1516 0)
(declare-sort var541 0)
(declare-sort var3793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-605703340 (var1516) var541)
(declare-fun <init>/-279557996 (var3793) void)
(declare-fun cast-from-var1516-to-var3793 (var1516) var3793)
(declare-fun expandProperties/-605703340 (var1516) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buf/-605703340 (var1516) String)
(declare-const null-var1516 var1516)
(declare-const null-var541 var541)
(declare-const var2496 var1516) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString 
(assert (not (= var2496 null-var1516)))
(declare-const var3936 var541) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var3936 null-var541)))
(declare-const var2496!1 var1516)
(assert (not (= var2496!1 null-var1516)))
(assert (= (this$0/-605703340 var2496!1) var3936)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var1516-to-var3793 var2496!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2496!2 var1516)
(declare-const var2496!3 var1516)
(assert (not (= var2496!3 null-var1516)))
(assert (= (expandProperties/-605703340 var2496!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties> = 0 
(define-const var1009 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1009)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1009!1 String)
(declare-const var2496!4 var1516)
(assert (not (= var2496!4 null-var1516)))
(assert (= (buf/-605703340 var2496!4) var1009!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace), <init>/-279557996=([java.lang.Object], void), cast-from-var1516-to-var3793=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], java.lang.Object), expandProperties/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], boolean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buf/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], java.lang.StringBuffer)}
; {var1516=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString, var2496=r0, var541=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var3936=r1, var3793=java.lang.Object, var1009=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString=var1516, r0=var2496, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var541, r1=var3936, java.lang.Object=var3793, $r2=var1009}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties> = 0;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf> = $r2;	return
;block_num 1