(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3025 0)
(declare-sort var2779 0)
(declare-sort var3444 0)
(declare-sort var1624 0)
(declare-sort var1045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1461397135 (var3025) var3444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rawPrint/416888082 (var3444 String) void)
(declare-fun in/-1461397135 (var3025) var1624)
(declare-fun getResponse/1463180230 (var1624) String)
(declare-fun isResponseOK/2048108781 (var3025 String (Array Int Int)) Bool)
(declare-fun var1045-init () var1045)
(declare-fun <init>/-1557872005 (var1045 String) void)
(declare-const null-var3025 var3025)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2250 var3025) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var2250 null-var3025)))
(declare-const var768 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var768 null-String)))
(declare-const var1011 (Array Int Int)) ; Statement: r9 := @parameter1: int[] 
(assert (not (= var1011 null-__Array__Int__Int__)))
(define-const var1221 var3444 (out/-1461397135 var2250)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream out> 
(define-const var2761 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2761)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2761!1 String)
(assert (= var2761!1 ""))
(assert true)
(define-const var2941 String (append/672562846 var2761!1 var768)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2761!2 String)
(assert (= var2761!2 (str.++ var2761!1 var768)))
(assert true)
(define-const var3078 String (append/672562846 var2941 "\r\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var2941!1 String)
(assert (= var2941!1 (str.++ var2941 "\r\n")))
(assert true)
(define-const var3044 String (toString/-2075883882 var3078)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (rawPrint/416888082 var1221 var3044)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream: void rawPrint(java.lang.String)>($r6) 

(declare-const var1221!1 var3444)
(declare-const var3044!1 String)
(define-const var2649 var1624 (in/-1461397135 var2250)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in> 
(assert true)
(define-const var228 String (getResponse/1463180230 var2649)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>() 
(assert true)
(define-const var3644 Bool (isResponseOK/2048108781 var2250 var228 var1011)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r8, r9) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3644 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var676 var1045 var1045-init) ; Statement: $r10 = new java.io.IOException 
(define-const var3231 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3231)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3231!1 String)
(assert (= var3231!1 ""))
(assert true)
(define-const var3569 String (append/672562846 var3231!1 "Unexpected reply to command: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected reply to command: ") 
(declare-const var3231!2 String)
(assert (= var3231!2 (str.++ var3231!1 "Unexpected reply to command: ")))
(assert true)
(define-const var2223 String (append/672562846 var3569 var768)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3569!1 String)
(assert (= var3569!1 (str.++ var3569 var768)))
(assert true)
(define-const var2660 String (append/672562846 var2223 ": ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2223!1 String)
(assert (= var2223!1 (str.++ var2223 ": ")))
(assert true)
(define-const var2727 String (append/672562846 var2660 var228)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2660!1 String)
(assert (= var2660!1 (str.++ var2660 var228)))
(assert true)
(define-const var3452 String (toString/-2075883882 var2727)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var676 var3452)) ; Statement: specialinvoke $r10.<java.io.IOException: void <init>(java.lang.String)>($r16) 

(declare-const var676!1 var1045)
(declare-const var3452!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rawPrint/416888082=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream, java.lang.String], void), in/-1461397135=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader), getResponse/1463180230=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader], java.lang.String), isResponseOK/2048108781=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], boolean), var1045-init=([], java.io.IOException), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3025=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var2250=r0, var768=r3, var2779=null_type, var1011=r9, var3444=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream, var1221=$r2, var2761=$r1, var2941=$r4, var3078=$r5, var3044=$r6, var1624=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader, var2649=$r7, var228=r8, var3644=$z0, var1045=java.io.IOException, var676=$r10, var3231=$r11, var3569=$r12, var2223=$r13, var2660=$r14, var2727=$r15, var3452=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3025, r0=var2250, r3=var768, null_type=var2779, r9=var1011, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream=var3444, $r2=var1221, $r1=var2761, $r4=var2941, $r5=var3078, $r6=var3044, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader=var1624, $r7=var2649, r8=var228, $z0=var3644, java.io.IOException=var1045, $r10=var676, $r11=var3231, $r12=var3569, $r13=var2223, $r14=var2660, $r15=var2727, $r16=var3452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	r3 := @parameter0: java.lang.String;	r9 := @parameter1: int[];	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream out>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailPrintStream: void rawPrint(java.lang.String)>($r6);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader in>;	r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.SmtpResponseReader: java.lang.String getResponse()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: boolean isResponseOK(java.lang.String,int[])>(r8, r9);	if $z0 != 0 goto return;	$r10 = new java.io.IOException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected reply to command: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.io.IOException: void <init>(java.lang.String)>($r16);	throw $r10
;block_num 2