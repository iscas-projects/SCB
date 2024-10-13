(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3663 0)
(declare-sort var378 0)
(declare-sort var2220 0)
(declare-sort var1480 0)
(declare-sort var1146 0)
(declare-sort var2799 0)
(declare-sort var954 0)
(declare-sort var2734 0)
(declare-sort var1076 0)
(declare-sort var1756 0)
(declare-sort var1907 0)
(declare-sort var3369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var378-init () var378)
(declare-fun <init>/900561260 (var378) void)
(declare-fun rpmBuildCommand/-701048451 (var3663) String)
(declare-fun guessRpmBuildCommand/-633409684 (var3663) String)
(declare-fun setExecutable/491986901 (var378 String) void)
(declare-fun topDir/-701048451 (var3663) var1480)
(declare-fun createArgument/-916843187 (var378) var1146)
(declare-fun command/-701048451 (var3663) String)
(declare-fun setLine/-680234376 (var1146 String) void)
(declare-fun cleanBuildDir/-701048451 (var3663) Bool)
(declare-fun removeSpec/-701048451 (var3663) Bool)
(declare-fun removeSource/-701048451 (var3663) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun specFile/-701048451 (var3663) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var1146 String) void)
(declare-fun error/-701048451 (var3663) var1480)
(declare-fun output/-701048451 (var3663) var1480)
(declare-fun var2734_close/709506204 (var2799) void)
(declare-fun var1076-init () var1076)
(declare-fun getLocation/851674571 (var1907) var1756)
(declare-fun cast-from-var3663-to-var1907 (var3663) var1907)
(declare-fun <init>/1600772885 (var1076 var3369 var1756) void)
(declare-fun cast-from-var954-to-var3369 (var954) var3369)
(declare-const null-var3663 var3663)
(declare-const null-String String)
(declare-const null-var1480 var1480)
(declare-const null-var2799 var2799)
(declare-const null-var954 var954)
(declare-const var2029 var3663) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm 
(assert (not (= var2029 null-var3663)))
(define-const var745 var378 var378-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var745)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var745!1 var378)
(define-const var13 String (rpmBuildCommand/-701048451 var2029)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand> 
 ; Statement: if $r2 != null goto $r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand> 
(assert (not (not (= var13 null-String)))) ; Negate: Cond: $r2 != null  
(assert true)
(define-const var2237 String (guessRpmBuildCommand/-633409684 var2029)) ; Statement: $r59 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String guessRpmBuildCommand()>() 
 ; Statement: goto [?= virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setExecutable/491986901 var745!1 var2237)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59) 

(declare-const var745!2 var378)
(declare-const var2237!1 String)
(define-const var2298 var1480 (topDir/-701048451 var2029)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File topDir> 
 ; Statement: if $r3 == null goto $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert (= var2298 null-var1480)) ; Cond: $r3 == null 
(assert true)
(define-const var3829 var1146 (createArgument/-916843187 var745!2)) ; Statement: $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var1621 String (command/-701048451 var2029)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String command> 
(assert true)
;(assert (setLine/-680234376 var3829 var1621)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r4) 

