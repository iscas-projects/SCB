(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort var3841 0)
(declare-sort var3131 0)
(declare-sort var3472 0)
(declare-sort var1427 0)
(declare-sort var2243 0)
(declare-sort var3299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/-1844269783 (var3841) var3131)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getBaseDir/-1460223445 (var3131) var3472)
(declare-fun getAbsolutePath/-802773300 (var3472) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1427-init () (Array Int var1427))
(declare-fun getHeader/2121815663 (var3765) String)
(declare-fun cast-from-String-to-var1427 (String) var1427)
(declare-fun extractNameOrDefault/1765066847 (var3765 var3841) String)
(declare-fun getFooter/1688207521 (var3765) String)
(declare-fun String_format/1339386452 (String (Array Int var1427)) String)
(declare-fun out/1750867282 (var3299) var2243)
(declare-fun cast-from-var3765-to-var3299 (var3765) var3299)
(declare-fun getPriority/1213607689 (var3841) Int)
(declare-fun printMessage/-1991938728 (var3299 String var2243 Int) void)
(declare-const null-var3765 var3765)
(declare-const null-var3841 var3841)
(declare-const null-var3131 var3131)
(declare-const null-__Array__Int__var1427__ (Array Int var1427))
(declare-const var3776 var3765) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3776 null-var3765)))
(declare-const var3181 var3841) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3181 null-var3841)))
(assert true)
(define-const var653 var3131 (getProject/-1844269783 var3181)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var653 null-var3131))) ; Cond: r1 != null 
(define-const var3404 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3404)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3404!1 String)
(assert (= var3404!1 ""))
(assert true)
(define-const var1532 String (append/672562846 var3404!1 "In ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("In ") 
(declare-const var3404!2 String)
(assert (= var3404!2 (str.++ var3404!1 "In ")))
(assert true)
(define-const var526 var3472 (getBaseDir/-1460223445 var653)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>() 
(assert true)
(define-const var3692 String (getAbsolutePath/-802773300 var526)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3097 String (append/672562846 var1532 var3692)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1532!1 String)
(assert (= var1532!1 (str.++ var1532 var3692)))
(assert true)
(define-const var1257 String (toString/-2075883882 var3097)) ; Statement: $r14 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var937 (Array Int var1427) arr-var1427-init) ; Statement: $r8 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var333 String (getHeader/2121815663 var3776)) ; Statement: $r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>() 
(declare-const var937!1 (Array Int var1427))
(assert (not (= var937!1 null-__Array__Int__var1427__)))
(assert (= (select var937!1 0) (cast-from-String-to-var1427 var333))) ; Statement: $r8[0] = $r9 
(assert true)
(define-const var3017 String (extractNameOrDefault/1765066847 var3776 var3181)) ; Statement: $r10 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r0) 
(declare-const var937!2 (Array Int var1427))
(assert (not (= var937!2 null-__Array__Int__var1427__)))
(assert (= (select var937!2 1) (cast-from-String-to-var1427 var3017))) ; Statement: $r8[1] = $r10 
(declare-const var937!3 (Array Int var1427))
(assert (not (= var937!3 null-__Array__Int__var1427__)))
(assert (= (select var937!3 2) (cast-from-String-to-var1427 var1257))) ; Statement: $r8[2] = $r14 
(assert true)
(define-const var760 String (getFooter/1688207521 var3776)) ; Statement: $r11 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>() 
(declare-const var937!4 (Array Int var1427))
(assert (not (= var937!4 null-__Array__Int__var1427__)))
(assert (= (select var937!4 3) (cast-from-String-to-var1427 var760))) ; Statement: $r8[3] = $r11 
(define-const var3467 String (String_format/1339386452 "%n%s%nEntering project %s%n%s%n%s" var937!4)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nEntering project %s%n%s%n%s", $r8) 
(define-const var727 var2243 (out/1750867282 (cast-from-var3765-to-var3299 var3776))) ; Statement: $r12 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out> 
(assert true)
(define-const var1731 Int (getPriority/1213607689 var3181)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var3765-to-var3299 var3776) var3467 var727 var1731)) ; Statement: virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r13, $r12, $i0) 

(declare-const var3776!1 var3765)
(declare-const var3467!1 String)
(declare-const var727!1 var2243)
(declare-const var1731!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/-1844269783=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getBaseDir/-1460223445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1427-init=([], java.lang.Object[]), getHeader/2121815663=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), cast-from-String-to-var1427=([java.lang.String], java.lang.Object), extractNameOrDefault/1765066847=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), getFooter/1688207521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var3765-to-var3299=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void)}
; {var3765=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3776=r7, var3841=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3181=r0, var3131=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var653=r1, var3404=$r2, var1532=$r5, var3472=java.io.File, var526=$r3, var3692=$r4, var3097=$r6, var1257=$r14, var1427=java.lang.Object, var937=$r8, var333=$r9, var3017=$r10, var760=$r11, var3467=$r13, var2243=java.io.PrintStream, var3299=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var727=$r12, var1731=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var3765, r7=var3776, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var3841, r0=var3181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3131, r1=var653, $r2=var3404, $r5=var1532, java.io.File=var3472, $r3=var526, $r4=var3692, $r6=var3097, $r14=var1257, java.lang.Object=var1427, $r8=var937, $r9=var333, $r10=var3017, $r11=var760, $r13=var3467, java.io.PrintStream=var2243, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var3299, $r12=var727, $i0=var1731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("In ");	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File getBaseDir()>();	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r14 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = newarray (java.lang.Object)[4];	$r9 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getHeader()>();	$r8[0] = $r9;	$r10 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractNameOrDefault(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r0);	$r8[1] = $r10;	$r8[2] = $r14;	$r11 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getFooter()>();	$r8[3] = $r11;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s%nEntering project %s%n%s%n%s", $r8);	$r12 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>($r13, $r12, $i0);	return
;block_num 3