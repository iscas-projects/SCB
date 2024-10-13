(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var245 0)
(declare-sort var815 0)
(declare-sort var3374 0)
(declare-sort var2448 0)
(declare-sort var3028 0)
(declare-sort var530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var245!class ClassObject)
(declare-fun getCause/-638798464 (var530) var530)
(declare-fun cast-from-var3028-to-var530 (var3028) var530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var530) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/359786790 (var245 String) void)
(declare-const null-var245 var245)
(declare-const null-var815 var815)
(declare-const null-var3374 var3374)
(declare-const null-String String)
(declare-const null-var3028 var3028)
(declare-const null-var530 var530)
(declare-const var2986 var245) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var2986 null-var245)))
(declare-const var465 var815) ; Statement: r12 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var465 null-var815)))
(declare-const var3804 var3374) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values 
(assert (not (= var3804 null-var3374)))
(declare-const var3395 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3395 null-String)))
(define-const var3730 ClassObject var245!class) ; Statement: $r0 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/listener/MailLogger;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2744 var3028) ; Statement: $r27 := @caughtexception 
(assert (not (= var2744 null-var3028)))
(assert true)
(define-const var515 var530 (getCause/-638798464 (cast-from-var3028-to-var530 var2744))) ; Statement: $r28 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
 ; Statement: if $r28 != null goto $r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert (not (= var515 null-var530))) ; Cond: $r28 != null 
(assert true)
(define-const var380 var530 (getCause/-638798464 (cast-from-var3028-to-var530 var2744))) ; Statement: $r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert true) ; Non Conditional
(define-const var3681 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3681)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3681!1 String)
(assert (= var3681!1 ""))
(assert true)
(define-const var1703 String (append/672562846 var3681!1 "Failed to initialise MIME mail: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialise MIME mail: ") 
(declare-const var3681!2 String)
(assert (= var3681!2 (str.++ var3681!1 "Failed to initialise MIME mail: ")))
(assert true)
(define-const var2506 String (getMessage/849299655 var380)) ; Statement: $r30 = virtualinvoke $r35.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var852 String (append/672562846 var1703 var2506)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var2506)))
(assert true)
(define-const var3158 String (toString/-2075883882 var852)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/359786790 var2986 var3158)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: void log(java.lang.String)>($r33) 

(declare-const var2986!1 var245)
(declare-const var3158!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var3028-to-var530=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/359786790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, java.lang.String], void)}
; {var245=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var2986=r3, var815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var465=r12, var3374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values, var3804=r4, var3395=r11, var2448=null_type, var3730=$r0, var3028=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2744=$r27, var530=java.lang.Throwable, var515=$r28, var380=$r35, var3681=$r29, var1703=$r31, var2506=$r30, var852=$r32, var3158=$r33}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var245, r3=var2986, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var815, r12=var465, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values=var3374, r4=var3804, r11=var3395, null_type=var2448, $r0=var3730, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3028, $r27=var2744, java.lang.Throwable=var530, $r28=var515, $r35=var380, $r29=var3681, $r31=var1703, $r30=var2506, $r32=var852, $r33=var3158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r12 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values;	r11 := @parameter2: java.lang.String;	$r0 = class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/listener/MailLogger;";	$r27 := @caughtexception;	$r28 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	if $r28 != null goto $r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r35 = virtualinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to initialise MIME mail: ");	$r30 = virtualinvoke $r35.<java.lang.Throwable: java.lang.String getMessage()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger: void log(java.lang.String)>($r33);	return
;block_num 4