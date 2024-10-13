(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var776 0)
(declare-sort var1586 0)
(declare-sort var1495 0)
(declare-sort var630 0)
(declare-sort var3529 0)
(declare-sort var1243 0)
(declare-sort var315 0)
(declare-sort var359 0)
(declare-sort var877 0)
(declare-sort var1183 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var776-init () var776)
(declare-fun <init>/900561260 (var776) void)
(declare-fun rpmBuildCommand/-701048451 (var541) String)
(declare-fun setExecutable/491986901 (var776 String) void)
(declare-fun topDir/-701048451 (var541) var1495)
(declare-fun createArgument/-916843187 (var776) var630)
(declare-fun command/-701048451 (var541) String)
(declare-fun setLine/-680234376 (var630 String) void)
(declare-fun cleanBuildDir/-701048451 (var541) Bool)
(declare-fun removeSpec/-701048451 (var541) Bool)
(declare-fun removeSource/-701048451 (var541) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun specFile/-701048451 (var541) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var630 String) void)
(declare-fun error/-701048451 (var541) var1495)
(declare-fun output/-701048451 (var541) var1495)
(declare-fun var315_close/709506204 (var3529) void)
(declare-fun var359-init () var359)
(declare-fun getLocation/851674571 (var1183) var877)
(declare-fun cast-from-var541-to-var1183 (var541) var1183)
(declare-fun <init>/1600772885 (var359 var3767 var877) void)
(declare-fun cast-from-var1243-to-var3767 (var1243) var3767)
(declare-const null-var541 var541)
(declare-const null-String String)
(declare-const null-var1495 var1495)
(declare-const null-var3529 var3529)
(declare-const null-var1243 var1243)
(declare-const var3655 var541) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm 
(assert (not (= var3655 null-var541)))
(define-const var3343 var776 var776-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert true)
;(assert (<init>/900561260 var3343)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>() 

(declare-const var3343!1 var776)
(define-const var579 String (rpmBuildCommand/-701048451 var3655)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand> 
 ; Statement: if $r2 != null goto $r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand> 
(assert (not (= var579 null-String))) ; Cond: $r2 != null 
(define-const var2784 String (rpmBuildCommand/-701048451 var3655)) ; Statement: $r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand> 
(assert true) ; Non Conditional
(assert true)
;(assert (setExecutable/491986901 var3343!1 var2784)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59) 

(declare-const var3343!2 var776)
(declare-const var2784!1 String)
(define-const var3854 var1495 (topDir/-701048451 var3655)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File topDir> 
 ; Statement: if $r3 == null goto $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert (= var3854 null-var1495)) ; Cond: $r3 == null 
(assert true)
(define-const var2355 var630 (createArgument/-916843187 var3343!2)) ; Statement: $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var503 String (command/-701048451 var3655)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String command> 
(assert true)
;(assert (setLine/-680234376 var2355 var503)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r4) 

(declare-const var2355!1 var630)
(declare-const var503!1 String)
(define-const var135 Bool (cleanBuildDir/-701048451 var3655)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean cleanBuildDir> 
 ; Statement: if $z0 == 0 goto $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec> 
(assert (= (ite var135 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2404 Bool (removeSpec/-701048451 var3655)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec> 
 ; Statement: if $z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource> 
(assert (= (ite var2404 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1130 Bool (removeSource/-701048451 var3655)) ; Statement: $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource> 
 ; Statement: if $z2 == 0 goto $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(assert (= (ite var1130 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3023 var630 (createArgument/-916843187 var3343!2)) ; Statement: $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var2893 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2893)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2893!1 String)
(assert (= var2893!1 ""))
(assert true)
(define-const var1743 String (append/672562846 var2893!1 "SPECS/")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SPECS/") 
(declare-const var2893!2 String)
(assert (= var2893!2 (str.++ var2893!1 "SPECS/")))
(define-const var3826 String (specFile/-701048451 var3655)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String specFile> 
(assert true)
(define-const var993 String (append/672562846 var1743 var3826)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1743!1 String)
(assert (= var1743!1 (str.++ var1743 var3826)))
(assert true)
(define-const var1527 String (toString/-2075883882 var993)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var3023 var1527)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10) 

(declare-const var3023!1 var630)
(declare-const var1527!1 String)
(define-const var3777 var3529 null-var3529) ; Statement: r60 = null 
(define-const var2139 var3529 null-var3529) ; Statement: r61 = null 
(define-const var852 var1495 (error/-701048451 var3655)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File error> 
 ; Statement: if $r12 != null goto $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
(assert (not (= var852 null-var1495))) ; Cond: $r12 != null 
(define-const var2158 var1495 (output/-701048451 var3655)) ; Statement: $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
 ; Statement: if $r13 == null goto $z3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean quiet> 
(assert (not (= var2158 null-var1495))) ; Negate: Cond: $r13 == null  
(define-const var3452 var3529 null-var3529) ; Statement: r63 = null 
(define-const var1921 var1495 (output/-701048451 var3655)) ; Statement: $r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3519 var1243) ; Statement: $r56 := @caughtexception 
(assert (not (= var3519 null-var1243)))
;(assert (var315_close/709506204 var3452)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void close(java.io.OutputStream)>(r63) 

(declare-const var3452!1 var3529)
(define-const var2700 var359 var359-init) ; Statement: $r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var3085 var877 (getLocation/851674571 (cast-from-var541-to-var1183 var3655))) ; Statement: $r58 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1600772885 var2700 (cast-from-var1243-to-var3767 var3519) var3085)) ; Statement: specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r56, $r58) 

(declare-const var2700!1 var359)
(declare-const var3519!1 var1243)
(declare-const var3085!1 var877)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {var776-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), <init>/900561260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], void), rpmBuildCommand/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), setExecutable/491986901=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, java.lang.String], void), topDir/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), command/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), setLine/-680234376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), cleanBuildDir/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), removeSpec/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), removeSource/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), specFile/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void), error/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), output/-701048451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], java.io.File), var315_close/709506204=([java.io.OutputStream], void), var359-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var541-to-var1183=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1600772885=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var1243-to-var3767=([java.io.IOException], java.lang.Throwable)}
; {var541=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm, var3655=r1, var776=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3343=$r0, var579=$r2, var1586=null_type, var2784=$r59, var1495=java.io.File, var3854=$r3, var630=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2355=$r5, var503=$r4, var135=$z0, var2404=$z1, var1130=$z2, var3023=$r11, var2893=$r6, var1743=$r8, var3826=$r7, var993=$r9, var1527=$r10, var3529=java.io.OutputStream, var3777=r60, var2139=r61, var852=$r12, var2158=$r13, var3452=r63, var1921=$r31, var1243=java.io.IOException, var3519=$r56, var315=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var359=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2700=$r57, var877=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1183=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3085=$r58, var3767=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm=var541, r1=var3655, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var776, $r0=var3343, $r2=var579, null_type=var1586, $r59=var2784, java.io.File=var1495, $r3=var3854, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var630, $r5=var2355, $r4=var503, $z0=var135, $z1=var2404, $z2=var1130, $r11=var3023, $r6=var2893, $r8=var1743, $r7=var3826, $r9=var993, $r10=var1527, java.io.OutputStream=var3529, r60=var3777, r61=var2139, $r12=var852, $r13=var2158, r63=var3452, $r31=var1921, java.io.IOException=var1243, $r56=var3519, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var315, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var359, $r57=var2700, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var877, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1183, $r58=var3085, java.lang.Throwable=var3767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand>;	if $r2 != null goto $r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand>;	$r59 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String rpmBuildCommand>;	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: void setExecutable(java.lang.String)>($r59);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File topDir>;	if $r3 == null goto $r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r5 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String command>;	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setLine(java.lang.String)>($r4);	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean cleanBuildDir>;	if $z0 == 0 goto $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec>;	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSpec>;	if $z1 == 0 goto $z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource>;	$z2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean removeSource>;	if $z2 == 0 goto $r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r11 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SPECS/");	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.lang.String specFile>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r10);	r60 = null;	r61 = null;	$r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File error>;	if $r12 != null goto $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	$r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	if $r13 == null goto $z3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: boolean quiet>;	r63 = null;	$r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: java.io.File output>;	$r56 := @caughtexception;	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void close(java.io.OutputStream)>(r63);	$r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r58 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Rpm: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r56, $r58);	throw $r57
;block_num 10