(declare-const var3829!1 var1146)
(declare-const var1621!1 String)
(define-const var642 Bool (cleanBuildDir/-701048451 var2029)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean cleanBuildDir> 
 ; Statement: if $z0 == 0 goto $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec> 
(assert (= (ite var642 1 0) 0)) ; Cond: $z0 == 0 
(define-const var737 Bool (removeSpec/-701048451 var2029)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec> 
 ; Statement: if $z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource> 
(assert (= (ite var737 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3132 Bool (removeSource/-701048451 var2029)) ; Statement: $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource> 
 ; Statement: if $z2 == 0 goto $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert (= (ite var3132 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var498 var1146 (createArgument/-916843187 var745!2)) ; Statement: $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var2714 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2714)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2714!1 String)
(assert (= var2714!1 ""))
(assert true)
(define-const var1565 String (append/672562846 var2714!1 "SPECS/")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SPECS/") 
(declare-const var2714!2 String)
(assert (= var2714!2 (str.++ var2714!1 "SPECS/")))
(define-const var3752 String (specFile/-701048451 var2029)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String specFile> 
(assert true)
(define-const var3573 String (append/672562846 var1565 var3752)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 var3752)))
(assert true)
(define-const var1935 String (toString/-2075883882 var3573)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var498 var1935)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10) 

(declare-const var498!1 var1146)
(declare-const var1935!1 String)
(define-const var3938 var2799 null-var2799) ; Statement: r60 = null 
(define-const var1563 var2799 null-var2799) ; Statement: r61 = null 
(define-const var18 var1480 (error/-701048451 var2029)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File error> 
 ; Statement: if $r12 != null goto $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
(assert (not (= var18 null-var1480))) ; Cond: $r12 != null 
(define-const var2483 var1480 (output/-701048451 var2029)) ; Statement: $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
 ; Statement: if $r13 == null goto $z3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean quiet> 
(assert (not (= var2483 null-var1480))) ; Negate: Cond: $r13 == null  
(define-const var2100 var2799 null-var2799) ; Statement: r63 = null 
(define-const var330 var1480 (output/-701048451 var2029)) ; Statement: $r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2017 var954) ; Statement: $r56 := @caughtexception 
(assert (not (= var2017 null-var954)))
;(assert (var2734_close/709506204 var2100)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void close(java.io.OutputStream)>(r63) 

(declare-const var2100!1 var2799)
(define-const var3719 var1076 var1076-init) ; Statement: $r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var124 var1756 (getLocation/851674571 (cast-from-var3663-to-var1907 var2029))) ; Statement: $r58 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1600772885 var3719 (cast-from-var954-to-var3369 var2017) var124)) ; Statement: specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r56, $r58) 

(declare-const var3719!1 var1076)
(declare-const var2017!1 var954)
(declare-const var124!1 var1756)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {var378-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), rpmBuildCommand/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), guessRpmBuildCommand/-633409684=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), topDir/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), command/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), setLine/-680234376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), cleanBuildDir/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), removeSpec/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), removeSource/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), specFile/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), error/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), output/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), var2734_close/709506204=([java.io.OutputStream], void), var1076-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3663-to-var1907=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1600772885=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var954-to-var3369=([java.io.IOException], java.lang.Throwable)}
; {var3663=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm, var2029=r1, var378=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var745=$r0, var13=$r2, var2220=null_type, var2237=$r59, var1480=java.io.File, var2298=$r3, var1146=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var3829=$r5, var1621=$r4, var642=$z0, var737=$z1, var3132=$z2, var498=$r11, var2714=$r6, var1565=$r8, var3752=$r7, var3573=$r9, var1935=$r10, var2799=java.io.OutputStream, var3938=r60, var1563=r61, var18=$r12, var2483=$r13, var2100=r63, var330=$r31, var954=java.io.IOException, var2017=$r56, var2734=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1076=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3719=$r57, var1756=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1907=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var124=$r58, var3369=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm=var3663, r1=var2029, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var378, $r0=var745, $r2=var13, null_type=var2220, $r59=var2237, java.io.File=var1480, $r3=var2298, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var1146, $r5=var3829, $r4=var1621, $z0=var642, $z1=var737, $z2=var3132, $r11=var498, $r6=var2714, $r8=var1565, $r7=var3752, $r9=var3573, $r10=var1935, java.io.OutputStream=var2799, r60=var3938, r61=var1563, $r12=var18, $r13=var2483, r63=var2100, $r31=var330, java.io.IOException=var954, $r56=var2017, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2734, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1076, $r57=var3719, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1756, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1907, $r58=var124, java.lang.Throwable=var3369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand>;	if $r2 != null goto $r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand>;	$r59 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String guessRpmBuildCommand()>();	goto [?= virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59)];	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File topDir>;	if $r3 == null goto $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String command>;	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r4);	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean cleanBuildDir>;	if $z0 == 0 goto $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec>;	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec>;	if $z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource>;	$z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource>;	if $z2 == 0 goto $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SPECS/");	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String specFile>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10);	r60 = null;	r61 = null;	$r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File error>;	if $r12 != null goto $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	$r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	if $r13 == null goto $z3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean quiet>;	r63 = null;	$r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	$r56 := @caughtexception;	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void close(java.io.OutputStream)>(r63);	$r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r58 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r56, $r58);	throw $r57
;block_num 10