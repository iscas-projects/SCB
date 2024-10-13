(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var242 0)
(declare-sort var2459 0)
(declare-sort var3969 0)
(declare-sort var2042 0)
(declare-sort var195 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3969-init () (Array Int var3969))
(declare-fun getHeader/2121815663 (var242) String)
(declare-fun cast-from-String-to-var3969 (String) var3969)
(declare-fun getException/-62252709 (var2459) var2042)
(declare-fun extractNameOrDefault/1765066847 (var242 var2459) String)
(declare-fun getFooter/1688207521 (var242) String)
(declare-fun String_format/1339386452 (String (Array Int var3969)) String)
(declare-fun out/1750867282 (var2414) var195)
(declare-fun cast-from-var242-to-var2414 (var242) var2414)
(declare-fun getPriority/1213607689 (var2459) Int)
(declare-fun printMessage/-1991938728 (var2414 String var195 Int) void)
(declare-const null-var242 var242)
(declare-const null-var2459 var2459)
(declare-const null-__Array__Int__var3969__ (Array Int var3969))
(declare-const null-var2042 var2042)
(declare-const var3959 var242) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3959 null-var242)))
(declare-const var677 var2459) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var677 null-var2459)))
(define-const var580 (Array Int var3969) arr-var3969-init) ; Statement: $r1 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var3852 String (getHeader/2121815663 var3959)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>() 
(declare-const var580!1 (Array Int var3969))
(assert (not (= var580!1 null-__Array__Int__var3969__)))
(assert (= (select var580!1 0) (cast-from-String-to-var3969 var3852))) ; Statement: $r1[0] = $r2 
(assert true)
(define-const var3379 var2042 (getException/-62252709 var677)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>() 
 ; Statement: if $r4 == null goto $r9 = "" 
(assert (= var3379 null-var2042)) ; Cond: $r4 == null 
(define-const var2892 String "") ; Statement: $r9 = "" 
(assert true) ; Non Conditional
(declare-const var580!2 (Array Int var3969))
(assert (not (= var580!2 null-__Array__Int__var3969__)))
(assert (= (select var580!2 1) (cast-from-String-to-var3969 var2892))) ; Statement: $r1[1] = $r9 
(assert true)
(define-const var2980 String (extractNameOrDefault/1765066847 var3959 var677)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r3) 
(declare-const var580!3 (Array Int var3969))
(assert (not (= var580!3 null-__Array__Int__var3969__)))
(assert (= (select var580!3 2) (cast-from-String-to-var3969 var2980))) ; Statement: $r1[2] = $r5 
(assert true)
(define-const var1930 String (getFooter/1688207521 var3959)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>() 
(declare-const var580!4 (Array Int var3969))
(assert (not (= var580!4 null-__Array__Int__var3969__)))
(assert (= (select var580!4 3) (cast-from-String-to-var3969 var1930))) ; Statement: $r1[3] = $r6 
(define-const var1532 String (String_format/1339386452 "%n%s%nExiting %sproject %s%n%s" var580!4)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nExiting %sproject %s%n%s", $r1) 
(define-const var1362 var195 (out/1750867282 (cast-from-var242-to-var2414 var3959))) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out> 
(assert true)
(define-const var727 Int (getPriority/1213607689 var677)) ; Statement: $i0 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var242-to-var2414 var3959) var1532 var1362 var727)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r8, $r7, $i0) 

(declare-const var3959!1 var242)
(declare-const var1532!1 String)
(declare-const var1362!1 var195)
(declare-const var727!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3969-init=([], java.lang.Object[]), getHeader/2121815663=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), cast-from-String-to-var3969=([java.lang.String], java.lang.Object), getException/-62252709=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.Throwable), extractNameOrDefault/1765066847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), getFooter/1688207521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var242-to-var2414=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void)}
; {var242=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3959=r0, var2459=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var677=r3, var3969=java.lang.Object, var580=$r1, var3852=$r2, var2042=java.lang.Throwable, var3379=$r4, var2892=$r9, var2980=$r5, var1930=$r6, var1532=$r8, var195=java.io.PrintStream, var2414=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var1362=$r7, var727=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var242, r0=var3959, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var2459, r3=var677, java.lang.Object=var3969, $r1=var580, $r2=var3852, java.lang.Throwable=var2042, $r4=var3379, $r9=var2892, $r5=var2980, $r6=var1930, $r8=var1532, java.io.PrintStream=var195, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var2414, $r7=var1362, $i0=var727}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>();	$r1[0] = $r2;	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>();	if $r4 == null goto $r9 = "";	$r9 = "";	$r1[1] = $r9;	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r3);	$r1[2] = $r5;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>();	$r1[3] = $r6;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nExiting %sproject %s%n%s", $r1);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r8, $r7, $i0);	return
;block_num 3