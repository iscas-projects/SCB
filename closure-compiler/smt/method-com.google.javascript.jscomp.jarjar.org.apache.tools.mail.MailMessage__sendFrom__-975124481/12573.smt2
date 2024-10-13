(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2615_sanitizeAddress/-1906376073 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun send/-1605217746 (var2615 String (Array Int Int)) void)
(declare-const null-var2615 var2615)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1557 var2615) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var1557 null-var2615)))
(declare-const var103 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var103 null-String)))
(define-const var539 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[1] 
(declare-const var539!1 (Array Int Int))
(assert (not (= var539!1 null-__Array__Int__Int__)))
(assert (= (select var539!1 0) 250)) ; Statement: $r0[0] = 250 
(define-const var403 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var403)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var403!1 String)
(assert (= var403!1 ""))
(assert true)
(define-const var3242 String (append/672562846 var403!1 "MAIL FROM: <")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MAIL FROM: <") 
(declare-const var403!2 String)
(assert (= var403!2 (str.++ var403!1 "MAIL FROM: <")))
(define-const var156 String (var2615_sanitizeAddress/-1906376073 var103)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.lang.String sanitizeAddress(java.lang.String)>(r3) 
(assert true)
(define-const var1767 String (append/672562846 var3242 var156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3242!1 String)
(assert (= var3242!1 (str.++ var3242 var156)))
(assert true)
(define-const var2129 String (append/672562846 var1767 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1767!1 String)
(assert (= var1767!1 (str.++ var1767 ">")))
(assert true)
(define-const var646 String (toString/-2075883882 var2129)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (send/-1605217746 var1557 var646 var539!1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r8, $r0) 

(declare-const var1557!1 var2615)
(declare-const var646!1 String)
(declare-const var539!2 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2615_sanitizeAddress/-1906376073=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), send/-1605217746=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], void)}
; {var2615=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var1557=r1, var103=r3, var993=null_type, var539=$r0, var403=$r2, var3242=$r5, var156=$r4, var1767=$r6, var2129=$r7, var646=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var2615, r1=var1557, r3=var103, null_type=var993, $r0=var539, $r2=var403, $r5=var3242, $r4=var156, $r6=var1767, $r7=var2129, $r8=var646}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	r3 := @parameter0: java.lang.String;	$r0 = newarray (int)[1];	$r0[0] = 250;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MAIL FROM: <");	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.lang.String sanitizeAddress(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r8, $r0);	return
;block_num 1