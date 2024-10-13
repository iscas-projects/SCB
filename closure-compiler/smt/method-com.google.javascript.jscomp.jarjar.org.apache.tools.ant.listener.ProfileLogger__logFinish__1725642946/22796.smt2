(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2843 0)
(declare-sort var1229 0)
(declare-sort var3729 0)
(declare-sort var2566 0)
(declare-sort var805 0)
(declare-sort var1485 0)
(declare-sort var2246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3729-init () var3729)
(declare-fun <init>/-788057745 (var3729) void)
(declare-fun arr-var805-init () (Array Int var805))
(declare-fun cast-from-String-to-var805 (String) var805)
(declare-fun cast-from-var3729-to-var805 (var3729) var805)
(declare-fun String_format/1339386452 (String (Array Int var805)) String)
(declare-fun out/1750867282 (var2246) var1485)
(declare-fun cast-from-var2843-to-var2246 (var2843) var2246)
(declare-fun getPriority/1213607689 (var1229) Int)
(declare-fun printMessage/-1991938728 (var2246 String var1485 Int) void)
(declare-fun log/-430506474 (var2246 String) void)
(declare-const null-var2843 var2843)
(declare-const null-var1229 var1229)
(declare-const null-var3729 var3729)
(declare-const null-String String)
(declare-const null-__Array__Int__var805__ (Array Int var805))
(declare-const var1042 var2843) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger 
(assert (not (= var1042 null-var2843)))
(declare-const var2415 var1229) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var2415 null-var1229)))
(declare-const var3274 var3729) ; Statement: r1 := @parameter1: java.util.Date 
(assert (not (= var3274 null-var3729)))
(declare-const var179 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var179 null-String)))
(define-const var1710 var3729 var3729-init) ; Statement: $r0 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var1710)) ; Statement: specialinvoke $r0.<java.util.Date: void <init>()>() 

(declare-const var1710!1 var3729)
 ; Statement: if r1 == null goto $r2 = newarray (java.lang.Object)[2] 
(assert (= var3274 null-var3729)) ; Cond: r1 == null 
(define-const var3983 (Array Int var805) arr-var805-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(declare-const var3983!1 (Array Int var805))
(assert (not (= var3983!1 null-__Array__Int__var805__)))
(assert (= (select var3983!1 0) (cast-from-String-to-var805 var179))) ; Statement: $r2[0] = r3 
(declare-const var3983!2 (Array Int var805))
(assert (not (= var3983!2 null-__Array__Int__var805__)))
(assert (= (select var3983!2 1) (cast-from-var3729-to-var805 var1710!1))) ; Statement: $r2[1] = $r0 
(define-const var1968 String (String_format/1339386452 "%n%s: finished %s (unknown duration, start not detected)" var3983!2)) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: finished %s (unknown duration, start not detected)", $r2) 
(assert true) ; Non Conditional
(define-const var2343 var1485 (out/1750867282 (cast-from-var2843-to-var2246 var1042))) ; Statement: $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out> 
(assert true)
(define-const var742 Int (getPriority/1213607689 var2415)) ; Statement: $i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var2843-to-var2246 var1042) var1968 var2343 var742)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r9, $r6, $i0) 

(declare-const var1042!1 var2843)
(declare-const var1968!1 String)
(declare-const var2343!1 var1485)
(declare-const var742!1 Int)
(assert true)
;(assert (log/-430506474 (cast-from-var2843-to-var2246 var1042!1) var1968!1)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r9) 

(declare-const var1042!2 var2843)
(declare-const var1968!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3729-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), arr-var805-init=([], java.lang.Object[]), cast-from-String-to-var805=([java.lang.String], java.lang.Object), cast-from-var3729-to-var805=([java.util.Date], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var2843-to-var2246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void), log/-430506474=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String], void)}
; {var2843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, var1042=r4, var1229=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var2415=r5, var3729=java.util.Date, var3274=r1, var179=r3, var2566=null_type, var1710=$r0, var805=java.lang.Object, var3983=$r2, var1968=r9, var1485=java.io.PrintStream, var2246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var2343=$r6, var742=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger=var2843, r4=var1042, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1229, r5=var2415, java.util.Date=var3729, r1=var3274, r3=var179, null_type=var2566, $r0=var1710, java.lang.Object=var805, $r2=var3983, r9=var1968, java.io.PrintStream=var1485, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var2246, $r6=var2343, $i0=var742}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 := @parameter1: java.util.Date;	r3 := @parameter2: java.lang.String;	$r0 = new java.util.Date;	specialinvoke $r0.<java.util.Date: void <init>()>();	if r1 == null goto $r2 = newarray (java.lang.Object)[2];	$r2 = newarray (java.lang.Object)[2];	$r2[0] = r3;	$r2[1] = $r0;	r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: finished %s (unknown duration, start not detected)", $r2);	$r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r9, $r6, $i0);	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r9);	return
;block_num 3