(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3300 0)
(declare-sort var3305 0)
(declare-sort var2761 0)
(declare-sort var2575 0)
(declare-sort var1130 0)
(declare-sort var3607 0)
(declare-sort var3627 0)
(declare-sort var1193 0)
(declare-sort var1264 0)
(declare-sort var2522 0)
(declare-sort var3830 0)
(declare-sort var3687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRmic/971927745 (var2761) var3305)
(declare-fun cast-from-var3300-to-var2761 (var3300) var2761)
(declare-fun setupRmicCommand/-1297756785 (var2761) var2575)
(declare-fun getProject/416672769 (var3607) var1130)
(declare-fun cast-from-var3305-to-var3607 (var3305) var3607)
(declare-fun getExecutable/1093727941 (var3305) String)
(declare-fun setExecutable/491986901 (var2575 String) void)
(declare-fun getCommandline/-1775513496 (var2575) (Array Int String))
(declare-fun var1193-init () var1193)
(declare-fun var1264-init () var1264)
(declare-fun var3830-init () var3830)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getExecutableName/392573861 (var3300) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3830 String var3687) void)
(declare-fun cast-from-var2522-to-var3687 (var2522) var3687)
(declare-const null-var3300 var3300)
(declare-const null-String String)
(declare-const null-var2522 var2522)
(declare-const var2710 var3300) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic 
(assert (not (= var2710 null-var3300)))
(assert true)
(define-const var1549 var3305 (getRmic/971927745 (cast-from-var3300-to-var2761 var2710))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>() 
(assert true)
(define-const var3545 var2575 (setupRmicCommand/-1297756785 (cast-from-var3300-to-var2761 var2710))) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupRmicCommand()>() 
(assert true)
(define-const var1560 var1130 (getProject/416672769 (cast-from-var3305-to-var3607 var1549))) ; Statement: r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var747 String (getExecutable/1093727941 var1549)) ; Statement: r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.lang.String getExecutable()>() 
 ; Statement: if r18 != null goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>(r18) 
(assert (not (= var747 null-String))) ; Cond: r18 != null 
(assert true)
;(assert (setExecutable/491986901 var3545 var747)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>(r18) 

(declare-const var3545!1 var2575)
(declare-const var747!1 String)
(assert true)
(define-const var3897 (Array Int String) (getCommandline/-1775513496 var3545!1)) ; Statement: $r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String[] getCommandline()>() 
(define-const var1597 var1193 var1193-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute 
(define-const var2842 var1264 var1264-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogStreamHandler 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1403 var2522) ; Statement: $r10 := @caughtexception 
(assert (not (= var1403 null-var2522)))
(define-const var1392 var3830 var3830-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1061 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var66 String (append/672562846 var1061!1 "Error running ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error running ") 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 "Error running ")))
(assert true)
(define-const var1257 String (getExecutableName/392573861 var2710)) ; Statement: $r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: java.lang.String getExecutableName()>() 
(assert true)
(define-const var3792 String (append/672562846 var66 var1257)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var66!1 String)
(assert (= var66!1 (str.++ var66 var1257)))
(assert true)
(define-const var631 String (append/672562846 var3792 " -maybe it is not on the path")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -maybe it is not on the path") 
(declare-const var3792!1 String)
(assert (= var3792!1 (str.++ var3792 " -maybe it is not on the path")))
(assert true)
(define-const var260 String (toString/-2075883882 var631)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1392 var260 (cast-from-var2522-to-var3687 var1403))) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10) 

(declare-const var1392!1 var3830)
(declare-const var260!1 String)
(declare-const var1403!1 var2522)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getRmic/971927745=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic), cast-from-var3300-to-var2761=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter), setupRmicCommand/-1297756785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3305-to-var3607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getExecutable/1093727941=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], java.lang.String), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), getCommandline/-1775513496=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String[]), var1193-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute), var1264-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogStreamHandler), var3830-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getExecutableName/392573861=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2522-to-var3687=([java.io.IOException], java.lang.Throwable)}
; {var3300=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic, var2710=r0, var3305=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var2761=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter, var1549=r1, var2575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3545=r2, var1130=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3607=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1560=r3, var747=r18, var3627=null_type, var3897=$r8, var1193=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var1597=$r4, var1264=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogStreamHandler, var2842=$r5, var2522=java.io.IOException, var1403=$r10, var3830=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1392=$r11, var1061=$r12, var66=$r14, var1257=$r13, var3792=$r15, var631=$r16, var260=$r17, var3687=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic=var3300, r0=var2710, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var3305, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter=var2761, r1=var1549, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2575, r2=var3545, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1130, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3607, r3=var1560, r18=var747, null_type=var3627, $r8=var3897, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var1193, $r4=var1597, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogStreamHandler=var1264, $r5=var2842, java.io.IOException=var2522, $r10=var1403, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3830, $r11=var1392, $r12=var1061, $r14=var66, $r13=var1257, $r15=var3792, $r16=var631, $r17=var260, java.lang.Throwable=var3687}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupRmicCommand()>();	r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: java.lang.String getExecutable()>();	if r18 != null goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>(r18);	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>(r18);	$r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String[] getCommandline()>();	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogStreamHandler;	$r10 := @caughtexception;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error running ");	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.ForkingSunRmic: java.lang.String getExecutableName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -maybe it is not on the path");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10);	throw $r11
;block_num 3