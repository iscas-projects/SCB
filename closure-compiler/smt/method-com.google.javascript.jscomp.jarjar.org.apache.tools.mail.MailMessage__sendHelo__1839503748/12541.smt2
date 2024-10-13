(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var2759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2759_getLocalHost/-1026799032 () var2759)
(declare-fun getCanonicalHostName/-622274826 (var2759) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun send/-1605217746 (var98 String (Array Int Int)) void)
(declare-const null-var98 var98)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2757 var98) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert (not (= var2757 null-var98)))
(define-const var3030 var2759 var2759_getLocalHost/-1026799032) ; Statement: $r0 = staticinvoke <java.net.InetAddress: java.net.InetAddress getLocalHost()>() 
(assert true)
(define-const var1443 String (getCanonicalHostName/-622274826 var3030)) ; Statement: r1 = virtualinvoke $r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>() 
(define-const var619 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[1] 
(declare-const var619!1 (Array Int Int))
(assert (not (= var619!1 null-__Array__Int__Int__)))
(assert (= (select var619!1 0) 250)) ; Statement: $r2[0] = 250 
(define-const var1405 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1405)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1405!1 String)
(assert (= var1405!1 ""))
(assert true)
(define-const var3225 String (append/672562846 var1405!1 "HELO ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HELO ") 
(declare-const var1405!2 String)
(assert (= var1405!2 (str.++ var1405!1 "HELO ")))
(assert true)
(define-const var3504 String (append/672562846 var3225 var1443)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3225!1 String)
(assert (= var3225!1 (str.++ var3225 var1443)))
(assert true)
(define-const var1354 String (toString/-2075883882 var3504)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (send/-1605217746 var2757 var1354 var619!1)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r7, $r2) 

(declare-const var2757!1 var98)
(declare-const var1354!1 String)
(declare-const var619!2 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2759_getLocalHost/-1026799032=([], java.net.InetAddress), getCanonicalHostName/-622274826=([java.net.InetAddress], java.lang.String), arr-Int-init=([], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), send/-1605217746=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int[]], void)}
; {var98=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var2757=r3, var2759=java.net.InetAddress, var3030=$r0, var1443=r1, var619=$r2, var1405=$r4, var3225=$r5, var3504=$r6, var1354=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var98, r3=var2757, java.net.InetAddress=var2759, $r0=var3030, r1=var1443, $r2=var619, $r4=var1405, $r5=var3225, $r6=var3504, $r7=var1354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r0 = staticinvoke <java.net.InetAddress: java.net.InetAddress getLocalHost()>();	r1 = virtualinvoke $r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>();	$r2 = newarray (int)[1];	$r2[0] = 250;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HELO ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void send(java.lang.String,int[])>($r7, $r2);	return
;block_num 1