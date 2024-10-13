(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1280 0)
(declare-sort var710 0)
(declare-sort var273 0)
(declare-sort var1501 0)
(declare-sort var108 0)
(declare-sort var658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun destDir/537892693 (var1280) var710)
(declare-fun isDirectory/-2122094196 (var710) Bool)
(declare-fun var273-init () var273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1501) String)
(declare-fun cast-from-var710-to-var1501 (var710) var1501)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var658) var108)
(declare-fun cast-from-var1280-to-var658 (var1280) var658)
(declare-fun <init>/-469549130 (var273 String var108) void)
(declare-const null-var1280 var1280)
(declare-const null-var710 var710)
(declare-const var293 var1280) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var293 null-var1280)))
(define-const var1342 var710 (destDir/537892693 var293)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir> 
(assert (not (= var1342 null-var710))) ; Cond: $r1 != null 
(define-const var927 var710 (destDir/537892693 var293)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir> 
(assert true)
(define-const var2116 Bool (isDirectory/-2122094196 var927)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 != 0 goto r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File getActualDestDir()>() 
(assert (not (not (= (ite var2116 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3438 var273 var273-init) ; Statement: $r46 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2056 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2056)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2056!1 String)
(assert (= var2056!1 ""))
(assert true)
(define-const var3256 String (append/672562846 var2056!1 "destination directory \u0022")) ; Statement: $r49 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("destination directory \"") 
(declare-const var2056!2 String)
(assert (= var2056!2 (str.++ var2056!1 "destination directory \u0022")))
(define-const var3748 var710 (destDir/537892693 var293)) ; Statement: $r48 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir> 
(assert true)
(define-const var2301 String (append/-1031950772 var3256 (cast-from-var710-to-var1501 var3748))) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r48) 
(declare-const var3256!1 String)
(assert (str.prefixof var3256 var3256!1))
(assert true)
(define-const var3024 String (append/672562846 var2301 "\u0022 does not exist or is not a directory")) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist or is not a directory") 
(declare-const var2301!1 String)
(assert (= var2301!1 (str.++ var2301 "\u0022 does not exist or is not a directory")))
(assert true)
(define-const var1592 String (toString/-2075883882 var3024)) ; Statement: $r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var322 var108 (getLocation/851674571 (cast-from-var1280-to-var658 var293))) ; Statement: $r52 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3438 var1592 var322)) ; Statement: specialinvoke $r46.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r53, $r52) 

(declare-const var3438!1 var273)
(declare-const var1592!1 String)
(declare-const var322!1 var108)
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {destDir/537892693=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], java.io.File), isDirectory/-2122094196=([java.io.File], boolean), var273-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var710-to-var1501=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1280-to-var658=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1280=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var293=r0, var710=java.io.File, var1342=$r1, var927=$r2, var2116=$z0, var273=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3438=$r46, var2056=$r47, var3256=$r49, var3748=$r48, var1501=java.lang.Object, var2301=$r50, var3024=$r51, var1592=$r53, var108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var658=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var322=$r52}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var1280, r0=var293, java.io.File=var710, $r1=var1342, $r2=var927, $z0=var2116, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var273, $r46=var3438, $r47=var2056, $r49=var3256, $r48=var3748, java.lang.Object=var1501, $r50=var2301, $r51=var3024, $r53=var1592, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var108, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var658, $r52=var322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir>;	$z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>();	if $z0 != 0 goto r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File getActualDestDir()>();	$r46 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("destination directory \"");	$r48 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir>;	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r48);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist or is not a directory");	$r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	$r52 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r46.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r53, $r52);	throw $r46
;block_num 3