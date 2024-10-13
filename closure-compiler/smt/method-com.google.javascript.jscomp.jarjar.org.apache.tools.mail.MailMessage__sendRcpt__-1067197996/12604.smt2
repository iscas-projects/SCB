(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3197 0)
(declare-sort var2029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3197_sanitizeAddress/-1906376073 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun send/-1605217746 (var3197 String (Array Int Int)) void)
(declare-const null-var3197 var3197)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3594 var3197) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var3594 null-var3197)))
(declare-const var2147 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2147 null-String)))
(define-const var1952 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[2] 
(declare-const var1952!1 (Array Int Int))
(assert (not (= var1952!1 null-__Array__Int__Int__)))
(assert (= (select var1952!1 0) 250)) ; Statement: $r0[0] = 250 
(declare-const var1952!2 (Array Int Int))
(assert (not (= var1952!2 null-__Array__Int__Int__)))
(assert (= (select var1952!2 1) 251)) ; Statement: $r0[1] = 251 
(define-const var915 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var915)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var915!1 String)
(assert (= var915!1 ""))
(assert true)
(define-const var9 String (append/672562846 var915!1 "RCPT TO: <")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RCPT TO: <") 
(declare-const var915!2 String)
(assert (= var915!2 (str.++ var915!1 "RCPT TO: <")))
(define-const var3280 String (var3197_sanitizeAddress/-1906376073 var2147)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.lang.String sanitizeAddress(java.lang.String)>(r3) 
(assert true)
(define-const var2549 String (append/672562846 var9 var3280)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var9!1 String)
(assert (= var9!1 (str.++ var9 var3280)))
(assert true)
(define-const var1893 String (append/672562846 var2549 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2549!1 String)
(assert (= var2549!1 (str.++ var2549 ">")))
(assert true)
(define-const var2351 String (toString/-2075883882 var1893)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (send/-1605217746 var3594 var2351 var1952!2)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r8, $r0) 

(declare-const var3594!1 var3197)
(declare-const var2351!1 String)
(declare-const var1952!3 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3197_sanitizeAddress/-1906376073=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), send/-1605217746=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], void)}
; {var3197=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var3594=r1, var2147=r3, var2029=null_type, var1952=$r0, var915=$r2, var9=$r5, var3280=$r4, var2549=$r6, var1893=$r7, var2351=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3197, r1=var3594, r3=var2147, null_type=var2029, $r0=var1952, $r2=var915, $r5=var9, $r4=var3280, $r6=var2549, $r7=var1893, $r8=var2351}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	r3 := @parameter0: java.lang.String;	$r0 = newarray (int)[2];	$r0[0] = 250;	$r0[1] = 251;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RCPT TO: <");	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.lang.String sanitizeAddress(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r8, $r0);	return
;block_num 1