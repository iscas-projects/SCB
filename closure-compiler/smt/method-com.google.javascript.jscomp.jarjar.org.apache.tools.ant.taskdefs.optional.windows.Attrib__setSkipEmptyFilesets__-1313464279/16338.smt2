(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var3353 0)
(declare-sort var2913 0)
(declare-sort var800 0)
(declare-sort var2867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3353-init () var3353)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2913) String)
(declare-fun cast-from-var2272-to-var2913 (var2272) var2913)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2867) var800)
(declare-fun cast-from-var2272-to-var2867 (var2272) var2867)
(declare-fun <init>/-469549130 (var3353 String var800) void)
(declare-const null-var2272 var2272)
(declare-const null-Bool Bool)
(declare-const var2433 var2272) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var2433 null-var2272)))
(declare-const var804 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var804 null-Bool)))
(define-const var3090 var3353 var3353-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3131 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3131)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3131!1 String)
(assert (= var3131!1 ""))
(assert true)
(define-const var544 String (getTaskType/1957558293 (cast-from-var2272-to-var2913 var2433))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var2975 String (append/672562846 var3131!1 var544)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3131!2 String)
(assert (= var3131!2 (str.++ var3131!1 var544)))
(assert true)
(define-const var1678 String (append/672562846 var2975 " doesn\u0027t support the skipemptyfileset attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute") 
(declare-const var2975!1 String)
(assert (= var2975!1 (str.++ var2975 " doesn\u0027t support the skipemptyfileset attribute")))
(assert true)
(define-const var2083 String (toString/-2075883882 var1678)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1812 var800 (getLocation/851674571 (cast-from-var2272-to-var2867 var2433))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3090 var2083 var1812)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var3090!1 var3353)
(declare-const var2083!1 String)
(declare-const var1812!1 var800)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3353-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2272-to-var2913=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2272-to-var2867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2272=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var2433=r2, var804=z0, var3353=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3090=$r0, var3131=$r1, var2913=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var544=$r3, var2975=$r4, var1678=$r5, var2083=$r7, var800=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1812=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var2272, r2=var2433, z0=var804, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3353, $r0=var3090, $r1=var3131, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2913, $r3=var544, $r4=var2975, $r5=var1678, $r7=var2083, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var800, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2867, $r6=var1812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1