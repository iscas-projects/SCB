(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2486 0)
(declare-sort var563 0)
(declare-sort var3767 0)
(declare-sort var3308 0)
(declare-sort var3042 0)
(declare-sort var3573 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3308) String)
(declare-fun cast-from-var563-to-var3308 (var563) var3308)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun shouldIgnoreInvalidRecipients/-835346851 (var3042) Bool)
(declare-fun cast-from-var2486-to-var3042 (var2486) var3042)
(declare-fun var3573-init () var3573)
(declare-fun <init>/-191906322 (var3573 String var3974) void)
(declare-fun cast-from-var3767-to-var3974 (var3767) var3974)
(declare-const null-var2486 var2486)
(declare-const null-var563 var563)
(declare-const null-var3767 var3767)
(declare-const var1895 var2486) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer 
(assert (not (= var1895 null-var2486)))
(declare-const var2215 var563) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress 
(assert (not (= var2215 null-var563)))
(declare-const var147 var3767) ; Statement: r6 := @parameter1: java.io.IOException 
(assert (not (= var147 null-var3767)))
(define-const var2666 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2666)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2666!1 String)
(assert (= var2666!1 ""))
(assert true)
(define-const var3194 String (append/672562846 var2666!1 "Failed to send mail to ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to send mail to ") 
(declare-const var2666!2 String)
(assert (= var2666!2 (str.++ var2666!1 "Failed to send mail to ")))
(assert true)
(define-const var3366 String (append/-1031950772 var3194 (cast-from-var563-to-var3308 var2215))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3194!1 String)
(assert (str.prefixof var3194 var3194!1))
(assert true)
(define-const var3736 String (toString/-2075883882 var3366)) ; Statement: r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2365 Bool (shouldIgnoreInvalidRecipients/-835346851 (cast-from-var2486-to-var3042 var1895))) ; Statement: $z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer: boolean shouldIgnoreInvalidRecipients()>() 
 ; Statement: if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= (ite var2365 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1295 var3573 var3573-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var1295 var3736 (cast-from-var3767-to-var3974 var147))) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r15, r6) 

(declare-const var1295!1 var3573)
(declare-const var3736!1 String)
(declare-const var147!1 var3767)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var563-to-var3308=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), shouldIgnoreInvalidRecipients/-835346851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Mailer], boolean), cast-from-var2486-to-var3042=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Mailer), var3573-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3767-to-var3974=([java.io.IOException], java.lang.Throwable)}
; {var2486=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer, var1895=r4, var563=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress, var2215=r1, var3767=java.io.IOException, var147=r6, var2666=$r0, var3194=$r2, var3308=java.lang.Object, var3366=$r3, var3736=r15, var3042=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Mailer, var2365=$z0, var3573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1295=$r5, var3974=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer=var2486, r4=var1895, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress=var563, r1=var2215, java.io.IOException=var3767, r6=var147, $r0=var2666, $r2=var3194, java.lang.Object=var3308, $r3=var3366, r15=var3736, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Mailer=var3042, $z0=var2365, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3573, $r5=var1295, java.lang.Throwable=var3974}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress;	r6 := @parameter1: java.io.IOException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to send mail to ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.PlainMailer: boolean shouldIgnoreInvalidRecipients()>();	if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r15, r6);	throw $r5
;block_num 2