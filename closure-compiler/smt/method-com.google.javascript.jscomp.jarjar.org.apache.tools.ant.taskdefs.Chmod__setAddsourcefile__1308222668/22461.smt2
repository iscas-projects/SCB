(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2939 0)
(declare-sort var3722 0)
(declare-sort var3666 0)
(declare-sort var1081 0)
(declare-sort var1266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3722-init () var3722)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var3666) String)
(declare-fun cast-from-var2939-to-var3666 (var2939) var3666)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1266) var1081)
(declare-fun cast-from-var2939-to-var1266 (var2939) var1266)
(declare-fun <init>/-469549130 (var3722 String var1081) void)
(declare-const null-var2939 var2939)
(declare-const null-Bool Bool)
(declare-const var1495 var2939) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod 
(assert (not (= var1495 null-var2939)))
(declare-const var3693 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3693 null-Bool)))
(define-const var1625 var3722 var3722-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2826 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2826)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2826!1 String)
(assert (= var2826!1 ""))
(assert true)
(define-const var2610 String (getTaskType/1957558293 (cast-from-var2939-to-var3666 var1495))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>() 
(assert true)
(define-const var1713 String (append/672562846 var2826!1 var2610)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2826!2 String)
(assert (= var2826!2 (str.++ var2826!1 var2610)))
(assert true)
(define-const var713 String (append/672562846 var1713 " doesn\u0027t support the addsourcefile attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute") 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 " doesn\u0027t support the addsourcefile attribute")))
(assert true)
(define-const var1251 String (toString/-2075883882 var713)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3937 var1081 (getLocation/851674571 (cast-from-var2939-to-var1266 var1495))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1625 var1251 var3937)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var1625!1 var3722)
(declare-const var1251!1 String)
(declare-const var3937!1 var1081)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3722-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2939-to-var3666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2939-to-var1266=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2939=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod, var1495=r2, var3693=z0, var3722=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1625=$r0, var2826=$r1, var3666=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2610=$r3, var1713=$r4, var713=$r5, var1251=$r7, var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1266=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3937=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod=var2939, r2=var1495, z0=var3693, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3722, $r0=var1625, $r1=var2826, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3666, $r3=var2610, $r4=var1713, $r5=var713, $r7=var1251, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1081, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1266, $r6=var3937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Chmod: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1