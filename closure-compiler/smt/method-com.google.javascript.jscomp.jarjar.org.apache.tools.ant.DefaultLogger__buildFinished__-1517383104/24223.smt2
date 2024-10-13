(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var484 0)
(declare-sort var517 0)
(declare-sort var2337 0)
(declare-sort var1018 0)
(declare-sort var3804 0)
(declare-sort var1396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getException/-62252709 (var517) var2337)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun arr-var1018-init () (Array Int var1018))
(declare-fun getBuildSuccessfulMessage/-258980561 (var484) String)
(declare-fun cast-from-String-to-var1018 (String) var1018)
(declare-fun String_format/1339386452 (String (Array Int var1018)) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3804_currentTimeMillis/630293680 () Int)
(declare-fun startTime/1750867282 (var484) Int)
(declare-fun var484_formatTime/-112437970 (Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun err/1750867282 (var484) var1396)
(declare-fun printMessage/-1991938728 (var484 String var1396 Int) void)
(declare-fun log/-430506474 (var484 String) void)
(declare-const null-var484 var484)
(declare-const null-var517 var517)
(declare-const null-var2337 var2337)
(declare-const null-__Array__Int__var1018__ (Array Int var1018))
(declare-const var1907 var484) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger 
(assert (not (= var1907 null-var484)))
(declare-const var3861 var517) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3861 null-var517)))
(assert true)
(define-const var3409 var2337 (getException/-62252709 var3861)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>() 
(define-const var1900 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1900)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1900!1 String)
 ; Statement: if r1 != null goto $r3 = newarray (java.lang.Object)[1] 
(assert (not (not (= var3409 null-var2337)))) ; Negate: Cond: r1 != null  
(define-const var3174 (Array Int var1018) arr-var1018-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3223 String (getBuildSuccessfulMessage/-258980561 var1907)) ; Statement: $r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>() 
(declare-const var3174!1 (Array Int var1018))
(assert (not (= var3174!1 null-__Array__Int__var1018__)))
(assert (= (select var3174!1 0) (cast-from-String-to-var1018 var3223))) ; Statement: $r9[0] = $r10 
(define-const var3715 String (String_format/1339386452 "%n%s" var3174!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s", $r9) 
(assert true)
;(assert (append/1560614132 var1900!1 var3715)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var1900!2 String)
(assert (str.prefixof var1900!1 var1900!2))
 ; Statement: goto [?= $r12 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var1519 (Array Int var1018) arr-var1018-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(define-const var3682 Int var3804_currentTimeMillis/630293680) ; Statement: $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var3614 Int (startTime/1750867282 var1907)) ; Statement: $l2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: long startTime> 
(define-const var3496 Int (- var3682 var3614)) ; Statement: $l3 = $l1 - $l2 
(define-const var2968 String (var484_formatTime/-112437970 var3496)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String formatTime(long)>($l3) 
(declare-const var1519!1 (Array Int var1018))
(assert (not (= var1519!1 null-__Array__Int__var1018__)))
(assert (= (select var1519!1 0) (cast-from-String-to-var1018 var2968))) ; Statement: $r12[0] = $r13 
(define-const var3471 String (String_format/1339386452 "%nTotal time: %s" var1519!1)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nTotal time: %s", $r12) 
(assert true)
;(assert (append/1560614132 var1900!2 var3471)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var1900!3 String)
(assert (str.prefixof var1900!2 var1900!3))
(assert true)
(define-const var3454 String (toString/-222306083 var1900!3)) ; Statement: $r15 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: if r1 != null goto $r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err> 
(assert (not (= var3409 null-var2337))) ; Cond: r1 != null 
(define-const var888 var1396 (err/1750867282 var1907)) ; Statement: $r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err> 
(assert true)
;(assert (printMessage/-1991938728 var1907 var3454 var888 0)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r15, $r7, 0) 

(declare-const var1907!1 var484)
(declare-const var3454!1 String)
(declare-const var888!1 var1396)
(declare-const var3431 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (log/-430506474 var1907!1 var3454!1)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15) 

(declare-const var1907!2 var484)
(declare-const var3454!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getException/-62252709=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), arr-var1018-init=([], java.lang.Object[]), getBuildSuccessfulMessage/-258980561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-String-to-var1018=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3804_currentTimeMillis/630293680=([], long), startTime/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], long), var484_formatTime/-112437970=([long], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), err/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void), log/-430506474=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String], void)}
; {var484=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var1907=r4, var517=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3861=r0, var2337=java.lang.Throwable, var3409=r1, var1900=$r2, var1018=java.lang.Object, var3174=$r9, var3223=$r10, var3715=$r11, var1519=$r12, var3804=java.lang.System, var3682=$l1, var3614=$l2, var3496=$l3, var2968=$r13, var3471=$r14, var3454=$r15, var1396=java.io.PrintStream, var888=$r7, var3431=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var484, r4=var1907, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var517, r0=var3861, java.lang.Throwable=var2337, r1=var3409, $r2=var1900, java.lang.Object=var1018, $r9=var3174, $r10=var3223, $r11=var3715, $r12=var1519, java.lang.System=var3804, $l1=var3682, $l2=var3614, $l3=var3496, $r13=var2968, $r14=var3471, $r15=var3454, java.io.PrintStream=var1396, $r7=var888, 0=var3431}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	if r1 != null goto $r3 = newarray (java.lang.Object)[1];	$r9 = newarray (java.lang.Object)[1];	$r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>();	$r9[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s", $r9);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	goto [?= $r12 = newarray (java.lang.Object)[1]];	$r12 = newarray (java.lang.Object)[1];	$l1 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: long startTime>;	$l3 = $l1 - $l2;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String formatTime(long)>($l3);	$r12[0] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nTotal time: %s", $r12);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r15 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	if r1 != null goto $r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err>;	$r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err>;	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r15, $r7, 0);	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15);	return
;block_num 5