(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var2653 0)
(declare-sort var2428 0)
(declare-sort var2575 0)
(declare-sort var3384 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2428-init () var2428)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2575) String)
(declare-fun cast-from-var11-to-var2575 (var11) var2575)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3908) var3384)
(declare-fun cast-from-var11-to-var3908 (var11) var3908)
(declare-fun <init>/-469549130 (var2428 String var3384) void)
(declare-const null-var11 var11)
(declare-const null-String String)
(declare-const var861 var11) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var861 null-var11)))
(declare-const var1217 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1217 null-String)))
(define-const var2549 var2428 var2428-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1085 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1085)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1085!1 String)
(assert (= var1085!1 ""))
(assert true)
(define-const var1438 String (getTaskType/1957558293 (cast-from-var11-to-var2575 var861))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var1208 String (append/672562846 var1085!1 var1438)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1085!2 String)
(assert (= var1085!2 (str.++ var1085!1 var1438)))
(assert true)
(define-const var1152 String (append/672562846 var1208 " doesn\u0027t support the executable attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute") 
(declare-const var1208!1 String)
(assert (= var1208!1 (str.++ var1208 " doesn\u0027t support the executable attribute")))
(assert true)
(define-const var2679 String (toString/-2075883882 var1152)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1075 var3384 (getLocation/851674571 (cast-from-var11-to-var3908 var861))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2549 var2679 var1075)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var2549!1 var2428)
(declare-const var2679!1 String)
(declare-const var1075!1 var3384)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2428-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var11-to-var2575=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var11-to-var3908=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var11=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var861=r2, var1217=r8, var2653=null_type, var2428=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2549=$r0, var1085=$r1, var2575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1438=$r3, var1208=$r4, var1152=$r5, var2679=$r7, var3384=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3908=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1075=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var11, r2=var861, r8=var1217, null_type=var2653, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2428, $r0=var2549, $r1=var1085, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2575, $r3=var1438, $r4=var1208, $r5=var1152, $r7=var2679, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3384, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3908, $r6=var1075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	r8 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1