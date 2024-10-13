(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort var3729 0)
(declare-sort var1665 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun messageAttribute/555368430 (var2100) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun message/555368430 (var2100) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var3175) var1665)
(declare-fun cast-from-var2100-to-var3175 (var2100) var3175)
(declare-fun replaceProperties/-453140326 (var1665 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2100 var2100)
(declare-const null-String String)
(declare-const var227 var2100) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input 
(assert (not (= var227 null-var2100)))
(declare-const var518 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var518 null-String)))
(define-const var770 Bool (messageAttribute/555368430 var227)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: boolean messageAttribute> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var770 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1885 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1885)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1885!1 String)
(assert (= var1885!1 ""))
(define-const var1546 String (message/555368430 var227)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String message> 
(assert true)
(define-const var687 String (append/672562846 var1885!1 var1546)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1885!2 String)
(assert (= var1885!2 (str.++ var1885!1 var1546)))
(assert true)
(define-const var2734 var1665 (getProject/416672769 (cast-from-var2100-to-var3175 var227))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3837 String (replaceProperties/-453140326 var2734 var518)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3) 
(assert true)
(define-const var516 String (append/672562846 var687 var3837)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var687!1 String)
(assert (= var687!1 (str.++ var687 var3837)))
(assert true)
(define-const var2673 String (toString/-2075883882 var516)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var227!1 var2100)
(assert (not (= var227!1 null-var2100)))
(assert (= (message/555368430 var227!1) var2673)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String message> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {messageAttribute/555368430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), message/555368430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2100-to-var3175=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2100=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input, var227=r0, var518=r3, var3729=null_type, var770=$z0, var1885=$r1, var1546=$r2, var687=$r6, var1665=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3175=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2734=$r4, var3837=$r5, var516=$r7, var2673=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input=var2100, r0=var227, r3=var518, null_type=var3729, $z0=var770, $r1=var1885, $r2=var1546, $r6=var687, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1665, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3175, $r4=var2734, $r5=var3837, $r7=var516, $r8=var2673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input;	r3 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: boolean messageAttribute>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String message>;	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Input: java.lang.String message> = $r8;	return
;block_num 2