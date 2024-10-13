(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var3718 0)
(declare-sort var3515 0)
(declare-sort var3774 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var3774) var3774)
(declare-fun cast-from-var3515-to-var3774 (var3515) var3774)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1452 String Int) void)
(declare-fun cast-from-var1108-to-var1452 (var1108) var1452)
(declare-const null-var1108 var1108)
(declare-const null-String String)
(declare-const null-var3515 var3515)
(declare-const null-var3774 var3774)
(declare-const var3595 var1108) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask 
(assert (not (= var3595 null-var1108)))
(declare-const var441 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var441 null-String)))
(declare-const var2822 var3515) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var2822 null-var3515)))
(assert true)
(define-const var3011 var3774 (getCause/-638798464 (cast-from-var3515-to-var3774 var2822))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
 ; Statement: if $r1 != null goto $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert (not (= var3011 null-var3774))) ; Cond: $r1 != null 
(assert true)
(define-const var3444 var3774 (getCause/-638798464 (cast-from-var3515-to-var3774 var2822))) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert true) ; Non Conditional
(define-const var2613 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2613)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2613!1 String)
(assert (= var2613!1 ""))
(assert true)
(define-const var1529 String (append/672562846 var2613!1 var441)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2613!2 String)
(assert (= var2613!2 (str.++ var2613!1 var441)))
(assert true)
(define-const var459 String (getMessage/849299655 var3444)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var1141 String (append/672562846 var1529 var459)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1529!1 String)
(assert (= var1529!1 (str.++ var1529 var459)))
(assert true)
(define-const var2557 String (toString/-2075883882 var1141)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1108-to-var1452 var3595) var2557 1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void log(java.lang.String,int)>($r8, 1) 

(declare-const var3595!1 var1108)
(declare-const var2557!1 String)
(declare-const var513 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var3515-to-var3774=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1108-to-var1452=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask, var3595=r2, var441=r4, var3718=null_type, var3515=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2822=r0, var3774=java.lang.Throwable, var3011=$r1, var3444=$r9, var2613=$r3, var1529=$r6, var459=$r5, var1141=$r7, var2557=$r8, var1452=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var513=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask=var1108, r2=var3595, r4=var441, null_type=var3718, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3515, r0=var2822, java.lang.Throwable=var3774, $r1=var3011, $r9=var3444, $r3=var2613, $r6=var1529, $r5=var459, $r7=var1141, $r8=var2557, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1452, 1=var513}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	if $r1 != null goto $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r5 = virtualinvoke $r9.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void log(java.lang.String,int)>($r8, 1);	return
;block_num 3