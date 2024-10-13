(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3912 0)
(declare-sort var3659 0)
(declare-sort var3595 0)
(declare-sort var1348 0)
(declare-sort var3408 0)
(declare-sort var626 0)
(declare-sort var2125 0)
(declare-sort var416 0)
(declare-sort var1283 0)
(declare-sort var3074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3595-init () var3595)
(declare-fun <init>/964458484 (var3595) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1348 String Int) void)
(declare-fun cast-from-var3912-to-var1348 (var3912) var1348)
(declare-fun classpath/-696888527 (var3912) var3408)
(declare-fun getProject/416672769 (var2125) var626)
(declare-fun cast-from-var3912-to-var2125 (var3912) var2125)
(declare-fun cast-from-var1283-to-var416 (var1283) var416)
(declare-fun createClassLoader/-1162867620 (var626 var3408) var1283)
(declare-const null-var3912 var3912)
(declare-const null-String String)
(declare-const null-var3408 var3408)
(declare-const null-var3074 var3074)
(declare-const var2371 var3912) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var2371 null-var3912)))
(declare-const var2964 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2964 null-String)))
(define-const var1260 var3595 var3595-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var1260)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var1260!1 var3595)
(define-const var9 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var3389 String (append/672562846 var9!1 "Resource Loading ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource Loading ") 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 "Resource Loading ")))
(assert true)
(define-const var1194 String (append/672562846 var3389 var2964)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3389!1 String)
(assert (= var3389!1 (str.++ var3389 var2964)))
(assert true)
(define-const var715 String (toString/-2075883882 var1194)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3912-to-var1348 var2371) var715 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3) 

(declare-const var2371!1 var3912)
(declare-const var715!1 String)
(declare-const var1119 Int)
(define-const var2742 var3408 (classpath/-696888527 var2371!1)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r7 != null goto $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (not (= var2742 null-var3408))) ; Cond: $r7 != null 
(assert true)
(define-const var671 var626 (getProject/416672769 (cast-from-var3912-to-var2125 var2371!1))) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var2823 var3408 (classpath/-696888527 var2371!1)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert true)
(define-const var86 var416 (cast-from-var1283-to-var416 (createClassLoader/-1162867620 var671 var2823))) ; Statement: $r26 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader createClassLoader(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path)>($r8) 
(assert true) ; Non Conditional
(define-const var528 var416 var86) ; Statement: r10 = $r26 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2940 var3074) ; Statement: $r18 := @caughtexception 
(assert (not (= var2940 null-var3074)))
(assert true) ; Non Conditional
(define-const var153 var3408 (classpath/-696888527 var2371!1)) ; Statement: $r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r19 == null goto throw $r18 
(assert (= var153 null-var3408)) ; Cond: $r19 == null 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3595-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3912-to-var1348=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), classpath/-696888527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3912-to-var2125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), cast-from-var1283-to-var416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.lang.ClassLoader), createClassLoader/-1162867620=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader)}
; {var3912=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var2371=r1, var2964=r3, var3659=null_type, var3595=java.util.Properties, var1260=$r0, var9=$r2, var3389=$r4, var1194=$r5, var715=$r6, var1348=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1119=3, var3408=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2742=$r7, var626=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2125=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var671=$r9, var2823=$r8, var416=java.lang.ClassLoader, var1283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var86=$r26, var528=r10, var3074=java.lang.Throwable, var2940=$r18, var153=$r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var3912, r1=var2371, r3=var2964, null_type=var3659, java.util.Properties=var3595, $r0=var1260, $r2=var9, $r4=var3389, $r5=var1194, $r6=var715, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1348, 3=var1119, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3408, $r7=var2742, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var626, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2125, $r9=var671, $r8=var2823, java.lang.ClassLoader=var416, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1283, $r26=var86, r10=var528, java.lang.Throwable=var3074, $r18=var2940, $r19=var153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r3 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource Loading ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3);	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r7 != null goto $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r26 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader createClassLoader(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path)>($r8);	r10 = $r26;	$r18 := @caughtexception;	$r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r19 == null goto throw $r18;	throw $r18
;block_num 6