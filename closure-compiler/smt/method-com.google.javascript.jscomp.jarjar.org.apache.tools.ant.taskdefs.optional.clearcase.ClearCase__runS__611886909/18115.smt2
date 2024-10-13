(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var355 0)
(declare-sort var3200 0)
(declare-sort var3552 0)
(declare-sort var2571 0)
(declare-sort var2958 0)
(declare-sort var3086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pcnt/-1822879494 (var2019) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3200-init () var3200)
(declare-fun <init>/-787946661 (var3200 var3552) void)
(declare-fun cast-from-var2019-to-var3552 (var2019) var3552)
(declare-fun createArg/-2032400575 (var3200) var2571)
(declare-fun getExecutable/1789301003 (var355) String)
(declare-fun setExecutable/-1436067762 (var3200 String) void)
(declare-fun getArguments/-1800712207 (var355) (Array Int String))
(declare-fun var355_toString/704231946 ((Array Int String)) String)
(declare-fun setLine/-680234376 (var2571 String) void)
(declare-fun setOutputproperty/-1453000638 (var3200 String) void)
(declare-fun setFailonerror/-1060217994 (var3200 Bool) void)
(declare-fun execute/-64833696 (var3200) void)
(declare-fun getProject/416672769 (var3086) var2958)
(declare-fun cast-from-var2019-to-var3086 (var2019) var3086)
(declare-fun getProperty/-1126216426 (var2958 String) String)
(declare-const null-var2019 var2019)
(declare-const null-var355 var355)
(declare-const null-Bool Bool)
(declare-const var2786 var2019) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase 
(assert (not (= var2786 null-var2019)))
(declare-const var3174 var355) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var3174 null-var355)))
(declare-const var1626 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1626 null-Bool)))
(define-const var2867 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2867)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2867!1 String)
(assert (= var2867!1 ""))
(assert true)
(define-const var311 String (append/672562846 var2867!1 "opts.cc.runS.output")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opts.cc.runS.output") 
(declare-const var2867!2 String)
(assert (= var2867!2 (str.++ var2867!1 "opts.cc.runS.output")))
(define-const var3060 Int (pcnt/-1822879494 var2786)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: int pcnt> 
(define-const var458 Int (+ var3060 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2786!1 var2019)
(assert (not (= var2786!1 null-var2019)))
(assert (= (pcnt/-1822879494 var2786!1) var458)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: int pcnt> = $i1 
(assert true)
(define-const var3034 String (append/-1001720160 var311 var3060)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var311!1 String)
(assert (str.prefixof var311 var311!1))
(assert true)
(define-const var2120 String (toString/-2075883882 var3034)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2161 var3200 var3200-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert true)
;(assert (<init>/-787946661 var2161 (cast-from-var2019-to-var3552 var2786!1))) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)>(r1) 

(declare-const var2161!1 var3200)
(declare-const var2786!2 var2019)
(assert true)
(define-const var2132 var2571 (createArg/-2032400575 var2161!1)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArg()>() 
(assert true)
(define-const var831 String (getExecutable/1789301003 var3174)) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String getExecutable()>() 
(assert true)
;(assert (setExecutable/-1436067762 var2161!1 var831)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setExecutable(java.lang.String)>($r8) 

(declare-const var2161!2 var3200)
(declare-const var831!1 String)
(assert true)
(define-const var2595 (Array Int String) (getArguments/-1800712207 var3174)) ; Statement: $r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String[] getArguments()>() 
(define-const var3506 String (var355_toString/704231946 var2595)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString(java.lang.String[])>($r9) 
(assert true)
;(assert (setLine/-680234376 var2132 var3506)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r10) 

(declare-const var2132!1 var2571)
(declare-const var3506!1 String)
(assert true)
;(assert (setOutputproperty/-1453000638 var2161!2 var2120)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setOutputproperty(java.lang.String)>(r4) 

(declare-const var2161!3 var3200)
(declare-const var2120!1 String)
(assert true)
;(assert (setFailonerror/-1060217994 var2161!3 var1626)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setFailonerror(boolean)>(z0) 

(declare-const var2161!4 var3200)
(declare-const var1626!1 Bool)
(assert true)
;(assert (execute/-64833696 var2161!4)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void execute()>() 

(declare-const var2161!5 var3200)
(assert true)
(define-const var936 var2958 (getProject/416672769 (cast-from-var2019-to-var3086 var2786!2))) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3954 String (getProperty/-1126216426 var936 var2120!1)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r4) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pcnt/-1822879494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3200-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask), <init>/-787946661=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], void), cast-from-var2019-to-var3552=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), createArg/-2032400575=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), getExecutable/1789301003=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), setExecutable/-1436067762=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, java.lang.String], void), getArguments/-1800712207=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String[]), var355_toString/704231946=([java.lang.String[]], java.lang.String), setLine/-680234376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), setOutputproperty/-1453000638=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, java.lang.String], void), setFailonerror/-1060217994=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, boolean], void), execute/-64833696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2019-to-var3086=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String)}
; {var2019=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase, var2786=r1, var355=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3174=r7, var1626=z0, var2867=$r0, var311=$r2, var3060=$i0, var458=$i1, var3034=$r3, var2120=r4, var3200=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var2161=$r5, var3552=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2571=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2132=r6, var831=$r8, var2595=$r9, var3506=$r10, var2958=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3086=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var936=$r11, var3954=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase=var2019, r1=var2786, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var355, r7=var3174, z0=var1626, $r0=var2867, $r2=var311, $i0=var3060, $i1=var458, $r3=var3034, r4=var2120, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var3200, $r5=var2161, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3552, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var2571, r6=var2132, $r8=var831, $r9=var2595, $r10=var3506, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2958, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3086, $r11=var936, $r12=var3954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString(java.lang.String[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("opts.cc.runS.output");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: int pcnt>;	$i1 = $i0 + 1;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: int pcnt> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)>(r1);	r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArg()>();	$r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String getExecutable()>();	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setExecutable(java.lang.String)>($r8);	$r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String[] getArguments()>();	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString(java.lang.String[])>($r9);	virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r10);	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setOutputproperty(java.lang.String)>(r4);	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void setFailonerror(boolean)>(z0);	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void execute()>();	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.ClearCase: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r12 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>(r4);	return $r12
;block_num 1