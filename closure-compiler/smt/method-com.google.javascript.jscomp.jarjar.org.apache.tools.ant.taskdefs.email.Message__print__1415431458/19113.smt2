(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3632 0)
(declare-sort var151 0)
(declare-sort var611 0)
(declare-sort var2885 0)
(declare-sort var3081 0)
(declare-sort var111 0)
(declare-sort var2727 0)
(declare-sort var252 0)
(declare-sort var2157 0)
(declare-sort var3054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1672746023 (var3632) String)
(declare-fun var2885-init () var2885)
(declare-fun var3081-init () var3081)
(declare-fun <init>/-1956923827 (var3081 var111 String) void)
(declare-fun cast-from-var151-to-var111 (var151) var111)
(declare-fun <init>/203560862 (var2885 var2727) void)
(declare-fun cast-from-var3081-to-var2727 (var3081) var2727)
(declare-fun messageSource/-1672746023 (var3632) var252)
(declare-fun getProject/416672769 (var3054) var2157)
(declare-fun cast-from-var3632-to-var3054 (var3632) var3054)
(declare-fun buffer/-1672746023 (var3632) String)
(declare-fun substring/1996688697 (String Int) String)
(declare-fun replaceProperties/-453140326 (var2157 String) String)
(declare-fun write/654681022 (var2727 String) void)
(declare-fun cast-from-var2885-to-var2727 (var2885) var2727)
(declare-fun newLine/-1189778939 (var2885) void)
(declare-fun flush/1002762677 (var2885) void)
(declare-const null-var3632 var3632)
(declare-const null-var151 var151)
(declare-const null-String String)
(declare-const null-var252 var252)
(declare-const var2670 var3632) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var2670 null-var3632)))
(declare-const var584 var151) ; Statement: r3 := @parameter0: java.io.PrintStream 
(assert (not (= var584 null-var151)))
(define-const var1207 String (charset/-1672746023 var2670)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r19 = new java.io.BufferedWriter 
(assert (not (= var1207 null-String))) ; Cond: $r1 != null 
(define-const var3576 var2885 var2885-init) ; Statement: $r19 = new java.io.BufferedWriter 
(define-const var2787 var3081 var3081-init) ; Statement: $r2 = new java.io.OutputStreamWriter 
(define-const var1198 String (charset/-1672746023 var2670)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> 
(assert true)
;(assert (<init>/-1956923827 var2787 (cast-from-var151-to-var111 var584) var1198)) ; Statement: specialinvoke $r2.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.lang.String)>(r3, $r4) 

(declare-const var2787!1 var3081)
(declare-const var584!1 var151)
(declare-const var1198!1 String)
(assert true)
;(assert (<init>/203560862 var3576 (cast-from-var3081-to-var2727 var2787!1))) ; Statement: specialinvoke $r19.<java.io.BufferedWriter: void <init>(java.io.Writer)>($r2) 

(declare-const var3576!1 var2885)
(declare-const var2787!2 var3081)
(assert true) ; Non Conditional
(define-const var322 var2885 var3576!1) ; Statement: r20 = $r19 
(define-const var806 var252 (messageSource/-1672746023 var2670)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> 
 ; Statement: if $r5 == null goto $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (= var806 null-var252)) ; Cond: $r5 == null 
(assert true)
(define-const var3185 var2157 (getProject/416672769 (cast-from-var3632-to-var3054 var2670))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var2328 String (buffer/-1672746023 var2670)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> 
(assert true)
(define-const var762 String (substring/1996688697 var2328 0)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
(assert true)
(define-const var919 String (replaceProperties/-453140326 var3185 var762)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r7) 
(assert true)
;(assert (write/654681022 (cast-from-var2885-to-var2727 var3576!1) var919)) ; Statement: virtualinvoke $r19.<java.io.BufferedWriter: void write(java.lang.String)>($r9) 

(declare-const var3576!2 var2885)
(declare-const var919!1 String)
(assert true)
;(assert (newLine/-1189778939 var3576!2)) ; Statement: virtualinvoke $r19.<java.io.BufferedWriter: void newLine()>() 

(declare-const var3576!3 var2885)
(assert true) ; Non Conditional
(assert true)
;(assert (flush/1002762677 var322)) ; Statement: virtualinvoke r20.<java.io.BufferedWriter: void flush()>() 

(declare-const var322!1 var2885)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), var2885-init=([], java.io.BufferedWriter), var3081-init=([], java.io.OutputStreamWriter), <init>/-1956923827=([java.io.OutputStreamWriter, java.io.OutputStream, java.lang.String], void), cast-from-var151-to-var111=([java.io.PrintStream], java.io.OutputStream), <init>/203560862=([java.io.BufferedWriter, java.io.Writer], void), cast-from-var3081-to-var2727=([java.io.OutputStreamWriter], java.io.Writer), messageSource/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.io.File), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3632-to-var3054=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var2885-to-var2727=([java.io.BufferedWriter], java.io.Writer), newLine/-1189778939=([java.io.BufferedWriter], void), flush/1002762677=([java.io.BufferedWriter], void)}
; {var3632=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var2670=r0, var151=java.io.PrintStream, var584=r3, var1207=$r1, var611=null_type, var2885=java.io.BufferedWriter, var3576=$r19, var3081=java.io.OutputStreamWriter, var2787=$r2, var1198=$r4, var111=java.io.OutputStream, var2727=java.io.Writer, var322=r20, var252=java.io.File, var806=$r5, var2157=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3054=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3185=$r8, var2328=$r6, var762=$r7, var919=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var3632, r0=var2670, java.io.PrintStream=var151, r3=var584, $r1=var1207, null_type=var611, java.io.BufferedWriter=var2885, $r19=var3576, java.io.OutputStreamWriter=var3081, $r2=var2787, $r4=var1198, java.io.OutputStream=var111, java.io.Writer=var2727, r20=var322, java.io.File=var252, $r5=var806, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2157, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3054, $r8=var3185, $r6=var2328, $r7=var762, $r9=var919}
;seq <java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	r3 := @parameter0: java.io.PrintStream;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset>;	if $r1 != null goto $r19 = new java.io.BufferedWriter;	$r19 = new java.io.BufferedWriter;	$r2 = new java.io.OutputStreamWriter;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset>;	specialinvoke $r2.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.lang.String)>(r3, $r4);	specialinvoke $r19.<java.io.BufferedWriter: void <init>(java.io.Writer)>($r2);	r20 = $r19;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource>;	if $r5 == null goto $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r7);	virtualinvoke $r19.<java.io.BufferedWriter: void write(java.lang.String)>($r9);	virtualinvoke $r19.<java.io.BufferedWriter: void newLine()>();	virtualinvoke r20.<java.io.BufferedWriter: void flush()>();	return
;block_num 5