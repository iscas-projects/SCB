(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1526 0)
(declare-sort var236 0)
(declare-sort var3768 0)
(declare-sort var680 0)
(declare-sort var2292 0)
(declare-sort var2592 0)
(declare-sort var1604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var236-init () var236)
(declare-fun <init>/-707998177 (var236) void)
(declare-fun setOutputStream/-430057870 (var3768 var680) void)
(declare-fun cast-from-var1526-to-var3768 (var1526) var3768)
(declare-fun cast-from-var236-to-var680 (var236) var680)
(declare-fun setErrorStream/313768185 (var3768 var680) void)
(declare-fun setCommand/1957527518 (var3768 String) void)
(declare-fun execute/33549667 (var3768) void)
(declare-fun toString/153692726 (var236) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2292 String Int) void)
(declare-fun cast-from-var1526-to-var2292 (var1526) var2292)
(declare-fun var2592-init () var2592)
(declare-fun <init>/597479796 (var2592 String) void)
(declare-fun hasMoreTokens/711654492 (var2592) Bool)
(declare-fun clientVersionProperty/2108306981 (var1526) String)
(declare-fun serverVersionProperty/2108306981 (var1526) String)
(declare-const null-var1526 var1526)
(declare-const null-String String)
(declare-const var1064 var1526) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion 
(assert (not (= var1064 null-var1526)))
(define-const var1870 var236 var236-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var1870)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var1870!1 var236)
(assert true)
;(assert (setOutputStream/-430057870 (cast-from-var1526-to-var3768 var1064) (cast-from-var236-to-var680 var1870!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setOutputStream(java.io.OutputStream)>($r0) 

(declare-const var1064!1 var1526)
(declare-const var1870!2 var236)
(define-const var3099 var236 var236-init) ; Statement: $r2 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var3099)) ; Statement: specialinvoke $r2.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var3099!1 var236)
(assert true)
;(assert (setErrorStream/313768185 (cast-from-var1526-to-var3768 var1064!1) (cast-from-var236-to-var680 var3099!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setErrorStream(java.io.OutputStream)>($r2) 

(declare-const var1064!2 var1526)
(declare-const var3099!2 var236)
(assert true)
;(assert (setCommand/1957527518 (cast-from-var1526-to-var3768 var1064!2) "version")) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setCommand(java.lang.String)>("version") 

(declare-const var1064!3 var1526)
(declare-const var2978 String)
(assert true)
;(assert (execute/33549667 (cast-from-var1526-to-var3768 var1064!3))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask: void execute()>() 

(declare-const var1064!4 var1526)
(assert true)
(define-const var832 String (toString/153692726 var1870!2)) ; Statement: r3 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: java.lang.String toString()>() 
(define-const var2428 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2428)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2428!1 String)
(assert (= var2428!1 ""))
(assert true)
(define-const var1626 String (append/672562846 var2428!1 "Received version response \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Received version response \"") 
(declare-const var2428!2 String)
(assert (= var2428!2 (str.++ var2428!1 "Received version response \u0022")))
(assert true)
(define-const var2885 String (append/672562846 var1626 var832)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1626!1 String)
(assert (= var1626!1 (str.++ var1626 var832)))
(assert true)
(define-const var1712 String (append/672562846 var2885 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2885!1 String)
(assert (= var2885!1 (str.++ var2885 "\u0022")))
(assert true)
(define-const var3957 String (toString/-2075883882 var1712)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1526-to-var2292 var1064!4) var3957 4)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void log(java.lang.String,int)>($r8, 4) 

(declare-const var1064!5 var1526)
(declare-const var3957!1 String)
(declare-const var2615 Int)
(define-const var96 var2592 var2592-init) ; Statement: $r9 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/597479796 var96 var832)) ; Statement: specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String)>(r3) 

(declare-const var96!1 var2592)
(declare-const var832!1 String)
(define-const var3654 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3461 Bool (ite (= 1 0) true false)) ; Statement: z14 = 0 
(define-const var1524 Bool (ite (= 1 0) true false)) ; Statement: z13 = 0 
(define-const var2822 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var3022 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var2149 Bool (ite (= 1 0) true false)) ; Statement: z19 = 0 
(define-const var1669 Bool (ite (= 1 0) true false)) ; Statement: z18 = 0 
(define-const var3934 Bool (ite (= 1 0) true false)) ; Statement: z17 = 0 
(define-const var3825 String null-String) ; Statement: r39 = null 
(define-const var3363 String null-String) ; Statement: r40 = null 
(define-const var859 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var298 Bool (ite (= 1 0) true false)) ; Statement: z16 = 0 
(define-const var2284 Bool (ite (= 1 0) true false)) ; Statement: z15 = 0 
(assert true) ; Non Conditional
 ; Statement: if z15 != 0 goto (branch) 
(assert (not (not (= (ite var2284 1 0) 0)))) ; Negate: Cond: z15 != 0  
(assert true)
(define-const var3416 Bool (hasMoreTokens/711654492 var96!1)) ; Statement: $z8 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z8 == 0 goto $r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String clientVersionProperty> 
(assert (= (ite var3416 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3530 String (clientVersionProperty/2108306981 var1064!5)) ; Statement: $r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String clientVersionProperty> 
 ; Statement: if $r31 == null goto $r32 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String serverVersionProperty> 
(assert (= var3530 null-String)) ; Cond: $r31 == null 
(define-const var1530 String (serverVersionProperty/2108306981 var1064!5)) ; Statement: $r32 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String serverVersionProperty> 
 ; Statement: if $r32 == null goto return 
(assert (= var1530 null-String)) ; Cond: $r32 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var236-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), setOutputStream/-430057870=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, java.io.OutputStream], void), cast-from-var1526-to-var3768=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask), cast-from-var236-to-var680=([java.io.ByteArrayOutputStream], java.io.OutputStream), setErrorStream/313768185=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, java.io.OutputStream], void), setCommand/1957527518=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, java.lang.String], void), execute/33549667=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask], void), toString/153692726=([java.io.ByteArrayOutputStream], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1526-to-var2292=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2592-init=([], java.util.StringTokenizer), <init>/597479796=([java.util.StringTokenizer, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), clientVersionProperty/2108306981=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion], java.lang.String), serverVersionProperty/2108306981=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion], java.lang.String)}
; {var1526=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion, var1064=r1, var236=java.io.ByteArrayOutputStream, var1870=$r0, var3768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, var680=java.io.OutputStream, var3099=$r2, var2978="version", var832=r3, var2428=$r4, var1626=$r5, var2885=$r6, var1712=$r7, var3957=$r8, var2292=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2615=4, var2592=java.util.StringTokenizer, var96=$r9, var3654=z9, var3461=z14, var1524=z13, var2822=z12, var3022=z10, var2149=z19, var1669=z18, var3934=z17, var1604=null_type, var3825=r39, var3363=r40, var859=z11, var298=z16, var2284=z15, var3416=$z8, var3530=$r31, var1530=$r32}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion=var1526, r1=var1064, java.io.ByteArrayOutputStream=var236, $r0=var1870, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask=var3768, java.io.OutputStream=var680, $r2=var3099, "version"=var2978, r3=var832, $r4=var2428, $r5=var1626, $r6=var2885, $r7=var1712, $r8=var3957, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2292, 4=var2615, java.util.StringTokenizer=var2592, $r9=var96, z9=var3654, z14=var3461, z13=var1524, z12=var2822, z10=var3022, z19=var2149, z18=var1669, z17=var3934, null_type=var1604, r39=var3825, r40=var3363, z11=var859, z16=var298, z15=var2284, $z8=var3416, $r31=var3530, $r32=var1530}
;seq <java.io.ByteArrayOutputStream: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setOutputStream(java.io.OutputStream)>($r0);	$r2 = new java.io.ByteArrayOutputStream;	specialinvoke $r2.<java.io.ByteArrayOutputStream: void <init>()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setErrorStream(java.io.OutputStream)>($r2);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void setCommand(java.lang.String)>("version");	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask: void execute()>();	r3 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: java.lang.String toString()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Received version response \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: void log(java.lang.String,int)>($r8, 4);	$r9 = new java.util.StringTokenizer;	specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String)>(r3);	z9 = 0;	z14 = 0;	z13 = 0;	z12 = 0;	z10 = 0;	z19 = 0;	z18 = 0;	z17 = 0;	r39 = null;	r40 = null;	z11 = 0;	z16 = 0;	z15 = 0;	if z15 != 0 goto (branch);	$z8 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z8 == 0 goto $r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String clientVersionProperty>;	$r31 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String clientVersionProperty>;	if $r31 == null goto $r32 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String serverVersionProperty>;	$r32 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsVersion: java.lang.String serverVersionProperty>;	if $r32 == null goto return;	return
;block_num 6