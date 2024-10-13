(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2287 0)
(declare-sort var3552 0)
(declare-sort var658 0)
(declare-sort var1711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2111554004 (var658) void)
(declare-fun cast-from-var2287-to-var658 (var2287) var658)
(declare-fun messageSource/-1672746023 (var2287) var1711)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/-1672746023 (var2287) String)
(declare-fun mimeType/-1672746023 (var2287) String)
(declare-fun specified/-1672746023 (var2287) Bool)
(declare-fun charset/-1672746023 (var2287) String)
(declare-fun addText/-1457985027 (var2287 String) void)
(declare-const null-var2287 var2287)
(declare-const null-String String)
(declare-const null-var1711 var1711)
(declare-const var3716 var2287) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var3716 null-var2287)))
(declare-const var2501 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2501 null-String)))
(assert true)
;(assert (<init>/-2111554004 (cast-from-var2287-to-var658 var3716))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>() 

(declare-const var3716!1 var2287)
(declare-const var3716!2 var2287)
(assert (not (= var3716!2 null-var2287)))
(assert (= (messageSource/-1672746023 var3716!2) null-var1711)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null 
(define-const var2625 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2625)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2625!1 String)
(declare-const var3716!3 var2287)
(assert (not (= var3716!3 null-var2287)))
(assert (= (buffer/-1672746023 var3716!3) var2625!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1 
(declare-const var3716!4 var2287)
(assert (not (= var3716!4 null-var2287)))
(assert (= (mimeType/-1672746023 var3716!4) "text/plain")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain" 
(declare-const var3716!5 var2287)
(assert (not (= var3716!5 null-var2287)))
(assert (= (specified/-1672746023 var3716!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0 
(declare-const var3716!6 var2287)
(assert (not (= var3716!6 null-var2287)))
(assert (= (charset/-1672746023 var3716!6) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null 
(assert true)
;(assert (addText/-1457985027 var3716!6 var2501)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: void addText(java.lang.String)>(r2) 

(declare-const var3716!7 var2287)
(declare-const var2501!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2111554004=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], void), cast-from-var2287-to-var658=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), messageSource/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), mimeType/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), specified/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], boolean), charset/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), addText/-1457985027=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, java.lang.String], void)}
; {var2287=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var3716=r0, var2501=r2, var3552=null_type, var658=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1711=java.io.File, var2625=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var2287, r0=var3716, r2=var2501, null_type=var3552, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var658, java.io.File=var1711, $r1=var2625}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: void addText(java.lang.String)>(r2);	return
;block_num 1