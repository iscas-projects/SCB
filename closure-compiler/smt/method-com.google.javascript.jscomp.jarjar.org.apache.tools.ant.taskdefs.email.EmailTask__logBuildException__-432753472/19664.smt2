(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1732 0)
(declare-sort var2284 0)
(declare-sort var1270 0)
(declare-sort var2637 0)
(declare-sort var856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var2637) var2637)
(declare-fun cast-from-var1270-to-var2637 (var1270) var2637)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2637) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var856 String Int) void)
(declare-fun cast-from-var1732-to-var856 (var1732) var856)
(declare-const null-var1732 var1732)
(declare-const null-String String)
(declare-const null-var1270 var1270)
(declare-const null-var2637 var2637)
(declare-const var3601 var1732) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask 
(assert (not (= var3601 null-var1732)))
(declare-const var784 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var784 null-String)))
(declare-const var389 var1270) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var389 null-var1270)))
(assert true)
(define-const var1012 var2637 (getCause/-638798464 (cast-from-var1270-to-var2637 var389))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
 ; Statement: if $r1 != null goto $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>() 
(assert (not (not (= var1012 null-var2637)))) ; Negate: Cond: $r1 != null  
(define-const var549 var2637 (cast-from-var1270-to-var2637 var389)) ; Statement: $r9 = r0 
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1851 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1851)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1851!1 String)
(assert (= var1851!1 ""))
(assert true)
(define-const var2610 String (append/672562846 var1851!1 var784)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1851!2 String)
(assert (= var1851!2 (str.++ var1851!1 var784)))
(assert true)
(define-const var2907 String (getMessage/849299655 var549)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var1591 String (append/672562846 var2610 var2907)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2610!1 String)
(assert (= var2610!1 (str.++ var2610 var2907)))
(assert true)
(define-const var2501 String (toString/-2075883882 var1591)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1732-to-var856 var3601) var2501 1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void log(java.lang.String,int)>($r8, 1) 

(declare-const var3601!1 var1732)
(declare-const var2501!1 String)
(declare-const var3948 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var1270-to-var2637=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1732-to-var856=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1732=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask, var3601=r2, var784=r4, var2284=null_type, var1270=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var389=r0, var2637=java.lang.Throwable, var1012=$r1, var549=$r9, var1851=$r3, var2610=$r6, var2907=$r5, var1591=$r7, var2501=$r8, var856=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3948=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask=var1732, r2=var3601, r4=var784, null_type=var2284, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1270, r0=var389, java.lang.Throwable=var2637, $r1=var1012, $r9=var549, $r3=var1851, $r6=var2610, $r5=var2907, $r7=var1591, $r8=var2501, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var856, 1=var3948}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	if $r1 != null goto $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.Throwable getCause()>();	$r9 = r0;	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r5 = virtualinvoke $r9.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailTask: void log(java.lang.String,int)>($r8, 1);	return
;block_num 3