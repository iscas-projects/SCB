(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var2897 0)
(declare-sort var747 0)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2111554004 (var747) void)
(declare-fun cast-from-var1183-to-var747 (var1183) var747)
(declare-fun messageSource/-1672746023 (var1183) var2897)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/-1672746023 (var1183) String)
(declare-fun mimeType/-1672746023 (var1183) String)
(declare-fun specified/-1672746023 (var1183) Bool)
(declare-fun charset/-1672746023 (var1183) String)
(declare-const null-var1183 var1183)
(declare-const null-var2897 var2897)
(declare-const null-String String)
(declare-const var78 var1183) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var78 null-var1183)))
(declare-const var2967 var2897) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2967 null-var2897)))
(assert true)
;(assert (<init>/-2111554004 (cast-from-var1183-to-var747 var78))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>() 

(declare-const var78!1 var1183)
(declare-const var78!2 var1183)
(assert (not (= var78!2 null-var1183)))
(assert (= (messageSource/-1672746023 var78!2) null-var2897)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null 
(define-const var3294 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3294)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3294!1 String)
(declare-const var78!3 var1183)
(assert (not (= var78!3 null-var1183)))
(assert (= (buffer/-1672746023 var78!3) var3294!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1 
(declare-const var78!4 var1183)
(assert (not (= var78!4 null-var1183)))
(assert (= (mimeType/-1672746023 var78!4) "text/plain")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain" 
(declare-const var78!5 var1183)
(assert (not (= var78!5 null-var1183)))
(assert (= (specified/-1672746023 var78!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0 
(declare-const var78!6 var1183)
(assert (not (= var78!6 null-var1183)))
(assert (= (charset/-1672746023 var78!6) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null 
(declare-const var78!7 var1183)
(assert (not (= var78!7 null-var1183)))
(assert (= (messageSource/-1672746023 var78!7) var2967)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2111554004=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], void), cast-from-var1183-to-var747=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), messageSource/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), mimeType/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), specified/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], boolean), charset/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String)}
; {var1183=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var78=r0, var2897=java.io.File, var2967=r2, var747=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3294=$r1, var1277=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var1183, r0=var78, java.io.File=var2897, r2=var2967, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var747, $r1=var3294, null_type=var1277}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	r2 := @parameter0: java.io.File;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = r2;	return
;block_num 1