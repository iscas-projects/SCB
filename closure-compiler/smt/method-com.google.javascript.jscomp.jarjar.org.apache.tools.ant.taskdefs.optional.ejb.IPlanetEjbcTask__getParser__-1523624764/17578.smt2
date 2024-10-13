(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2340 0)
(declare-sort var937 0)
(declare-sort var1096 0)
(declare-sort var3008 0)
(declare-sort var2114 0)
(declare-sort var1274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1096-init () var1096)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var937-to-var3008 (var937) var3008)
(declare-fun getMessage/849299655 (var937) String)
(declare-fun cast-from-var3008-to-var937 (var3008) var937)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1274) var2114)
(declare-fun cast-from-var2340-to-var1274 (var2340) var1274)
(declare-fun <init>/1933136886 (var1096 String var937 var2114) void)
(declare-const null-var2340 var2340)
(declare-const null-var937 var937)
(declare-const var773 var2340) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask 
(assert (not (= var773 null-var2340)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2898 var937) ; Statement: $r1 := @caughtexception 
(assert (not (= var2898 null-var937)))
(define-const var2412 var1096 var1096-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var879 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(assert true)
(define-const var1843 String (append/672562846 var879!1 "Unable to create a SAXParser: ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create a SAXParser: ") 
(declare-const var879!2 String)
(assert (= var879!2 (str.++ var879!1 "Unable to create a SAXParser: ")))
(define-const var1711 var3008 (cast-from-var937-to-var3008 var2898)) ; Statement: $r13 = (java.lang.Exception) $r1 
(assert true)
(define-const var2413 String (getMessage/849299655 (cast-from-var3008-to-var937 var1711))) ; Statement: $r4 = virtualinvoke $r13.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1405 String (append/672562846 var1843 var2413)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1843!1 String)
(assert (= var1843!1 (str.++ var1843 var2413)))
(assert true)
(define-const var3107 String (toString/-2075883882 var1405)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1816 var2114 (getLocation/851674571 (cast-from-var2340-to-var1274 var773))) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2412 var3107 var2898 var1816)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r9, $r1, $r8) 

(declare-const var2412!1 var1096)
(declare-const var3107!1 String)
(declare-const var2898!1 var937)
(declare-const var1816!1 var2114)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1096-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var937-to-var3008=([java.lang.Throwable], java.lang.Exception), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3008-to-var937=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2340-to-var1274=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2340=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask, var773=r7, var937=java.lang.Throwable, var2898=$r1, var1096=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2412=$r12, var879=$r11, var1843=$r5, var3008=java.lang.Exception, var1711=$r13, var2413=$r4, var1405=$r6, var3107=$r9, var2114=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1274=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1816=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask=var2340, r7=var773, java.lang.Throwable=var937, $r1=var2898, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1096, $r12=var2412, $r11=var879, $r5=var1843, java.lang.Exception=var3008, $r13=var1711, $r4=var2413, $r6=var1405, $r9=var3107, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2114, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1274, $r8=var1816}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask;	$r1 := @caughtexception;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create a SAXParser: ");	$r13 = (java.lang.Exception) $r1;	$r4 = virtualinvoke $r13.<java.lang.Exception: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r9, $r1, $r8);	throw $r12
;block_num 2