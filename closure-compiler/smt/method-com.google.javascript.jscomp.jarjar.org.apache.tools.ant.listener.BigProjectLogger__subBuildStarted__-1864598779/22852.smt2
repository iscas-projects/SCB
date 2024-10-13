(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort var1818 0)
(declare-sort var705 0)
(declare-sort var612 0)
(declare-sort var1809 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-1844269783 (var1818) var705)
(declare-fun arr-var612-init () (Array Int var612))
(declare-fun getHeader/2121815663 (var349) String)
(declare-fun cast-from-String-to-var612 (String) var612)
(declare-fun extractNameOrDefault/1765066847 (var349 var1818) String)
(declare-fun getFooter/1688207521 (var349) String)
(declare-fun String_format/1339386452 (String (Array Int var612)) String)
(declare-fun out/1750867282 (var3244) var1809)
(declare-fun cast-from-var349-to-var3244 (var349) var3244)
(declare-fun getPriority/1213607689 (var1818) Int)
(declare-fun printMessage/-1991938728 (var3244 String var1809 Int) void)
(declare-const null-var349 var349)
(declare-const null-var1818 var1818)
(declare-const null-var705 var705)
(declare-const null-__Array__Int__var612__ (Array Int var612))
(declare-const var3429 var349) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3429 null-var349)))
(declare-const var2469 var1818) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var2469 null-var1818)))
(assert true)
(define-const var27 var705 (getProject/-1844269783 var2469)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var27 null-var705)))) ; Negate: Cond: r1 != null  
(define-const var3502 String "With no base directory") ; Statement: $r14 = "With no base directory" 
 ; Statement: goto [?= $r8 = newarray (java.lang.Object)[4]] 
(assert true) ; Non Conditional
(define-const var490 (Array Int var612) arr-var612-init) ; Statement: $r8 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var2185 String (getHeader/2121815663 var3429)) ; Statement: $r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>() 
(declare-const var490!1 (Array Int var612))
(assert (not (= var490!1 null-__Array__Int__var612__)))
(assert (= (select var490!1 0) (cast-from-String-to-var612 var2185))) ; Statement: $r8[0] = $r9 
(assert true)
(define-const var3407 String (extractNameOrDefault/1765066847 var3429 var2469)) ; Statement: $r10 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r0) 
(declare-const var490!2 (Array Int var612))
(assert (not (= var490!2 null-__Array__Int__var612__)))
(assert (= (select var490!2 1) (cast-from-String-to-var612 var3407))) ; Statement: $r8[1] = $r10 
(declare-const var490!3 (Array Int var612))
(assert (not (= var490!3 null-__Array__Int__var612__)))
(assert (= (select var490!3 2) (cast-from-String-to-var612 var3502))) ; Statement: $r8[2] = $r14 
(assert true)
(define-const var669 String (getFooter/1688207521 var3429)) ; Statement: $r11 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>() 
(declare-const var490!4 (Array Int var612))
(assert (not (= var490!4 null-__Array__Int__var612__)))
(assert (= (select var490!4 3) (cast-from-String-to-var612 var669))) ; Statement: $r8[3] = $r11 
(define-const var2579 String (String_format/1339386452 "%n%s%nEntering project %s%n%s%n%s" var490!4)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nEntering project %s%n%s%n%s", $r8) 
(define-const var524 var1809 (out/1750867282 (cast-from-var349-to-var3244 var3429))) ; Statement: $r12 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out> 
(assert true)
(define-const var701 Int (getPriority/1213607689 var2469)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var349-to-var3244 var3429) var2579 var524 var701)) ; Statement: virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r13, $r12, $i0) 

(declare-const var3429!1 var349)
(declare-const var2579!1 String)
(declare-const var524!1 var1809)
(declare-const var701!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-1844269783=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), arr-var612-init=([], java.lang.Object[]), getHeader/2121815663=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), cast-from-String-to-var612=([java.lang.String], java.lang.Object), extractNameOrDefault/1765066847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), getFooter/1688207521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var349-to-var3244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void)}
; {var349=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3429=r7, var1818=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var2469=r0, var705=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var27=r1, var3502=$r14, var612=java.lang.Object, var490=$r8, var2185=$r9, var3407=$r10, var669=$r11, var2579=$r13, var1809=java.io.PrintStream, var3244=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var524=$r12, var701=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var349, r7=var3429, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1818, r0=var2469, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var705, r1=var27, $r14=var3502, java.lang.Object=var612, $r8=var490, $r9=var2185, $r10=var3407, $r11=var669, $r13=var2579, java.io.PrintStream=var1809, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var3244, $r12=var524, $i0=var701}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if r1 != null goto $r2 = new java.lang.StringBuilder;	$r14 = "With no base directory";	goto [?= $r8 = newarray (java.lang.Object)[4]];	$r8 = newarray (java.lang.Object)[4];	$r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>();	$r8[0] = $r9;	$r10 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r0);	$r8[1] = $r10;	$r8[2] = $r14;	$r11 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>();	$r8[3] = $r11;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nEntering project %s%n%s%n%s", $r8);	$r12 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r13, $r12, $i0);	return
;block_num 3