(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var2092 0)
(declare-sort var1465 0)
(declare-sort var1395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1461397135 (var3144) var1465)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rawPrint/416888082 (var1465 String) void)
(declare-fun in/-1461397135 (var3144) var1395)
(declare-fun getResponse/1463180230 (var1395) String)
(declare-fun isResponseOK/2048108781 (var3144 String (Array Int Int)) Bool)
(declare-const null-var3144 var3144)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2747 var3144) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var2747 null-var3144)))
(declare-const var3668 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3668 null-String)))
(declare-const var346 (Array Int Int)) ; Statement: r9 := @parameter1: int[] 
(assert (not (= var346 null-__Array__Int__Int__)))
(define-const var2756 var1465 (out/-1461397135 var2747)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream out> 
(define-const var946 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var946)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var946!1 String)
(assert (= var946!1 ""))
(assert true)
(define-const var2426 String (append/672562846 var946!1 var3668)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var946!2 String)
(assert (= var946!2 (str.++ var946!1 var3668)))
(assert true)
(define-const var219 String (append/672562846 var2426 "\r\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 "\r\n")))
(assert true)
(define-const var3613 String (toString/-2075883882 var219)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (rawPrint/416888082 var2756 var3613)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream: void rawPrint(java.lang.String)>($r6) 

(declare-const var2756!1 var1465)
(declare-const var3613!1 String)
(define-const var2094 var1395 (in/-1461397135 var2747)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in> 
(assert true)
(define-const var51 String (getResponse/1463180230 var2094)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>() 
(assert true)
(define-const var1500 Bool (isResponseOK/2048108781 var2747 var51 var346)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r8, r9) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1500 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rawPrint/416888082=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream, java.lang.String], void), in/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader), getResponse/1463180230=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader], java.lang.String), isResponseOK/2048108781=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], boolean)}
; {var3144=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var2747=r0, var3668=r3, var2092=null_type, var346=r9, var1465=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream, var2756=$r2, var946=$r1, var2426=$r4, var219=$r5, var3613=$r6, var1395=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var2094=$r7, var51=r8, var1500=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3144, r0=var2747, r3=var3668, null_type=var2092, r9=var346, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream=var1465, $r2=var2756, $r1=var946, $r4=var2426, $r5=var219, $r6=var3613, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var1395, $r7=var2094, r8=var51, $z0=var1500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	r3 := @parameter0: java.lang.String;	r9 := @parameter1: int[];	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream out>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream: void rawPrint(java.lang.String)>($r6);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in>;	r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r8, r9);	if $z0 != 0 goto return;	return
;block_num 2