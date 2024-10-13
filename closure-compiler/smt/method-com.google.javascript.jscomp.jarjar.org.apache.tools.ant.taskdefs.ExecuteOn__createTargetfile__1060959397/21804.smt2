(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var3531 0)
(declare-sort var1664 0)
(declare-sort var2050 0)
(declare-sort var66 0)
(declare-sort var346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targetFilePos/-497078696 (var331) var3531)
(declare-fun var1664-init () var1664)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2050) String)
(declare-fun cast-from-var331-to-var2050 (var331) var2050)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var346) var66)
(declare-fun cast-from-var331-to-var346 (var331) var346)
(declare-fun <init>/-469549130 (var1664 String var66) void)
(declare-const null-var331 var331)
(declare-const null-var3531 var3531)
(declare-const var3485 var331) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3485 null-var331)))
(define-const var1262 var3531 (targetFilePos/-497078696 var3485)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl> 
(assert (not (= var1262 null-var3531))) ; Negate: Cond: $r1 == null  
(define-const var3828 var1664 var1664-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var211 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var211)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var211!1 String)
(assert (= var211!1 ""))
(assert true)
(define-const var1538 String (getTaskType/1957558293 (cast-from-var331-to-var2050 var3485))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskType()>() 
(assert true)
(define-const var259 String (append/672562846 var211!1 var1538)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var211!2 String)
(assert (= var211!2 (str.++ var211!1 var1538)))
(assert true)
(define-const var3647 String (append/672562846 var259 " doesn\u0027t support multiple targetfile elements.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support multiple targetfile elements.") 
(declare-const var259!1 String)
(assert (= var259!1 (str.++ var259 " doesn\u0027t support multiple targetfile elements.")))
(assert true)
(define-const var2484 String (toString/-2075883882 var3647)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1950 var66 (getLocation/851674571 (cast-from-var331-to-var346 var3485))) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3828 var2484 var1950)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11) 

(declare-const var3828!1 var1664)
(declare-const var2484!1 String)
(declare-const var1950!1 var66)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {targetFilePos/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker), var1664-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var331-to-var2050=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var331-to-var346=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3485=r0, var3531=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker, var1262=$r1, var1664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3828=$r6, var211=$r7, var2050=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1538=$r8, var259=$r9, var3647=$r10, var2484=$r12, var66=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var346=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1950=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var331, r0=var3485, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker=var3531, $r1=var1262, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1664, $r6=var3828, $r7=var211, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2050, $r8=var1538, $r9=var259, $r10=var3647, $r12=var2484, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var66, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var346, $r11=var1950}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmdl>;	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskType()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support multiple targetfile elements.");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11);	throw $r6
;block_num 2