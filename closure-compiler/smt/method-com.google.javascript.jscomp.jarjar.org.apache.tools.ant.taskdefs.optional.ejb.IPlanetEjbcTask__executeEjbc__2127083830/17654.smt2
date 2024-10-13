(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2524 0)
(declare-sort var2869 0)
(declare-sort var1854 0)
(declare-sort var2054 0)
(declare-sort var2649 0)
(declare-sort var2442 0)
(declare-sort var1838 0)
(declare-sort var1099 0)
(declare-sort var12 0)
(declare-sort var2368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1854-init () var1854)
(declare-fun ejbdescriptor/-1609807671 (var2524) var2054)
(declare-fun iasdescriptor/-1609807671 (var2524) var2054)
(declare-fun dest/-1609807671 (var2524) var2054)
(declare-fun getClasspath/1137645348 (var2524) var2649)
(declare-fun toString/-372021799 (var2649) String)
(declare-fun <init>/-37773983 (var1854 var2054 var2054 var2054 String var2869) void)
(declare-fun keepgenerated/-1609807671 (var2524) Bool)
(declare-fun setRetainSource/-1176528847 (var1854 Bool) void)
(declare-fun debug/-1609807671 (var2524) Bool)
(declare-fun setDebugOutput/718290541 (var1854 Bool) void)
(declare-fun iashome/-1609807671 (var2524) var2054)
(declare-fun var1838-init () var1838)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1099) String)
(declare-fun cast-from-var2442-to-var1099 (var2442) var1099)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2368) var12)
(declare-fun cast-from-var2524-to-var2368 (var2524) var2368)
(declare-fun <init>/1933136886 (var1838 String var1099 var12) void)
(declare-const null-var2524 var2524)
(declare-const null-var2869 var2869)
(declare-const null-var2054 var2054)
(declare-const null-var2442 var2442)
(declare-const var891 var2524) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask 
(assert (not (= var891 null-var2524)))
(declare-const var832 var2869) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var832 null-var2869)))
(define-const var2408 var1854 var1854-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(define-const var3976 var2054 (ejbdescriptor/-1609807671 var891)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(define-const var2525 var2054 (iasdescriptor/-1609807671 var891)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor> 
(define-const var2883 var2054 (dest/-1609807671 var891)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest> 
(assert true)
(define-const var3311 var2649 (getClasspath/1137645348 var891)) ; Statement: $r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>() 
(assert true)
(define-const var1612 String (toString/-372021799 var3311)) ; Statement: $r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-37773983 var2408 var3976 var2525 var2883 var1612 var832)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6) 

(declare-const var2408!1 var1854)
(declare-const var3976!1 var2054)
(declare-const var2525!1 var2054)
(declare-const var2883!1 var2054)
(declare-const var1612!1 String)
(declare-const var832!1 var2869)
(define-const var1272 Bool (keepgenerated/-1609807671 var891)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated> 
(assert true)
;(assert (setRetainSource/-1176528847 var2408!1 var1272)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0) 

(declare-const var2408!2 var1854)
(declare-const var1272!1 Bool)
(define-const var3102 Bool (debug/-1609807671 var891)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug> 
(assert true)
;(assert (setDebugOutput/718290541 var2408!2 var3102)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1) 

(declare-const var2408!3 var1854)
(declare-const var3102!1 Bool)
(define-const var3222 var2054 (iashome/-1609807671 var891)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome> 
 ; Statement: if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>() 
(assert (not (= var3222 null-var2054))) ; Negate: Cond: $r8 == null  
(declare-const var1901 var2442) ; Statement: $r10 := @caughtexception 
(assert (not (= var1901 null-var2442)))
(define-const var588 var1838 var1838-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var215 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var215)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var215!1 String)
(assert (= var215!1 ""))
(assert true)
(define-const var895 String (append/672562846 var215!1 "An exception occurred while trying to run the ejbc utility: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An exception occurred while trying to run the ejbc utility: ") 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 "An exception occurred while trying to run the ejbc utility: ")))
(assert true)
(define-const var2654 String (getMessage/849299655 (cast-from-var2442-to-var1099 var1901))) ; Statement: $r13 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: java.lang.String getMessage()>() 
(assert true)
(define-const var1339 String (append/672562846 var895 var2654)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 var2654)))
(assert true)
(define-const var2140 String (toString/-2075883882 var1339)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var279 var12 (getLocation/851674571 (cast-from-var2524-to-var2368 var891))) ; Statement: $r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var588 var2140 (cast-from-var2442-to-var1099 var1901) var279)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r10, $r16) 

(declare-const var588!1 var1838)
(declare-const var2140!1 String)
(declare-const var1901!1 var2442)
(declare-const var279!1 var12)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1854-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc), ejbdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), iasdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), dest/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), getClasspath/1137645348=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), toString/-372021799=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String), <init>/-37773983=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.io.File, java.io.File, java.io.File, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), keepgenerated/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setRetainSource/-1176528847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), debug/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setDebugOutput/718290541=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), iashome/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), var1838-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2442-to-var1099=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2524-to-var2368=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2524=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask, var891=r1, var2869=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var832=r6, var1854=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2408=$r0, var2054=java.io.File, var3976=$r2, var2525=$r3, var2883=$r4, var2649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var3311=$r5, var1612=$r7, var1272=$z0, var3102=$z1, var3222=$r8, var2442=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException, var1901=$r10, var1838=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var588=$r11, var215=$r12, var895=$r14, var1099=java.lang.Throwable, var2654=$r13, var1339=$r15, var2140=$r17, var12=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var279=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask=var2524, r1=var891, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var2869, r6=var832, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var1854, $r0=var2408, java.io.File=var2054, $r2=var3976, $r3=var2525, $r4=var2883, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2649, $r5=var3311, $r7=var1612, $z0=var1272, $z1=var3102, $r8=var3222, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException=var2442, $r10=var1901, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1838, $r11=var588, $r12=var215, $r14=var895, java.lang.Throwable=var1099, $r13=var2654, $r15=var1339, $r17=var2140, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var12, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2368, $r16=var279}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask;	r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest>;	$r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>();	$r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6);	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0);	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1);	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome>;	if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>();	$r10 := @caughtexception;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An exception occurred while trying to run the ejbc utility: ");	$r13 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: java.lang.String getMessage()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r10, $r16);	throw $r11
;block_num 2