(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var971 0)
(declare-sort var970 0)
(declare-sort var3862 0)
(declare-sort var1456 0)
(declare-sort var2780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var3862) var970)
(declare-fun cast-from-var971-to-var3862 (var971) var3862)
(declare-fun var1456-init () var1456)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskName/237633316 (var2780) String)
(declare-fun cast-from-var971-to-var2780 (var971) var2780)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1456 String) void)
(declare-const null-var971 var971)
(declare-const null-var970 var970)
(declare-const var2920 var971) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference 
(assert (not (= var2920 null-var971)))
(assert true)
(define-const var3044 var970 (getProject/416672769 (cast-from-var971-to-var3862 var2920))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if $r1 != null goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: void hijackId()>() 
(assert (not (not (= var3044 null-var970)))) ; Negate: Cond: $r1 != null  
(define-const var3113 var1456 var1456-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(define-const var1324 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1324)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1324!1 String)
(assert (= var1324!1 ""))
(assert true)
(define-const var139 String (getTaskName/237633316 (cast-from-var971-to-var2780 var2920))) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: java.lang.String getTaskName()>() 
(assert true)
(define-const var2021 String (append/672562846 var1324!1 var139)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1324!2 String)
(assert (= var1324!2 (str.++ var1324!1 var139)))
(assert true)
(define-const var2065 String (append/672562846 var2021 "Project owner unset")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Project owner unset") 
(declare-const var2021!1 String)
(assert (= var2021!1 (str.++ var2021 "Project owner unset")))
(assert true)
(define-const var1534 String (toString/-2075883882 var2065)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3113 var1534)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27) 

(declare-const var3113!1 var1456)
(declare-const var1534!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var971-to-var3862=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), var1456-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var971-to-var2780=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var971=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference, var2920=r0, var970=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3862=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3044=$r1, var1456=java.lang.IllegalStateException, var3113=$r22, var1324=$r23, var2780=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var139=$r24, var2021=$r25, var2065=$r26, var1534=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference=var971, r0=var2920, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var970, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3862, $r1=var3044, java.lang.IllegalStateException=var1456, $r22=var3113, $r23=var1324, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2780, $r24=var139, $r25=var2021, $r26=var2065, $r27=var1534}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if $r1 != null goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: void hijackId()>();	$r22 = new java.lang.IllegalStateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AugmentReference: java.lang.String getTaskName()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Project owner unset");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27);	throw $r22
;block_num 2