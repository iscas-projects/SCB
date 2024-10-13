(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var1335 0)
(declare-sort var3333 0)
(declare-sort var448 0)
(declare-sort var3156 0)
(declare-sort var3554 0)
(declare-sort var3797 0)
(declare-sort var3574 0)
(declare-sort var3017 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charset/-1672746023 (var914) String)
(declare-fun var448-init () var448)
(declare-fun var3156-init () var3156)
(declare-fun <init>/-1119342706 (var3156 var3554) void)
(declare-fun cast-from-var1335-to-var3554 (var1335) var3554)
(declare-fun <init>/203560862 (var448 var3797) void)
(declare-fun cast-from-var3156-to-var3797 (var3156) var3797)
(declare-fun messageSource/-1672746023 (var914) var3574)
(declare-fun getProject/416672769 (var3707) var3017)
(declare-fun cast-from-var914-to-var3707 (var914) var3707)
(declare-fun buffer/-1672746023 (var914) String)
(declare-fun substring/1996688697 (String Int) String)
(declare-fun replaceProperties/-453140326 (var3017 String) String)
(declare-fun write/654681022 (var3797 String) void)
(declare-fun cast-from-var448-to-var3797 (var448) var3797)
(declare-fun newLine/-1189778939 (var448) void)
(declare-fun flush/1002762677 (var448) void)
(declare-const null-var914 var914)
(declare-const null-var1335 var1335)
(declare-const null-String String)
(declare-const null-var3574 var3574)
(declare-const var2398 var914) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var2398 null-var914)))
(declare-const var2936 var1335) ; Statement: r3 := @parameter0: java.io.PrintStream 
(assert (not (= var2936 null-var1335)))
(define-const var3829 String (charset/-1672746023 var2398)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset> 
 ; Statement: if $r1 != null goto $r19 = new java.io.BufferedWriter 
(assert (not (not (= var3829 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var776 var448 var448-init) ; Statement: $r19 = new java.io.BufferedWriter 
(define-const var3751 var3156 var3156-init) ; Statement: $r16 = new java.io.OutputStreamWriter 
(assert true)
;(assert (<init>/-1119342706 var3751 (cast-from-var1335-to-var3554 var2936))) ; Statement: specialinvoke $r16.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>(r3) 

(declare-const var3751!1 var3156)
(declare-const var2936!1 var1335)
(assert true)
;(assert (<init>/203560862 var776 (cast-from-var3156-to-var3797 var3751!1))) ; Statement: specialinvoke $r19.<java.io.BufferedWriter: void <init>(java.io.Writer)>($r16) 

(declare-const var776!1 var448)
(declare-const var3751!2 var3156)
 ; Statement: goto [?= r20 = $r19] 
(assert true) ; Non Conditional
(define-const var473 var448 var776!1) ; Statement: r20 = $r19 
(define-const var1442 var3574 (messageSource/-1672746023 var2398)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource> 
 ; Statement: if $r5 == null goto $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (= var1442 null-var3574)) ; Cond: $r5 == null 
(assert true)
(define-const var3231 var3017 (getProject/416672769 (cast-from-var914-to-var3707 var2398))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var1531 String (buffer/-1672746023 var2398)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> 
(assert true)
(define-const var3568 String (substring/1996688697 var1531 0)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
(assert true)
(define-const var421 String (replaceProperties/-453140326 var3231 var3568)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r7) 
(assert true)
;(assert (write/654681022 (cast-from-var448-to-var3797 var776!1) var421)) ; Statement: virtualinvoke $r19.<java.io.BufferedWriter: void write(java.lang.String)>($r9) 

(declare-const var776!2 var448)
(declare-const var421!1 String)
(assert true)
;(assert (newLine/-1189778939 var776!2)) ; Statement: virtualinvoke $r19.<java.io.BufferedWriter: void newLine()>() 

(declare-const var776!3 var448)
(assert true) ; Non Conditional
(assert true)
;(assert (flush/1002762677 var473)) ; Statement: virtualinvoke r20.<java.io.BufferedWriter: void flush()>() 

(declare-const var473!1 var448)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charset/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.String), var448-init=([], java.io.BufferedWriter), var3156-init=([], java.io.OutputStreamWriter), <init>/-1119342706=([java.io.OutputStreamWriter, java.io.OutputStream], void), cast-from-var1335-to-var3554=([java.io.PrintStream], java.io.OutputStream), <init>/203560862=([java.io.BufferedWriter, java.io.Writer], void), cast-from-var3156-to-var3797=([java.io.OutputStreamWriter], java.io.Writer), messageSource/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.io.File), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var914-to-var3707=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var448-to-var3797=([java.io.BufferedWriter], java.io.Writer), newLine/-1189778939=([java.io.BufferedWriter], void), flush/1002762677=([java.io.BufferedWriter], void)}
; {var914=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var2398=r0, var1335=java.io.PrintStream, var2936=r3, var3829=$r1, var3333=null_type, var448=java.io.BufferedWriter, var776=$r19, var3156=java.io.OutputStreamWriter, var3751=$r16, var3554=java.io.OutputStream, var3797=java.io.Writer, var473=r20, var3574=java.io.File, var1442=$r5, var3017=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3707=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3231=$r8, var1531=$r6, var3568=$r7, var421=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var914, r0=var2398, java.io.PrintStream=var1335, r3=var2936, $r1=var3829, null_type=var3333, java.io.BufferedWriter=var448, $r19=var776, java.io.OutputStreamWriter=var3156, $r16=var3751, java.io.OutputStream=var3554, java.io.Writer=var3797, r20=var473, java.io.File=var3574, $r5=var1442, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3017, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3707, $r8=var3231, $r6=var1531, $r7=var3568, $r9=var421}
;seq <java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	r3 := @parameter0: java.io.PrintStream;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.String charset>;	if $r1 != null goto $r19 = new java.io.BufferedWriter;	$r19 = new java.io.BufferedWriter;	$r16 = new java.io.OutputStreamWriter;	specialinvoke $r16.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>(r3);	specialinvoke $r19.<java.io.BufferedWriter: void <init>(java.io.Writer)>($r16);	goto [?= r20 = $r19];	r20 = $r19;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.io.File messageSource>;	if $r5 == null goto $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r7);	virtualinvoke $r19.<java.io.BufferedWriter: void write(java.lang.String)>($r9);	virtualinvoke $r19.<java.io.BufferedWriter: void newLine()>();	virtualinvoke r20.<java.io.BufferedWriter: void flush()>();	return
;block_num 5