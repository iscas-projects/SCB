(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var1339 0)
(declare-sort var2203 0)
(declare-sort var2758 0)
(declare-sort var3419 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun srcFilePos/-497078696 (var1938) var1339)
(declare-fun var2203-init () var2203)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2758) String)
(declare-fun cast-from-var1938-to-var2758 (var1938) var2758)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1211) var3419)
(declare-fun cast-from-var1938-to-var1211 (var1938) var1211)
(declare-fun <init>/-469549130 (var2203 String var3419) void)
(declare-const null-var1938 var1938)
(declare-const null-var1339 var1339)
(declare-const var239 var1938) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var239 null-var1938)))
(define-const var459 var1339 (srcFilePos/-497078696 var239)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl> 
(assert (not (= var459 null-var1339))) ; Negate: Cond: $r1 == null  
(define-const var2303 var2203 var2203-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var959 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var959)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var959!1 String)
(assert (= var959!1 ""))
(assert true)
(define-const var3518 String (getTaskType/1957558293 (cast-from-var1938-to-var2758 var239))) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskType()>() 
(assert true)
(define-const var2923 String (append/672562846 var959!1 var3518)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var959!2 String)
(assert (= var959!2 (str.++ var959!1 var3518)))
(assert true)
(define-const var2120 String (append/672562846 var2923 " doesn\u0027t support multiple srcfile elements.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support multiple srcfile elements.") 
(declare-const var2923!1 String)
(assert (= var2923!1 (str.++ var2923 " doesn\u0027t support multiple srcfile elements.")))
(assert true)
(define-const var98 String (toString/-2075883882 var2120)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var277 var3419 (getLocation/851674571 (cast-from-var1938-to-var1211 var239))) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2303 var98 var277)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r10) 

(declare-const var2303!1 var2203)
(declare-const var98!1 String)
(declare-const var277!1 var3419)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {srcFilePos/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker), var2203-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1938-to-var2758=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1938-to-var1211=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1938=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var239=r0, var1339=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker, var459=$r1, var2203=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2303=$r5, var959=$r6, var2758=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3518=$r7, var2923=$r8, var2120=$r9, var98=$r11, var3419=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1211=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var277=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var1938, r0=var239, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker=var1339, $r1=var459, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2203, $r5=var2303, $r6=var959, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2758, $r7=var3518, $r8=var2923, $r9=var2120, $r11=var98, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3419, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1211, $r10=var277}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker srcFilePos>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl>;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskType()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support multiple srcfile elements.");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r10);	throw $r5
;block_num 2