(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3142 0)
(declare-sort var1956 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-524338880 (var3142) var1956)
(declare-fun <init>/-279557996 (var2700) void)
(declare-fun cast-from-var3142-to-var2700 (var3142) var2700)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun outputBuffer/-524338880 (var3142) String)
(declare-const null-var3142 var3142)
(declare-const null-var1956 var1956)
(declare-const var1198 var3142) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var1198 null-var3142)))
(declare-const var3579 var1956) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var3579 null-var1956)))
(declare-const var1198!1 var3142)
(assert (not (= var1198!1 null-var3142)))
(assert (= (this$0/-524338880 var1198!1) var3579)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var3142-to-var2700 var1198!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1198!2 var3142)
(define-const var2316 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2316)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2316!1 String)
(declare-const var1198!3 var3142)
(assert (not (= var1198!3 null-var3142)))
(assert (= (outputBuffer/-524338880 var1198!3) var2316!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace), <init>/-279557996=([java.lang.Object], void), cast-from-var3142-to-var2700=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), outputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer)}
; {var3142=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var1198=r0, var1956=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var3579=r1, var2700=java.lang.Object, var2316=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var3142, r0=var1198, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var1956, r1=var3579, java.lang.Object=var2700, $r2=var2316}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer> = $r2;	return
;block_num 1