(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var1318 0)
(declare-sort var1488 0)
(declare-sort var2968 0)
(declare-sort var149 0)
(declare-sort var2960 0)
(declare-sort var3881 0)
(declare-sort var904 0)
(declare-sort var3223 0)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1488-init () var1488)
(declare-fun ejbdescriptor/-1609807671 (var1942) var2968)
(declare-fun iasdescriptor/-1609807671 (var1942) var2968)
(declare-fun dest/-1609807671 (var1942) var2968)
(declare-fun getClasspath/1137645348 (var1942) var149)
(declare-fun toString/-372021799 (var149) String)
(declare-fun <init>/-37773983 (var1488 var2968 var2968 var2968 String var1318) void)
(declare-fun keepgenerated/-1609807671 (var1942) Bool)
(declare-fun setRetainSource/-1176528847 (var1488 Bool) void)
(declare-fun debug/-1609807671 (var1942) Bool)
(declare-fun setDebugOutput/718290541 (var1488 Bool) void)
(declare-fun iashome/-1609807671 (var1942) var2968)
(declare-fun var3881-init () var3881)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/-2074868419 (var2960) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3223) var904)
(declare-fun cast-from-var1942-to-var3223 (var1942) var3223)
(declare-fun <init>/1933136886 (var3881 String var540 var904) void)
(declare-fun cast-from-var2960-to-var540 (var2960) var540)
(declare-const null-var1942 var1942)
(declare-const null-var1318 var1318)
(declare-const null-var2968 var2968)
(declare-const null-var2960 var2960)
(declare-const var2135 var1942) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask 
(assert (not (= var2135 null-var1942)))
(declare-const var2942 var1318) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var2942 null-var1318)))
(define-const var2990 var1488 var1488-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(define-const var2698 var2968 (ejbdescriptor/-1609807671 var2135)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(define-const var1690 var2968 (iasdescriptor/-1609807671 var2135)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor> 
(define-const var546 var2968 (dest/-1609807671 var2135)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest> 
(assert true)
(define-const var561 var149 (getClasspath/1137645348 var2135)) ; Statement: $r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>() 
(assert true)
(define-const var3716 String (toString/-372021799 var561)) ; Statement: $r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-37773983 var2990 var2698 var1690 var546 var3716 var2942)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6) 

(declare-const var2990!1 var1488)
(declare-const var2698!1 var2968)
(declare-const var1690!1 var2968)
(declare-const var546!1 var2968)
(declare-const var3716!1 String)
(declare-const var2942!1 var1318)
(define-const var2218 Bool (keepgenerated/-1609807671 var2135)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated> 
(assert true)
;(assert (setRetainSource/-1176528847 var2990!1 var2218)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0) 

(declare-const var2990!2 var1488)
(declare-const var2218!1 Bool)
(define-const var844 Bool (debug/-1609807671 var2135)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug> 
(assert true)
;(assert (setDebugOutput/718290541 var2990!2 var844)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1) 

(declare-const var2990!3 var1488)
(declare-const var844!1 Bool)
(define-const var3333 var2968 (iashome/-1609807671 var2135)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome> 
 ; Statement: if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>() 
(assert (not (= var3333 null-var2968))) ; Negate: Cond: $r8 == null  
(declare-const var3812 var2960) ; Statement: $r18 := @caughtexception 
(assert (not (= var3812 null-var2960)))
(define-const var1576 var3881 var3881-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var974 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var974)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var974!1 String)
(assert (= var974!1 ""))
(assert true)
(define-const var3512 String (append/672562846 var974!1 "A SAXException occurred while trying to read the XML descriptor file: ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A SAXException occurred while trying to read the XML descriptor file: ") 
(declare-const var974!2 String)
(assert (= var974!2 (str.++ var974!1 "A SAXException occurred while trying to read the XML descriptor file: ")))
(assert true)
(define-const var2177 String (getMessage/-2074868419 var3812)) ; Statement: $r21 = virtualinvoke $r18.<org.xml.sax.SAXException: java.lang.String getMessage()>() 
(assert true)
(define-const var691 String (append/672562846 var3512 var2177)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3512!1 String)
(assert (= var3512!1 (str.++ var3512 var2177)))
(assert true)
(define-const var866 String (toString/-2075883882 var691)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2710 var904 (getLocation/851674571 (cast-from-var1942-to-var3223 var2135))) ; Statement: $r24 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var1576 var866 (cast-from-var2960-to-var540 var3812) var2710)) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r25, $r18, $r24) 

(declare-const var1576!1 var3881)
(declare-const var866!1 String)
(declare-const var3812!1 var2960)
(declare-const var2710!1 var904)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1488-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc), ejbdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), iasdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), dest/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), getClasspath/1137645348=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), toString/-372021799=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String), <init>/-37773983=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.io.File, java.io.File, java.io.File, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), keepgenerated/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setRetainSource/-1176528847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), debug/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], boolean), setDebugOutput/718290541=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, boolean], void), iashome/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), var3881-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/-2074868419=([org.xml.sax.SAXException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1942-to-var3223=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var2960-to-var540=([org.xml.sax.SAXException], java.lang.Throwable)}
; {var1942=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask, var2135=r1, var1318=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var2942=r6, var1488=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2990=$r0, var2968=java.io.File, var2698=$r2, var1690=$r3, var546=$r4, var149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var561=$r5, var3716=$r7, var2218=$z0, var844=$z1, var3333=$r8, var2960=org.xml.sax.SAXException, var3812=$r18, var3881=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1576=$r19, var974=$r20, var3512=$r22, var2177=$r21, var691=$r23, var866=$r25, var904=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2710=$r24, var540=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask=var1942, r1=var2135, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var1318, r6=var2942, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var1488, $r0=var2990, java.io.File=var2968, $r2=var2698, $r3=var1690, $r4=var546, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var149, $r5=var561, $r7=var3716, $z0=var2218, $z1=var844, $r8=var3333, org.xml.sax.SAXException=var2960, $r18=var3812, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3881, $r19=var1576, $r20=var974, $r22=var3512, $r21=var2177, $r23=var691, $r25=var866, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var904, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3223, $r24=var2710, java.lang.Throwable=var540}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask;	r6 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iasdescriptor>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File dest>;	$r5 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path getClasspath()>();	$r7 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void <init>(java.io.File,java.io.File,java.io.File,java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r2, $r3, $r4, $r7, r6);	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean keepgenerated>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setRetainSource(boolean)>($z0);	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: boolean debug>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void setDebugOutput(boolean)>($z1);	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File iashome>;	if $r8 == null goto virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void execute()>();	$r18 := @caughtexception;	$r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A SAXException occurred while trying to read the XML descriptor file: ");	$r21 = virtualinvoke $r18.<org.xml.sax.SAXException: java.lang.String getMessage()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r25, $r18, $r24);	throw $r19
;block_num 2