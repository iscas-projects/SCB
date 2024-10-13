(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort var2086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun in/-1461397135 (var3499) var2086)
(declare-fun getResponse/1463180230 (var2086) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun isResponseOK/2048108781 (var3499 String (Array Int Int)) Bool)
(declare-const null-var3499 var3499)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1114 var3499) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var1114 null-var3499)))
(define-const var3677 var2086 (in/-1461397135 var1114)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in> 
(assert true)
(define-const var761 String (getResponse/1463180230 var3677)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>() 
(define-const var1677 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[1] 
(declare-const var1677!1 (Array Int Int))
(assert (not (= var1677!1 null-__Array__Int__Int__)))
(assert (= (select var1677!1 0) 220)) ; Statement: $r3[0] = 220 
(assert true)
(define-const var1377 Bool (isResponseOK/2048108781 var1114 var761 var1677!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r2, $r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1377 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {in/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader), getResponse/1463180230=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader], java.lang.String), arr-Int-init=([], int[]), isResponseOK/2048108781=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], boolean)}
; {var3499=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var1114=r0, var2086=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var3677=$r1, var761=r2, var1677=$r3, var1377=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3499, r0=var1114, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var2086, $r1=var3677, r2=var761, $r3=var1677, $z0=var1377}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>();	$r3 = newarray (int)[1];	$r3[0] = 220;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r2, $r3);	if $z0 != 0 goto return;	return
;block_num 2