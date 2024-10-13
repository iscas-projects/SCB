(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1638 0)
(declare-sort var1088 0)
(declare-sort var1277 0)
(declare-sort var2235 0)
(declare-sort var2227 0)
(declare-sort var3228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1277-init () (Array Int var1277))
(declare-fun getHeader/2121815663 (var1638) String)
(declare-fun cast-from-String-to-var1277 (String) var1277)
(declare-fun getException/-62252709 (var1088) var2235)
(declare-fun extractNameOrDefault/1765066847 (var1638 var1088) String)
(declare-fun getFooter/1688207521 (var1638) String)
(declare-fun String_format/1339386452 (String (Array Int var1277)) String)
(declare-fun out/1750867282 (var3228) var2227)
(declare-fun cast-from-var1638-to-var3228 (var1638) var3228)
(declare-fun getPriority/1213607689 (var1088) Int)
(declare-fun printMessage/-1991938728 (var3228 String var2227 Int) void)
(declare-const null-var1638 var1638)
(declare-const null-var1088 var1088)
(declare-const null-__Array__Int__var1277__ (Array Int var1277))
(declare-const null-var2235 var2235)
(declare-const var3951 var1638) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3951 null-var1638)))
(declare-const var1826 var1088) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var1826 null-var1088)))
(define-const var828 (Array Int var1277) arr-var1277-init) ; Statement: $r1 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1978 String (getHeader/2121815663 var3951)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>() 
(declare-const var828!1 (Array Int var1277))
(assert (not (= var828!1 null-__Array__Int__var1277__)))
(assert (= (select var828!1 0) (cast-from-String-to-var1277 var1978))) ; Statement: $r1[0] = $r2 
(assert true)
(define-const var973 var2235 (getException/-62252709 var1826)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>() 
 ; Statement: if $r4 == null goto $r9 = "" 
(assert (not (= var973 null-var2235))) ; Negate: Cond: $r4 == null  
(define-const var1661 String "failing ") ; Statement: $r9 = "failing " 
 ; Statement: goto [?= $r1[1] = $r9] 
(assert true) ; Non Conditional
(declare-const var828!2 (Array Int var1277))
(assert (not (= var828!2 null-__Array__Int__var1277__)))
(assert (= (select var828!2 1) (cast-from-String-to-var1277 var1661))) ; Statement: $r1[1] = $r9 
(assert true)
(define-const var3501 String (extractNameOrDefault/1765066847 var3951 var1826)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r3) 
(declare-const var828!3 (Array Int var1277))
(assert (not (= var828!3 null-__Array__Int__var1277__)))
(assert (= (select var828!3 2) (cast-from-String-to-var1277 var3501))) ; Statement: $r1[2] = $r5 
(assert true)
(define-const var3983 String (getFooter/1688207521 var3951)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>() 
(declare-const var828!4 (Array Int var1277))
(assert (not (= var828!4 null-__Array__Int__var1277__)))
(assert (= (select var828!4 3) (cast-from-String-to-var1277 var3983))) ; Statement: $r1[3] = $r6 
(define-const var2413 String (String_format/1339386452 "%n%s%nExiting %sproject %s%n%s" var828!4)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nExiting %sproject %s%n%s", $r1) 
(define-const var2553 var2227 (out/1750867282 (cast-from-var1638-to-var3228 var3951))) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out> 
(assert true)
(define-const var2638 Int (getPriority/1213607689 var1826)) ; Statement: $i0 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var1638-to-var3228 var3951) var2413 var2553 var2638)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r8, $r7, $i0) 

(declare-const var3951!1 var1638)
(declare-const var2413!1 String)
(declare-const var2553!1 var2227)
(declare-const var2638!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1277-init=([], java.lang.Object[]), getHeader/2121815663=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), cast-from-String-to-var1277=([java.lang.String], java.lang.Object), getException/-62252709=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.Throwable), extractNameOrDefault/1765066847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), getFooter/1688207521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var1638-to-var3228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void)}
; {var1638=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3951=r0, var1088=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var1826=r3, var1277=java.lang.Object, var828=$r1, var1978=$r2, var2235=java.lang.Throwable, var973=$r4, var1661=$r9, var3501=$r5, var3983=$r6, var2413=$r8, var2227=java.io.PrintStream, var3228=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var2553=$r7, var2638=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var1638, r0=var3951, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1088, r3=var1826, java.lang.Object=var1277, $r1=var828, $r2=var1978, java.lang.Throwable=var2235, $r4=var973, $r9=var1661, $r5=var3501, $r6=var3983, $r8=var2413, java.io.PrintStream=var2227, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var3228, $r7=var2553, $i0=var2638}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>();	$r1[0] = $r2;	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.Throwable getException()>();	if $r4 == null goto $r9 = "";	$r9 = "failing ";	goto [?= $r1[1] = $r9];	$r1[1] = $r9;	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r3);	$r1[2] = $r5;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>();	$r1[3] = $r6;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nExiting %sproject %s%n%s", $r1);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r8, $r7, $i0);	return
;block_num 3