(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var832 0)
(declare-sort var1472 0)
(declare-sort var3753 0)
(declare-sort var3064 0)
(declare-sort var3426 0)
(declare-sort var3756 0)
(declare-sort var1977 0)
(declare-sort var3858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkConfiguration/1388247710 (var832 String var3753) void)
(declare-fun config/-208040463 (var832) var3064)
(declare-fun srcDir/2019956101 (var3064) var3426)
(declare-fun var1977-init () var1977)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3858) String)
(declare-fun cast-from-var3756-to-var3858 (var3756) var3858)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1977 String var3858) void)
(declare-const null-var832 var832)
(declare-const null-String String)
(declare-const null-var3753 var3753)
(declare-const null-var3756 var3756)
(declare-const var202 var832) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var202 null-var832)))
(declare-const var3116 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3116 null-String)))
(declare-const var2859 var3753) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var2859 null-var3753)))
(assert true)
;(assert (checkConfiguration/1388247710 var202 var3116 var2859)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void checkConfiguration(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r2) 

(declare-const var202!1 var832)
(declare-const var3116!1 String)
(declare-const var2859!1 var3753)
(define-const var3847 var3064 (config/-208040463 var202!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var3494 var3426 (srcDir/2019956101 var3847)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File srcDir> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1480 var3756) ; Statement: $r27 := @caughtexception 
(assert (not (= var1480 null-var3756)))
(define-const var1569 var1977 var1977-init) ; Statement: $r55 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1481 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1481)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1481!1 String)
(assert (= var1481!1 ""))
(assert true)
(define-const var1385 String (append/672562846 var1481!1 "IOException while parsing\u0027")) ; Statement: $r30 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while parsing\'") 
(declare-const var1481!2 String)
(assert (= var1481!2 (str.++ var1481!1 "IOException while parsing\u0027")))
(assert true)
(define-const var2472 String (append/672562846 var1385 var3116!1)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1385!1 String)
(assert (= var1385!1 (str.++ var1385 var3116!1)))
(assert true)
(define-const var633 String (append/672562846 var2472 "\u0027.  This probably indicates that the descriptor doesn\u0027t exist. Details: ")) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  This probably indicates that the descriptor doesn\'t exist. Details: ") 
(declare-const var2472!1 String)
(assert (= var2472!1 (str.++ var2472 "\u0027.  This probably indicates that the descriptor doesn\u0027t exist. Details: ")))
(assert true)
(define-const var3037 String (getMessage/849299655 (cast-from-var3756-to-var3858 var1480))) ; Statement: $r32 = virtualinvoke $r27.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1194 String (append/672562846 var633 var3037)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var633!1 String)
(assert (= var633!1 (str.++ var633 var3037)))
(assert true)
(define-const var1257 String (toString/-2075883882 var1194)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1569 var1257 (cast-from-var3756-to-var3858 var1480))) ; Statement: specialinvoke $r55.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r27) 

(declare-const var1569!1 var1977)
(declare-const var1257!1 String)
(declare-const var1480!1 var3756)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {checkConfiguration/1388247710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), config/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), srcDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), var1977-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3756-to-var3858=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var202=r0, var3116=r1, var1472=null_type, var3753=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var2859=r2, var3064=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3847=$r3, var3426=java.io.File, var3494=$r4, var3756=java.io.IOException, var1480=$r27, var1977=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1569=$r55, var1481=$r54, var1385=$r30, var2472=$r31, var633=$r33, var3858=java.lang.Throwable, var3037=$r32, var1194=$r34, var1257=$r35}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var832, r0=var202, r1=var3116, null_type=var1472, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var3753, r2=var2859, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var3064, $r3=var3847, java.io.File=var3426, $r4=var3494, java.io.IOException=var3756, $r27=var1480, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1977, $r55=var1569, $r54=var1481, $r30=var1385, $r31=var2472, $r33=var633, java.lang.Throwable=var3858, $r32=var3037, $r34=var1194, $r35=var1257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void checkConfiguration(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r2);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File srcDir>;	$r27 := @caughtexception;	$r55 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while parsing\'");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  This probably indicates that the descriptor doesn\'t exist. Details: ");	$r32 = virtualinvoke $r27.<java.io.IOException: java.lang.String getMessage()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r27);	throw $r55
;block_num 2