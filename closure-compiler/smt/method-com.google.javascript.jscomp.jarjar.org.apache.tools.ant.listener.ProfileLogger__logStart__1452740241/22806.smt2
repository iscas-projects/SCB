(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var757 0)
(declare-sort var152 0)
(declare-sort var3949 0)
(declare-sort var1274 0)
(declare-sort var1264 0)
(declare-sort var3299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1274-init () (Array Int var1274))
(declare-fun cast-from-String-to-var1274 (String) var1274)
(declare-fun cast-from-var152-to-var1274 (var152) var1274)
(declare-fun String_format/1339386452 (String (Array Int var1274)) String)
(declare-fun out/1750867282 (var3299) var1264)
(declare-fun cast-from-var3678-to-var3299 (var3678) var3299)
(declare-fun getPriority/1213607689 (var757) Int)
(declare-fun printMessage/-1991938728 (var3299 String var1264 Int) void)
(declare-fun log/-430506474 (var3299 String) void)
(declare-const null-var3678 var3678)
(declare-const null-var757 var757)
(declare-const null-var152 var152)
(declare-const null-String String)
(declare-const null-__Array__Int__var1274__ (Array Int var1274))
(declare-const var449 var3678) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger 
(assert (not (= var449 null-var3678)))
(declare-const var1617 var757) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var1617 null-var757)))
(declare-const var1700 var152) ; Statement: r2 := @parameter1: java.util.Date 
(assert (not (= var1700 null-var152)))
(declare-const var2250 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2250 null-String)))
(define-const var1310 (Array Int var1274) arr-var1274-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(declare-const var1310!1 (Array Int var1274))
(assert (not (= var1310!1 null-__Array__Int__var1274__)))
(assert (= (select var1310!1 0) (cast-from-String-to-var1274 var2250))) ; Statement: $r0[0] = r1 
(declare-const var1310!2 (Array Int var1274))
(assert (not (= var1310!2 null-__Array__Int__var1274__)))
(assert (= (select var1310!2 1) (cast-from-var152-to-var1274 var1700))) ; Statement: $r0[1] = r2 
(define-const var188 String (String_format/1339386452 "%n%s: started %s" var1310!2)) ; Statement: r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: started %s", $r0) 
(define-const var1393 var1264 (out/1750867282 (cast-from-var3678-to-var3299 var449))) ; Statement: $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out> 
(assert true)
(define-const var3835 Int (getPriority/1213607689 var1617)) ; Statement: $i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var3678-to-var3299 var449) var188 var1393 var3835)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r3, $r6, $i0) 

(declare-const var449!1 var3678)
(declare-const var188!1 String)
(declare-const var1393!1 var1264)
(declare-const var3835!1 Int)
(assert true)
;(assert (log/-430506474 (cast-from-var3678-to-var3299 var449!1) var188!1)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r3) 

(declare-const var449!2 var3678)
(declare-const var188!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1274-init=([], java.lang.Object[]), cast-from-String-to-var1274=([java.lang.String], java.lang.Object), cast-from-var152-to-var1274=([java.util.Date], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var3678-to-var3299=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void), log/-430506474=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String], void)}
; {var3678=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, var449=r4, var757=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var1617=r5, var152=java.util.Date, var1700=r2, var2250=r1, var3949=null_type, var1274=java.lang.Object, var1310=$r0, var188=r3, var1264=java.io.PrintStream, var3299=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var1393=$r6, var3835=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger=var3678, r4=var449, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var757, r5=var1617, java.util.Date=var152, r2=var1700, r1=var2250, null_type=var3949, java.lang.Object=var1274, $r0=var1310, r3=var188, java.io.PrintStream=var1264, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var3299, $r6=var1393, $i0=var3835}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r2 := @parameter1: java.util.Date;	r1 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.Object)[2];	$r0[0] = r1;	$r0[1] = r2;	r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: started %s", $r0);	$r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r3, $r6, $i0);	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r3);	return
;block_num 1