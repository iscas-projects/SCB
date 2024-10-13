(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var22 0)
(declare-sort var726 0)
(declare-sort var3219 0)
(declare-sort var2219 0)
(declare-sort var3607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var726-init () var726)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var3219) String)
(declare-fun cast-from-var22-to-var3219 (var22) var3219)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3607) var2219)
(declare-fun cast-from-var22-to-var3607 (var22) var3607)
(declare-fun <init>/-469549130 (var726 String var2219) void)
(declare-const null-var22 var22)
(declare-const null-Int Int)
(declare-const var3183 var22) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var3183 null-var22)))
(declare-const var2408 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2408 null-Int)))
(define-const var1817 var726 var726-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2175 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2175)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2175!1 String)
(assert (= var2175!1 ""))
(assert true)
(define-const var955 String (getTaskType/1957558293 (cast-from-var22-to-var3219 var3183))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var3575 String (append/672562846 var2175!1 var955)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2175!2 String)
(assert (= var2175!2 (str.++ var2175!1 var955)))
(assert true)
(define-const var1176 String (append/672562846 var3575 " doesn\u0027t support the maxparallel attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the maxparallel attribute") 
(declare-const var3575!1 String)
(assert (= var3575!1 (str.++ var3575 " doesn\u0027t support the maxparallel attribute")))
(assert true)
(define-const var411 String (toString/-2075883882 var1176)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1606 var2219 (getLocation/851674571 (cast-from-var22-to-var3607 var3183))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1817 var411 var1606)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var1817!1 var726)
(declare-const var411!1 String)
(declare-const var1606!1 var2219)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var726-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var22-to-var3219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var22-to-var3607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var22=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var3183=r2, var2408=i0, var726=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1817=$r0, var2175=$r1, var3219=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var955=$r3, var3575=$r4, var1176=$r5, var411=$r7, var2219=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3607=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1606=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var22, r2=var3183, i0=var2408, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var726, $r0=var1817, $r1=var2175, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3219, $r3=var955, $r4=var3575, $r5=var1176, $r7=var411, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2219, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3607, $r6=var1606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	i0 := @parameter0: int;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the maxparallel attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1