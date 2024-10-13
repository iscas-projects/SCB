(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var203 0)
(declare-sort var1136 0)
(declare-sort var770 0)
(declare-sort var543 0)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addproperty/555368430 (var203) String)
(declare-fun getProject/416672769 (var543) var770)
(declare-fun cast-from-var203-to-var543 (var203) var543)
(declare-fun getProperty/-1126216426 (var770 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTaskName/237633316 (var1922) String)
(declare-fun cast-from-var203-to-var1922 (var203) var1922)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1601532580 (var1922 String) void)
(declare-const null-var203 var203)
(declare-const null-String String)
(declare-const var2100 var203) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input 
(assert (not (= var2100 null-var203)))
(define-const var1993 String (addproperty/555368430 var2100)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String validargs> 
(assert (not (= var1993 null-String))) ; Negate: Cond: $r1 == null  
(assert true)
(define-const var1854 var770 (getProject/416672769 (cast-from-var203-to-var543 var2100))) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var3117 String (addproperty/555368430 var2100)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty> 
(assert true)
(define-const var3145 String (getProperty/-1126216426 var1854 var3117)) ; Statement: $r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r17) 
 ; Statement: if $r19 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String validargs> 
(assert (not (= var3145 null-String))) ; Negate: Cond: $r19 == null  
(define-const var1310 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1310)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1310!1 String)
(assert (= var1310!1 ""))
(assert true)
(define-const var910 String (append/672562846 var1310!1 "skipping ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ") 
(declare-const var1310!2 String)
(assert (= var1310!2 (str.++ var1310!1 "skipping ")))
(assert true)
(define-const var530 String (getTaskName/237633316 (cast-from-var203-to-var1922 var2100))) ; Statement: $r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String getTaskName()>() 
(assert true)
(define-const var556 String (append/672562846 var910 var530)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var910!1 String)
(assert (= var910!1 (str.++ var910 var530)))
(assert true)
(define-const var3691 String (append/672562846 var556 " as property ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as property ") 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 " as property ")))
(define-const var3710 String (addproperty/555368430 var2100)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty> 
(assert true)
(define-const var3972 String (append/672562846 var3691 var3710)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3691!1 String)
(assert (= var3691!1 (str.++ var3691 var3710)))
(assert true)
(define-const var1256 String (append/672562846 var3972 " has already been set.")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been set.") 
(declare-const var3972!1 String)
(assert (= var3972!1 (str.++ var3972 " has already been set.")))
(assert true)
(define-const var786 String (toString/-2075883882 var1256)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1601532580 (cast-from-var203-to-var1922 var2100) var786)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: void log(java.lang.String)>($r28) 

(declare-const var2100!1 var203)
(declare-const var786!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addproperty/555368430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], java.lang.String), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var203-to-var543=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var203-to-var1922=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void)}
; {var203=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input, var2100=r0, var1993=$r1, var1136=null_type, var770=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var543=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1854=$r18, var3117=$r17, var3145=$r19, var1310=$r20, var910=$r22, var1922=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var530=$r21, var556=$r23, var3691=$r25, var3710=$r24, var3972=$r26, var1256=$r27, var786=$r28}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input=var203, r0=var2100, $r1=var1993, null_type=var1136, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var770, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var543, $r18=var1854, $r17=var3117, $r19=var3145, $r20=var1310, $r22=var910, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1922, $r21=var530, $r23=var556, $r25=var3691, $r24=var3710, $r26=var3972, $r27=var1256, $r28=var786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String validargs>;	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty>;	$r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r17);	if $r19 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String validargs>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ");	$r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String getTaskName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as property ");	$r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String addproperty>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has already been set.");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: void log(java.lang.String)>($r28);	return
;block_num 3