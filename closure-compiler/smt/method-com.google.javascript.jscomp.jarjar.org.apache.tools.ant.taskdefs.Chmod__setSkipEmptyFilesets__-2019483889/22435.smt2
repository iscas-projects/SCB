(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var512 0)
(declare-sort var2878 0)
(declare-sort var2402 0)
(declare-sort var2108 0)
(declare-sort var695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2878-init () var2878)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2402) String)
(declare-fun cast-from-var512-to-var2402 (var512) var2402)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var695) var2108)
(declare-fun cast-from-var512-to-var695 (var512) var695)
(declare-fun <init>/-469549130 (var2878 String var2108) void)
(declare-const null-var512 var512)
(declare-const null-Bool Bool)
(declare-const var334 var512) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod 
(assert (not (= var334 null-var512)))
(declare-const var2192 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2192 null-Bool)))
(define-const var315 var2878 var2878-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3988 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3988)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3988!1 String)
(assert (= var3988!1 ""))
(assert true)
(define-const var576 String (getTaskType/1957558293 (cast-from-var512-to-var2402 var334))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>() 
(assert true)
(define-const var1789 String (append/672562846 var3988!1 var576)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3988!2 String)
(assert (= var3988!2 (str.++ var3988!1 var576)))
(assert true)
(define-const var1941 String (append/672562846 var1789 " doesn\u0027t support the skipemptyfileset attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute") 
(declare-const var1789!1 String)
(assert (= var1789!1 (str.++ var1789 " doesn\u0027t support the skipemptyfileset attribute")))
(assert true)
(define-const var2782 String (toString/-2075883882 var1941)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var738 var2108 (getLocation/851674571 (cast-from-var512-to-var695 var334))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var315 var2782 var738)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var315!1 var2878)
(declare-const var2782!1 String)
(declare-const var738!1 var2108)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2878-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var512-to-var2402=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var512-to-var695=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var512=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod, var334=r2, var2192=z0, var2878=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var315=$r0, var3988=$r1, var2402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var576=$r3, var1789=$r4, var1941=$r5, var2782=$r7, var2108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var695=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var738=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod=var512, r2=var334, z0=var2192, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2878, $r0=var315, $r1=var3988, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2402, $r3=var576, $r4=var1789, $r5=var1941, $r7=var2782, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2108, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var695, $r6=var738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the skipemptyfileset attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1