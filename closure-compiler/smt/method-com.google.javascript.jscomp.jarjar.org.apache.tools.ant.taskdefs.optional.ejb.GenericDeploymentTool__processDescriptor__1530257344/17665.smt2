(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var1254 0)
(declare-sort var1604 0)
(declare-sort var894 0)
(declare-sort var1970 0)
(declare-sort var175 0)
(declare-sort var1253 0)
(declare-sort var928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkConfiguration/1388247710 (var1375 String var1604) void)
(declare-fun config/-208040463 (var1375) var894)
(declare-fun srcDir/2019956101 (var894) var1970)
(declare-fun var1253-init () var1253)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/-2074868419 (var175) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1253 String var928) void)
(declare-fun cast-from-var175-to-var928 (var175) var928)
(declare-const null-var1375 var1375)
(declare-const null-String String)
(declare-const null-var1604 var1604)
(declare-const null-var175 var175)
(declare-const var1157 var1375) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var1157 null-var1375)))
(declare-const var670 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var670 null-String)))
(declare-const var3542 var1604) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var3542 null-var1604)))
(assert true)
;(assert (checkConfiguration/1388247710 var1157 var670 var3542)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void checkConfiguration(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r2) 

(declare-const var1157!1 var1375)
(declare-const var670!1 String)
(declare-const var3542!1 var1604)
(define-const var441 var894 (config/-208040463 var1157!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var3108 var1970 (srcDir/2019956101 var441)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File srcDir> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1611 var175) ; Statement: $r36 := @caughtexception 
(assert (not (= var1611 null-var175)))
(define-const var2330 var1253 var1253-init) ; Statement: $r53 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3991 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3991)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3991!1 String)
(assert (= var3991!1 ""))
(assert true)
(define-const var2947 String (append/672562846 var3991!1 "SAXException while parsing \u0027")) ; Statement: $r39 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAXException while parsing \'") 
(declare-const var3991!2 String)
(assert (= var3991!2 (str.++ var3991!1 "SAXException while parsing \u0027")))
(assert true)
(define-const var1696 String (append/672562846 var2947 var670!1)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2947!1 String)
(assert (= var2947!1 (str.++ var2947 var670!1)))
(assert true)
(define-const var2948 String (append/672562846 var1696 "\u0027. This probably indicates badly-formed XML.  Details: ")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. This probably indicates badly-formed XML.  Details: ") 
(declare-const var1696!1 String)
(assert (= var1696!1 (str.++ var1696 "\u0027. This probably indicates badly-formed XML.  Details: ")))
(assert true)
(define-const var2184 String (getMessage/-2074868419 var1611)) ; Statement: $r41 = virtualinvoke $r36.<org.xml.sax.SAXException: java.lang.String getMessage()>() 
(assert true)
(define-const var3448 String (append/672562846 var2948 var2184)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var2184)))
(assert true)
(define-const var3867 String (toString/-2075883882 var3448)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2330 var3867 (cast-from-var175-to-var928 var1611))) ; Statement: specialinvoke $r53.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r44, $r36) 

(declare-const var2330!1 var1253)
(declare-const var3867!1 String)
(declare-const var1611!1 var175)
 ; Statement: throw $r53 
(check-sat)
(get-model)
(get-unsat-core)
; {checkConfiguration/1388247710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), config/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), srcDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), var1253-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/-2074868419=([org.xml.sax.SAXException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var175-to-var928=([org.xml.sax.SAXException], java.lang.Throwable)}
; {var1375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1157=r0, var670=r1, var1254=null_type, var1604=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var3542=r2, var894=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var441=$r3, var1970=java.io.File, var3108=$r4, var175=org.xml.sax.SAXException, var1611=$r36, var1253=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2330=$r53, var3991=$r52, var2947=$r39, var1696=$r40, var2948=$r42, var2184=$r41, var3448=$r43, var3867=$r44, var928=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1375, r0=var1157, r1=var670, null_type=var1254, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var1604, r2=var3542, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var894, $r3=var441, java.io.File=var1970, $r4=var3108, org.xml.sax.SAXException=var175, $r36=var1611, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1253, $r53=var2330, $r52=var3991, $r39=var2947, $r40=var1696, $r42=var2948, $r41=var2184, $r43=var3448, $r44=var3867, java.lang.Throwable=var928}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void checkConfiguration(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r2);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File srcDir>;	$r36 := @caughtexception;	$r53 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAXException while parsing \'");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. This probably indicates badly-formed XML.  Details: ");	$r41 = virtualinvoke $r36.<org.xml.sax.SAXException: java.lang.String getMessage()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r53.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r44, $r36);	throw $r53
;block_num 2