(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3223 0)
(declare-sort var3951 0)
(declare-sort var2648 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun message/-952025990 (var3223) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var3820) var2648)
(declare-fun cast-from-var3223-to-var3820 (var3223) var3820)
(declare-fun replaceProperties/-453140326 (var2648 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3223 var3223)
(declare-const null-String String)
(declare-const var3967 var3223) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit 
(assert (not (= var3967 null-var3223)))
(declare-const var135 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var135 null-String)))
(define-const var3157 String (message/-952025990 var3967)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3157 null-String))) ; Cond: $r1 != null 
(define-const var3164 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3164)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3164!1 String)
(assert (= var3164!1 ""))
(define-const var1654 String (message/-952025990 var3967)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message> 
(assert true)
(define-const var131 String (append/672562846 var3164!1 var1654)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3164!2 String)
(assert (= var3164!2 (str.++ var3164!1 var1654)))
(assert true)
(define-const var1408 var2648 (getProject/416672769 (cast-from-var3223-to-var3820 var3967))) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3122 String (replaceProperties/-453140326 var1408 var135)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r4) 
(assert true)
(define-const var1551 String (append/672562846 var131 var3122)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var131!1 String)
(assert (= var131!1 (str.++ var131 var3122)))
(assert true)
(define-const var1228 String (toString/-2075883882 var1551)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3967!1 var3223)
(assert (not (= var3967!1 null-var3223)))
(assert (= (message/-952025990 var3967!1) var1228)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {message/-952025990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3223-to-var3820=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit, var3967=r0, var135=r4, var3951=null_type, var3157=$r1, var3164=$r2, var1654=$r3, var131=$r7, var2648=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3820=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1408=$r5, var3122=$r6, var1551=$r8, var1228=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit=var3223, r0=var3967, r4=var135, null_type=var3951, $r1=var3157, $r2=var3164, $r3=var1654, $r7=var131, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2648, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3820, $r5=var1408, $r6=var3122, $r8=var1551, $r9=var1228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit;	r4 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message>;	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exit: java.lang.String message> = $r9;	return
;block_num 2