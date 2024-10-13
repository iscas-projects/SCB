(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var480 0)
(declare-sort var3942 0)
(declare-sort var820 0)
(declare-sort var1134 0)
(declare-sort var2556 0)
(declare-sort var621 0)
(declare-sort var1402 0)
(declare-sort var3994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addedfiles/-208040463 (var141) var1134)
(declare-fun var2556-init () var2556)
(declare-fun <init>/451842749 (var2556) void)
(declare-fun cast-from-var2556-to-var1134 (var2556) var1134)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/180451120 (var3942) String)
(declare-fun getMessage/849299655 (var1402) String)
(declare-fun cast-from-var621-to-var1402 (var621) var1402)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3994-init () var3994)
(declare-fun <init>/-191906322 (var3994 String var1402) void)
(declare-const null-var141 var141)
(declare-const null-String String)
(declare-const null-var3942 var3942)
(declare-const null-var820 var820)
(declare-const null-var1134 var1134)
(declare-const null-var621 var621)
(declare-const var992 var141) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var992 null-var141)))
(declare-const var478 String) ; Statement: r64 := @parameter0: java.lang.String 
(assert (not (= var478 null-String)))
(declare-const var2839 var3942) ; Statement: r3 := @parameter1: java.io.File 
(assert (not (= var2839 null-var3942)))
(declare-const var1101 var820) ; Statement: r5 := @parameter2: java.util.Hashtable 
(assert (not (= var1101 null-var820)))
(declare-const var86 String) ; Statement: r65 := @parameter3: java.lang.String 
(assert (not (= var86 null-String)))
(define-const var2301 var1134 (addedfiles/-208040463 var992)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> 
(assert (not (not (= var2301 null-var1134)))) ; Negate: Cond: $r1 != null  
(define-const var2429 var2556 var2556-init) ; Statement: $r48 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2429)) ; Statement: specialinvoke $r48.<java.util.HashSet: void <init>()>() 

(declare-const var2429!1 var2556)
(declare-const var992!1 var141)
(assert (not (= var992!1 null-var141)))
(assert (= (addedfiles/-208040463 var992!1) (cast-from-var2556-to-var1134 var2429!1))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> = $r48 
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.io.File: boolean exists()>()] 
(assert true) ; Non Conditional
(declare-const var1876 var621) ; Statement: $r49 := @caughtexception 
(assert (not (= var1876 null-var621)))
(define-const var3498 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3498)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3498!1 String)
(assert (= var3498!1 ""))
(assert true)
(define-const var632 String (append/672562846 var3498!1 "IOException while processing ejb-jar file \u0027")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while processing ejb-jar file \'") 
(declare-const var3498!2 String)
(assert (= var3498!2 (str.++ var3498!1 "IOException while processing ejb-jar file \u0027")))
(assert true)
(define-const var2411 String (toString/180451120 var2839)) ; Statement: $r51 = virtualinvoke r3.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var2708 String (append/672562846 var632 var2411)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var632!1 String)
(assert (= var632!1 (str.++ var632 var2411)))
(assert true)
(define-const var3897 String (append/672562846 var2708 "\u0027. Details: ")) ; Statement: $r55 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Details: ") 
(declare-const var2708!1 String)
(assert (= var2708!1 (str.++ var2708 "\u0027. Details: ")))
(assert true)
(define-const var2501 String (getMessage/849299655 (cast-from-var621-to-var1402 var1876))) ; Statement: $r54 = virtualinvoke $r49.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var742 String (append/672562846 var3897 var2501)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3897!1 String)
(assert (= var3897!1 (str.++ var3897 var2501)))
(assert true)
(define-const var466 String (toString/-2075883882 var742)) ; Statement: r70 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1298 var3994 var3994-init) ; Statement: $r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var1298 var466 (cast-from-var621-to-var1402 var1876))) ; Statement: specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r70, $r49) 

(declare-const var1298!1 var3994)
(declare-const var466!1 String)
(declare-const var1876!1 var621)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {addedfiles/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.util.Set), var2556-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), cast-from-var2556-to-var1134=([java.util.HashSet], java.util.Set), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/180451120=([java.io.File], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var621-to-var1402=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3994-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var141=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var992=r0, var478=r64, var480=null_type, var3942=java.io.File, var2839=r3, var820=java.util.Hashtable, var1101=r5, var86=r65, var1134=java.util.Set, var2301=$r1, var2556=java.util.HashSet, var2429=$r48, var621=java.io.IOException, var1876=$r49, var3498=$r50, var632=$r52, var2411=$r51, var2708=$r53, var3897=$r55, var1402=java.lang.Throwable, var2501=$r54, var742=$r56, var466=r70, var3994=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1298=$r57}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var141, r0=var992, r64=var478, null_type=var480, java.io.File=var3942, r3=var2839, java.util.Hashtable=var820, r5=var1101, r65=var86, java.util.Set=var1134, $r1=var2301, java.util.HashSet=var2556, $r48=var2429, java.io.IOException=var621, $r49=var1876, $r50=var3498, $r52=var632, $r51=var2411, $r53=var2708, $r55=var3897, java.lang.Throwable=var1402, $r54=var2501, $r56=var742, r70=var466, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3994, $r57=var1298}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r64 := @parameter0: java.lang.String;	r3 := @parameter1: java.io.File;	r5 := @parameter2: java.util.Hashtable;	r65 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles>;	$r48 = new java.util.HashSet;	specialinvoke $r48.<java.util.HashSet: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> = $r48;	goto [?= $z0 = virtualinvoke r3.<java.io.File: boolean exists()>()];	$r49 := @caughtexception;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while processing ejb-jar file \'");	$r51 = virtualinvoke r3.<java.io.File: java.lang.String toString()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r55 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Details: ");	$r54 = virtualinvoke $r49.<java.io.IOException: java.lang.String getMessage()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	r70 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>();	$r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r70, $r49);	throw $r57
;block_num 3