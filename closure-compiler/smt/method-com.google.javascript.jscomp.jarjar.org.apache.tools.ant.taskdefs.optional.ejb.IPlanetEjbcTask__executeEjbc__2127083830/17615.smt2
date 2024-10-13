(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1222 0)
(declare-sort var903 0)
(declare-sort var1031 0)
(declare-sort var3105 0)
(declare-sort var3596 0)
(declare-sort var2682 0)
(declare-sort var2119 0)
(declare-sort var2692 0)
(declare-sort var930 0)
(declare-sort var3788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1031-init () var1031)
(declare-fun ejbdescriptor/-1609807671 (var1222) var3105)
(declare-fun iasdescriptor/-1609807671 (var1222) var3105)
(declare-fun dest/-1609807671 (var1222) var3105)
(declare-fun getClasspath/1137645348 (var1222) var3596)
(declare-fun toString/-372021799 (var3596) String)
(declare-fun <init>/-37773983 (var1031 var3105 var3105 var3105 String var903) void)
(declare-fun keepgenerated/-1609807671 (var1222) Bool)
(declare-fun setRetainSource/-1176528847 (var1031 Bool) void)
(declare-fun debug/-1609807671 (var1222) Bool)
(declare-fun setDebugOutput/718290541 (var1031 Bool) void)
(declare-fun iashome/-1609807671 (var1222) var3105)
(declare-fun var2119-init () var2119)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2692) String)
(declare-fun cast-from-var2682-to-var2692 (var2682) var2692)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3788) var930)
(declare-fun cast-from-var1222-to-var3788 (var1222) var3788)
(declare-fun <init>/1933136886 (var2119 String var2692 var930) void)
(declare-const null-var1222 var1222)
(declare-const null-var903 var903)
(declare-const null-var3105 var3105)
(declare-const null-var2682 var2682)
(declare-const var977 var1222) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask 
(assert (not (= var977 null-var1222)))
(declare-const var2773 var903) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var2773 null-var903)))
(define-const var24 var1031 var1031-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(define-const var1852 var3105 (ejbdescriptor/-1609807671 var977)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(define-const var3100 var3105 (iasdescriptor/-1609807671 var977)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor> 
(define-const var730 var3105 (dest/-1609807671 var977)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest> 
(assert true)
(define-const var2703 var3596 (getClasspath/1137645348 var977)) ; Statement: $r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>() 
(assert true)
(define-const var199 String (toString/-372021799 var2703)) ; Statement: $r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-37773983 var24 var1852 var3100 var730 var199 var2773)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6) 

(declare-const var24!1 var1031)
(declare-const var1852!1 var3105)
(declare-const var3100!1 var3105)
(declare-const var730!1 var3105)
(declare-const var199!1 String)
(declare-const var2773!1 var903)
(define-const var172 Bool (keepgenerated/-1609807671 var977)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated> 
(assert true)
;(assert (setRetainSource/-1176528847 var24!1 var172)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0) 

(declare-const var24!2 var1031)
(declare-const var172!1 Bool)
(define-const var1407 Bool (debug/-1609807671 var977)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug> 
(assert true)
;(assert (setDebugOutput/718290541 var24!2 var1407)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1) 

(declare-const var24!3 var1031)
(declare-const var1407!1 Bool)
(define-const var3333 var3105 (iashome/-1609807671 var977)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome> 
 ; Statement: if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>() 
(assert (not (= var3333 null-var3105))) ; Negate: Cond: $r8 == null  
(declare-const var2512 var2682) ; Statement: $r26 := @caughtexception 
(assert (not (= var2512 null-var2682)))
(define-const var193 var2119 var2119-init) ; Statement: $r27 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var962 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var962)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var962!1 String)
(assert (= var962!1 ""))
(assert true)
(define-const var3070 String (append/672562846 var962!1 "An IOException occurred while trying to read the XML descriptor file: ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An IOException occurred while trying to read the XML descriptor file: ") 
(declare-const var962!2 String)
(assert (= var962!2 (str.++ var962!1 "An IOException occurred while trying to read the XML descriptor file: ")))
(assert true)
(define-const var872 String (getMessage/849299655 (cast-from-var2682-to-var2692 var2512))) ; Statement: $r29 = virtualinvoke $r26.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3145 String (append/672562846 var3070 var872)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3070!1 String)
(assert (= var3070!1 (str.++ var3070 var872)))
(assert true)
(define-const var3466 String (toString/-2075883882 var3145)) ; Statement: $r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var328 var930 (getLocation/851674571 (cast-from-var1222-to-var3788 var977))) ; Statement: $r32 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var193 var3466 (cast-from-var2682-to-var2692 var2512) var328)) ; Statement: specialinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r33, $r26, $r32) 

(declare-const var193!1 var2119)
(declare-const var3466!1 String)
(declare-const var2512!1 var2682)
(declare-const var328!1 var930)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var1031-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc), ejbdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), iasdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), dest/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), getClasspath/1137645348=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), toString/-372021799=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String), <init>/-37773983=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.io.File, java.io.File, java.io.File, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), keepgenerated/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setRetainSource/-1176528847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), debug/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setDebugOutput/718290541=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), iashome/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), var2119-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2682-to-var2692=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1222-to-var3788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1222=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask, var977=r1, var903=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var2773=r6, var1031=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var24=$r0, var3105=java.io.File, var1852=$r2, var3100=$r3, var730=$r4, var3596=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2703=$r5, var199=$r7, var172=$z0, var1407=$z1, var3333=$r8, var2682=java.io.IOException, var2512=$r26, var2119=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var193=$r27, var962=$r28, var3070=$r30, var2692=java.lang.Throwable, var872=$r29, var3145=$r31, var3466=$r33, var930=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3788=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var328=$r32}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask=var1222, r1=var977, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var903, r6=var2773, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var1031, $r0=var24, java.io.File=var3105, $r2=var1852, $r3=var3100, $r4=var730, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3596, $r5=var2703, $r7=var199, $z0=var172, $z1=var1407, $r8=var3333, java.io.IOException=var2682, $r26=var2512, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2119, $r27=var193, $r28=var962, $r30=var3070, java.lang.Throwable=var2692, $r29=var872, $r31=var3145, $r33=var3466, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var930, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3788, $r32=var328}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask;	r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest>;	$r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>();	$r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6);	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0);	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1);	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome>;	if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>();	$r26 := @caughtexception;	$r27 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An IOException occurred while trying to read the XML descriptor file: ");	$r29 = virtualinvoke $r26.<java.io.IOException: java.lang.String getMessage()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r33 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r27.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r33, $r26, $r32);	throw $r27
;block_num 2