(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var1955 0)
(declare-sort var199 0)
(declare-sort var3314 0)
(declare-sort var383 0)
(declare-sort var727 0)
(declare-sort var2172 0)
(declare-sort var455 0)
(declare-sort var3894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun manifest/1631861567 (var1496) var1955)
(declare-fun manifestFile/1631861567 (var1496) var199)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var383) String)
(declare-fun cast-from-var3314-to-var383 (var3314) var383)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var727 String Int) void)
(declare-fun cast-from-var1496-to-var727 (var1496) var727)
(declare-fun var2172-init () var2172)
(declare-fun getLocation/851674571 (var3894) var455)
(declare-fun cast-from-var1496-to-var3894 (var1496) var3894)
(declare-fun <init>/1933136886 (var2172 String var383 var455) void)
(declare-const null-var1496 var1496)
(declare-const null-var1955 var1955)
(declare-const null-var199 var199)
(declare-const null-var3314 var3314)
(declare-const var2488 var1496) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var2488 null-var1496)))
(define-const var1285 var1955 (manifest/1631861567 var2488)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest manifest> 
 ; Statement: if $r1 != null goto $z9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean mergeManifestsMain> 
(assert (not (not (= var1285 null-var1955)))) ; Negate: Cond: $r1 != null  
(define-const var9 var199 (manifestFile/1631861567 var2488)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> 
 ; Statement: if $r14 == null goto $z9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean mergeManifestsMain> 
(assert (not (= var9 null-var199))) ; Negate: Cond: $r14 == null  
(define-const var3447 var199 (manifestFile/1631861567 var2488)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2966 var3314) ; Statement: $r17 := @caughtexception 
(assert (not (= var2966 null-var3314)))
(define-const var3867 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3867)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3867!1 String)
(assert (= var3867!1 ""))
(assert true)
(define-const var1891 String (append/672562846 var3867!1 "Manifest is invalid: ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest is invalid: ") 
(declare-const var3867!2 String)
(assert (= var3867!2 (str.++ var3867!1 "Manifest is invalid: ")))
(assert true)
(define-const var430 String (getMessage/849299655 (cast-from-var3314-to-var383 var2966))) ; Statement: $r19 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: java.lang.String getMessage()>() 
(assert true)
(define-const var3247 String (append/672562846 var1891 var430)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1891!1 String)
(assert (= var1891!1 (str.++ var1891 var430)))
(assert true)
(define-const var3968 String (toString/-2075883882 var3247)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1496-to-var727 var2488) var3968 0)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r22, 0) 

(declare-const var2488!1 var1496)
(declare-const var3968!1 String)
(declare-const var325 Int)
(define-const var1933 var2172 var2172-init) ; Statement: $r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var2702 var455 (getLocation/851674571 (cast-from-var1496-to-var3894 var2488!1))) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var1933 "Invalid Manifest" (cast-from-var3314-to-var383 var2966) var2702)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Invalid Manifest", $r17, $r24) 

(declare-const var1933!1 var2172)
(declare-const var2587 String)
(declare-const var2966!1 var3314)
(declare-const var2702!1 var455)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {manifest/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest), manifestFile/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3314-to-var383=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1496-to-var727=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2172-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1496-to-var3894=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1496=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var2488=r0, var1955=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var1285=$r1, var199=java.io.File, var9=$r14, var3447=$r15, var3314=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException, var2966=$r17, var3867=$r18, var1891=$r20, var383=java.lang.Throwable, var430=$r19, var3247=$r21, var3968=$r22, var727=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var325=0, var2172=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1933=$r23, var455=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3894=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2702=$r24, var2587="Invalid Manifest"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var1496, r0=var2488, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var1955, $r1=var1285, java.io.File=var199, $r14=var9, $r15=var3447, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException=var3314, $r17=var2966, $r18=var3867, $r20=var1891, java.lang.Throwable=var383, $r19=var430, $r21=var3247, $r22=var3968, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var727, 0=var325, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2172, $r23=var1933, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var455, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3894, $r24=var2702, "Invalid Manifest"=var2587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest manifest>;	if $r1 != null goto $z9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean mergeManifestsMain>;	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile>;	if $r14 == null goto $z9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean mergeManifestsMain>;	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile>;	$r17 := @caughtexception;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest is invalid: ");	$r19 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: java.lang.String getMessage()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r22, 0);	$r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Invalid Manifest", $r17, $r24);	throw $r23
;block_num 4