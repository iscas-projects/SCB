(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var3680 0)
(declare-sort var3637 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2111554004 (var3680) void)
(declare-fun cast-from-var2367-to-var3680 (var2367) var3680)
(declare-fun messageSource/-1672746023 (var2367) var3637)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buffer/-1672746023 (var2367) String)
(declare-fun mimeType/-1672746023 (var2367) String)
(declare-fun specified/-1672746023 (var2367) Bool)
(declare-fun charset/-1672746023 (var2367) String)
(declare-const null-var2367 var2367)
(declare-const null-var3637 var3637)
(declare-const null-String String)
(declare-const var2702 var2367) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var2702 null-var2367)))
(assert true)
;(assert (<init>/-2111554004 (cast-from-var2367-to-var3680 var2702))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>() 

(declare-const var2702!1 var2367)
(declare-const var2702!2 var2367)
(assert (not (= var2702!2 null-var2367)))
(assert (= (messageSource/-1672746023 var2702!2) null-var3637)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null 
(define-const var2910 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2910)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2910!1 String)
(declare-const var2702!3 var2367)
(assert (not (= var2702!3 null-var2367)))
(assert (= (buffer/-1672746023 var2702!3) var2910!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1 
(declare-const var2702!4 var2367)
(assert (not (= var2702!4 null-var2367)))
(assert (= (mimeType/-1672746023 var2702!4) "text/plain")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain" 
(declare-const var2702!5 var2367)
(assert (not (= var2702!5 null-var2367)))
(assert (= (specified/-1672746023 var2702!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0 
(declare-const var2702!6 var2367)
(assert (not (= var2702!6 null-var2367)))
(assert (= (charset/-1672746023 var2702!6) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2111554004=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], void), cast-from-var2367-to-var3680=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), messageSource/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), mimeType/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), specified/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], boolean), charset/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String)}
; {var2367=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var2702=r0, var3680=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3637=java.io.File, var2910=$r1, var3087=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var2367, r0=var2702, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3680, java.io.File=var3637, $r1=var2910, null_type=var3087}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> = null;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> = $r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String mimeType> = "text/plain";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: boolean specified> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> = null;	return
;block_num 1