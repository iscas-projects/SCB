(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var1763 0)
(declare-sort var3609 0)
(declare-sort var1555 0)
(declare-sort var3095 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3609-init () var3609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var1555) String)
(declare-fun cast-from-var3900-to-var1555 (var3900) var1555)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1735) var3095)
(declare-fun cast-from-var3900-to-var1735 (var3900) var1735)
(declare-fun <init>/-469549130 (var3609 String var3095) void)
(declare-const null-var3900 var3900)
(declare-const null-String String)
(declare-const var3047 var3900) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var3047 null-var3900)))
(declare-const var1657 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1657 null-String)))
(define-const var3934 var3609 var3609-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var588 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var588)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var588!1 String)
(assert (= var588!1 ""))
(assert true)
(define-const var2137 String (getTaskType/1957558293 (cast-from-var3900-to-var1555 var3047))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var1566 String (append/672562846 var588!1 var2137)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var588!2 String)
(assert (= var588!2 (str.++ var588!1 var2137)))
(assert true)
(define-const var3151 String (append/672562846 var1566 " doesn\u0027t support the command attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute") 
(declare-const var1566!1 String)
(assert (= var1566!1 (str.++ var1566 " doesn\u0027t support the command attribute")))
(assert true)
(define-const var2853 String (toString/-2075883882 var3151)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3550 var3095 (getLocation/851674571 (cast-from-var3900-to-var1735 var3047))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3934 var2853 var3550)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var3934!1 var3609)
(declare-const var2853!1 String)
(declare-const var3550!1 var3095)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3609-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3900-to-var1555=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3900-to-var1735=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var3047=r2, var1657=r8, var1763=null_type, var3609=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3934=$r0, var588=$r1, var1555=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2137=$r3, var1566=$r4, var3151=$r5, var2853=$r7, var3095=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1735=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3550=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var3900, r2=var3047, r8=var1657, null_type=var1763, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3609, $r0=var3934, $r1=var588, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1555, $r3=var2137, $r4=var1566, $r5=var3151, $r7=var2853, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3095, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1735, $r6=var3550}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	r8 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the command attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1