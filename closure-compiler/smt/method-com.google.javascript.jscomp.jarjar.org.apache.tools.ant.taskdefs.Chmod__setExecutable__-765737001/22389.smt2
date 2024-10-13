(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort var1584 0)
(declare-sort var1435 0)
(declare-sort var2764 0)
(declare-sort var1694 0)
(declare-sort var1198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1435-init () var1435)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var2764) String)
(declare-fun cast-from-var2291-to-var2764 (var2291) var2764)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1198) var1694)
(declare-fun cast-from-var2291-to-var1198 (var2291) var1198)
(declare-fun <init>/-469549130 (var1435 String var1694) void)
(declare-const null-var2291 var2291)
(declare-const null-String String)
(declare-const var3887 var2291) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod 
(assert (not (= var3887 null-var2291)))
(declare-const var2240 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2240 null-String)))
(define-const var3426 var1435 var1435-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var84 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var84)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var84!1 String)
(assert (= var84!1 ""))
(assert true)
(define-const var2761 String (getTaskType/1957558293 (cast-from-var2291-to-var2764 var3887))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>() 
(assert true)
(define-const var1492 String (append/672562846 var84!1 var2761)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var84!2 String)
(assert (= var84!2 (str.++ var84!1 var2761)))
(assert true)
(define-const var1277 String (append/672562846 var1492 " doesn\u0027t support the executable attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute") 
(declare-const var1492!1 String)
(assert (= var1492!1 (str.++ var1492 " doesn\u0027t support the executable attribute")))
(assert true)
(define-const var1990 String (toString/-2075883882 var1277)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3048 var1694 (getLocation/851674571 (cast-from-var2291-to-var1198 var3887))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3426 var1990 var3048)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var3426!1 var1435)
(declare-const var1990!1 String)
(declare-const var3048!1 var1694)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1435-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2291-to-var2764=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2291-to-var1198=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod, var3887=r2, var2240=r8, var1584=null_type, var1435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3426=$r0, var84=$r1, var2764=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2761=$r3, var1492=$r4, var1277=$r5, var1990=$r7, var1694=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1198=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3048=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod=var2291, r2=var3887, r8=var2240, null_type=var1584, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1435, $r0=var3426, $r1=var84, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2764, $r3=var2761, $r4=var1492, $r5=var1277, $r7=var1990, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1694, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1198, $r6=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod;	r8 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the executable attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1