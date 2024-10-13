(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort var2351 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun in/-1461397135 (var2124) var2351)
(declare-fun getResponse/1463180230 (var2351) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun isResponseOK/2048108781 (var2124 String (Array Int Int)) Bool)
(declare-fun var814-init () var814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var814 String) void)
(declare-const null-var2124 var2124)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1615 var2124) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var1615 null-var2124)))
(define-const var2559 var2351 (in/-1461397135 var1615)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in> 
(assert true)
(define-const var3892 String (getResponse/1463180230 var2559)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>() 
(define-const var2158 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[1] 
(declare-const var2158!1 (Array Int Int))
(assert (not (= var2158!1 null-__Array__Int__Int__)))
(assert (= (select var2158!1 0) 220)) ; Statement: $r3[0] = 220 
(assert true)
(define-const var2789 Bool (isResponseOK/2048108781 var1615 var3892 var2158!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r2, $r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2789 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1967 var814 var814-init) ; Statement: $r4 = new java.io.IOException 
(define-const var3189 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3189)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3189!1 String)
(assert (= var3189!1 ""))
(assert true)
(define-const var3157 String (append/672562846 var3189!1 "Didn\u0027t get introduction from server: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Didn\'t get introduction from server: ") 
(declare-const var3189!2 String)
(assert (= var3189!2 (str.++ var3189!1 "Didn\u0027t get introduction from server: ")))
(assert true)
(define-const var478 String (append/672562846 var3157 var3892)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3157!1 String)
(assert (= var3157!1 (str.++ var3157 var3892)))
(assert true)
(define-const var3461 String (toString/-2075883882 var478)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1967 var3461)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var1967!1 var814)
(declare-const var3461!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {in/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader), getResponse/1463180230=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader], java.lang.String), arr-Int-init=([], int[]), isResponseOK/2048108781=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], boolean), var814-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2124=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var1615=r0, var2351=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var2559=$r1, var3892=r2, var2158=$r3, var2789=$z0, var814=java.io.IOException, var1967=$r4, var3189=$r5, var3157=$r6, var478=$r7, var3461=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var2124, r0=var1615, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var2351, $r1=var2559, r2=var3892, $r3=var2158, $z0=var2789, java.io.IOException=var814, $r4=var1967, $r5=var3189, $r6=var3157, $r7=var478, $r8=var3461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>();	$r3 = newarray (int)[1];	$r3[0] = 220;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r2, $r3);	if $z0 != 0 goto return;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Didn\'t get introduction from server: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2