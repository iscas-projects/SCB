(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1099 0)
(declare-sort var2079 0)
(declare-sort var3132 0)
(declare-sort var1290 0)
(declare-sort var1586 0)
(declare-sort var2930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1099!class ClassObject)
(declare-fun getCause/-638798464 (var2930) var2930)
(declare-fun cast-from-var1586-to-var2930 (var1586) var2930)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2930) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/359786790 (var1099 String) void)
(declare-const null-var1099 var1099)
(declare-const null-var2079 var2079)
(declare-const null-var3132 var3132)
(declare-const null-String String)
(declare-const null-var1586 var1586)
(declare-const null-var2930 var2930)
(declare-const var2183 var1099) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var2183 null-var1099)))
(declare-const var3982 var2079) ; Statement: r12 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3982 null-var2079)))
(declare-const var1427 var3132) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values 
(assert (not (= var1427 null-var3132)))
(declare-const var3152 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3152 null-String)))
(define-const var19 ClassObject var1099!class) ; Statement: $r0 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/listener/MailLogger;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1873 var1586) ; Statement: $r27 := @caughtexception 
(assert (not (= var1873 null-var1586)))
(assert true)
(define-const var1754 var2930 (getCause/-638798464 (cast-from-var1586-to-var2930 var1873))) ; Statement: $r28 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
 ; Statement: if $r28 != null goto $r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert (not (not (= var1754 null-var2930)))) ; Negate: Cond: $r28 != null  
(define-const var1431 var2930 (cast-from-var1586-to-var2930 var1873)) ; Statement: $r35 = $r27 
 ; Statement: goto [?= $r29 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var745 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var745)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var745!1 String)
(assert (= var745!1 ""))
(assert true)
(define-const var1978 String (append/672562846 var745!1 "Failed to initialise MIME mail: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialise MIME mail: ") 
(declare-const var745!2 String)
(assert (= var745!2 (str.++ var745!1 "Failed to initialise MIME mail: ")))
(assert true)
(define-const var2399 String (getMessage/849299655 var1431)) ; Statement: $r30 = virtualinvoke $r35.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var3616 String (append/672562846 var1978 var2399)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1978!1 String)
(assert (= var1978!1 (str.++ var1978 var2399)))
(assert true)
(define-const var2564 String (toString/-2075883882 var3616)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/359786790 var2183 var2564)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: void log(java.lang.String)>($r33) 

(declare-const var2183!1 var1099)
(declare-const var2564!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var1586-to-var2930=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/359786790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, java.lang.String], void)}
; {var1099=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var2183=r3, var2079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3982=r12, var3132=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values, var1427=r4, var3152=r11, var1290=null_type, var19=$r0, var1586=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1873=$r27, var2930=java.lang.Throwable, var1754=$r28, var1431=$r35, var745=$r29, var1978=$r31, var2399=$r30, var3616=$r32, var2564=$r33}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var1099, r3=var2183, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2079, r12=var3982, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values=var3132, r4=var1427, r11=var3152, null_type=var1290, $r0=var19, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1586, $r27=var1873, java.lang.Throwable=var2930, $r28=var1754, $r35=var1431, $r29=var745, $r31=var1978, $r30=var2399, $r32=var3616, $r33=var2564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r12 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values;	r11 := @parameter2: java.lang.String;	$r0 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/listener/MailLogger;";	$r27 := @caughtexception;	$r28 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	if $r28 != null goto $r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r35 = $r27;	goto [?= $r29 = new java.lang.StringBuilder];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialise MIME mail: ");	$r30 = virtualinvoke $r35.<java.lang.Throwable: java.lang.String getMessage()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: void log(java.lang.String)>($r33);	return
;block_num 4