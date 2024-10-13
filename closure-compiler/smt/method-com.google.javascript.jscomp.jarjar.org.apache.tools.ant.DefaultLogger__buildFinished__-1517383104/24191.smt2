(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1773 0)
(declare-sort var1383 0)
(declare-sort var2851 0)
(declare-sort var2082 0)
(declare-sort var2881 0)
(declare-sort var1809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getException/-62252709 (var1383) var2851)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun arr-var2082-init () (Array Int var2082))
(declare-fun getBuildSuccessfulMessage/-258980561 (var1773) String)
(declare-fun cast-from-String-to-var2082 (String) var2082)
(declare-fun String_format/1339386452 (String (Array Int var2082)) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2881_currentTimeMillis/630293680 () Int)
(declare-fun startTime/1750867282 (var1773) Int)
(declare-fun var1773_formatTime/-112437970 (Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun out/1750867282 (var1773) var1809)
(declare-fun printMessage/-1991938728 (var1773 String var1809 Int) void)
(declare-fun log/-430506474 (var1773 String) void)
(declare-const null-var1773 var1773)
(declare-const null-var1383 var1383)
(declare-const null-var2851 var2851)
(declare-const null-__Array__Int__var2082__ (Array Int var2082))
(declare-const var3645 var1773) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger 
(assert (not (= var3645 null-var1773)))
(declare-const var813 var1383) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var813 null-var1383)))
(assert true)
(define-const var2257 var2851 (getException/-62252709 var813)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>() 
(define-const var1396 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1396)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1396!1 String)
 ; Statement: if r1 != null goto $r3 = newarray (java.lang.Object)[1] 
(assert (not (not (= var2257 null-var2851)))) ; Negate: Cond: r1 != null  
(define-const var1051 (Array Int var2082) arr-var2082-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3810 String (getBuildSuccessfulMessage/-258980561 var3645)) ; Statement: $r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>() 
(declare-const var1051!1 (Array Int var2082))
(assert (not (= var1051!1 null-__Array__Int__var2082__)))
(assert (= (select var1051!1 0) (cast-from-String-to-var2082 var3810))) ; Statement: $r9[0] = $r10 
(define-const var3424 String (String_format/1339386452 "%n%s" var1051!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s", $r9) 
(assert true)
;(assert (append/1560614132 var1396!1 var3424)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var1396!2 String)
(assert (str.prefixof var1396!1 var1396!2))
 ; Statement: goto [?= $r12 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var87 (Array Int var2082) arr-var2082-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(define-const var591 Int var2881_currentTimeMillis/630293680) ; Statement: $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var1686 Int (startTime/1750867282 var3645)) ; Statement: $l2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: long startTime> 
(define-const var309 Int (- var591 var1686)) ; Statement: $l3 = $l1 - $l2 
(define-const var318 String (var1773_formatTime/-112437970 var309)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String formatTime(long)>($l3) 
(declare-const var87!1 (Array Int var2082))
(assert (not (= var87!1 null-__Array__Int__var2082__)))
(assert (= (select var87!1 0) (cast-from-String-to-var2082 var318))) ; Statement: $r12[0] = $r13 
(define-const var129 String (String_format/1339386452 "%nTotal time: %s" var87!1)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nTotal time: %s", $r12) 
(assert true)
;(assert (append/1560614132 var1396!2 var129)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var1396!3 String)
(assert (str.prefixof var1396!2 var1396!3))
(assert true)
(define-const var1512 String (toString/-222306083 var1396!3)) ; Statement: $r15 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: if r1 != null goto $r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err> 
(assert (not (not (= var2257 null-var2851)))) ; Negate: Cond: r1 != null  
(define-const var2602 var1809 (out/1750867282 var3645)) ; Statement: $r8 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream out> 
(assert true)
;(assert (printMessage/-1991938728 var3645 var1512 var2602 3)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r15, $r8, 3) 

(declare-const var3645!1 var1773)
(declare-const var1512!1 String)
(declare-const var2602!1 var1809)
(declare-const var962 Int)
 ; Statement: goto [?= virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/-430506474 var3645!1 var1512!1)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15) 

(declare-const var3645!2 var1773)
(declare-const var1512!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getException/-62252709=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), arr-var2082-init=([], java.lang.Object[]), getBuildSuccessfulMessage/-258980561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-String-to-var2082=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2881_currentTimeMillis/630293680=([], long), startTime/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], long), var1773_formatTime/-112437970=([long], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void), log/-430506474=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String], void)}
; {var1773=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var3645=r4, var1383=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var813=r0, var2851=java.lang.Throwable, var2257=r1, var1396=$r2, var2082=java.lang.Object, var1051=$r9, var3810=$r10, var3424=$r11, var87=$r12, var2881=java.lang.System, var591=$l1, var1686=$l2, var309=$l3, var318=$r13, var129=$r14, var1512=$r15, var1809=java.io.PrintStream, var2602=$r8, var962=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var1773, r4=var3645, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1383, r0=var813, java.lang.Throwable=var2851, r1=var2257, $r2=var1396, java.lang.Object=var2082, $r9=var1051, $r10=var3810, $r11=var3424, $r12=var87, java.lang.System=var2881, $l1=var591, $l2=var1686, $l3=var309, $r13=var318, $r14=var129, $r15=var1512, java.io.PrintStream=var1809, $r8=var2602, 3=var962}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	if r1 != null goto $r3 = newarray (java.lang.Object)[1];	$r9 = newarray (java.lang.Object)[1];	$r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>();	$r9[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s", $r9);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	goto [?= $r12 = newarray (java.lang.Object)[1]];	$r12 = newarray (java.lang.Object)[1];	$l1 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l2 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: long startTime>;	$l3 = $l1 - $l2;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String formatTime(long)>($l3);	$r12[0] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nTotal time: %s", $r12);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r15 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	if r1 != null goto $r7 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream err>;	$r8 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.io.PrintStream out>;	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r15, $r8, 3);	goto [?= virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15)];	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: void log(java.lang.String)>($r15);	return
;block_num 5