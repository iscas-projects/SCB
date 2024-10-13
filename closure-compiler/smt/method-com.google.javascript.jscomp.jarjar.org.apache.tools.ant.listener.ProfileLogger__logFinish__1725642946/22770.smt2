(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var3844 0)
(declare-sort var996 0)
(declare-sort var2130 0)
(declare-sort var2719 0)
(declare-sort var3713 0)
(declare-sort var1572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var996-init () var996)
(declare-fun <init>/-788057745 (var996) void)
(declare-fun getTime/1283854862 (var996) Int)
(declare-fun arr-var2719-init () (Array Int var2719))
(declare-fun cast-from-String-to-var2719 (String) var2719)
(declare-fun cast-from-var996-to-var2719 (var996) var2719)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2719 (Int) var2719)
(declare-fun String_format/1339386452 (String (Array Int var2719)) String)
(declare-fun out/1750867282 (var1572) var3713)
(declare-fun cast-from-var2546-to-var1572 (var2546) var1572)
(declare-fun getPriority/1213607689 (var3844) Int)
(declare-fun printMessage/-1991938728 (var1572 String var3713 Int) void)
(declare-fun log/-430506474 (var1572 String) void)
(declare-const null-var2546 var2546)
(declare-const null-var3844 var3844)
(declare-const null-var996 var996)
(declare-const null-String String)
(declare-const null-__Array__Int__var2719__ (Array Int var2719))
(declare-const var3621 var2546) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger 
(assert (not (= var3621 null-var2546)))
(declare-const var3673 var3844) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3673 null-var3844)))
(declare-const var1552 var996) ; Statement: r1 := @parameter1: java.util.Date 
(assert (not (= var1552 null-var996)))
(declare-const var841 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var841 null-String)))
(define-const var3501 var996 var996-init) ; Statement: $r0 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var3501)) ; Statement: specialinvoke $r0.<java.util.Date: void <init>()>() 

(declare-const var3501!1 var996)
 ; Statement: if r1 == null goto $r2 = newarray (java.lang.Object)[2] 
(assert (not (= var1552 null-var996))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2199 Int (getTime/1283854862 var3501!1)) ; Statement: $l2 = virtualinvoke $r0.<java.util.Date: long getTime()>() 
(assert true)
(define-const var3482 Int (getTime/1283854862 var1552)) ; Statement: $l1 = virtualinvoke r1.<java.util.Date: long getTime()>() 
(define-const var2421 Int (- var2199 var3482)) ; Statement: l3 = $l2 - $l1 
(define-const var1755 (Array Int var2719) arr-var2719-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(declare-const var1755!1 (Array Int var2719))
(assert (not (= var1755!1 null-__Array__Int__var2719__)))
(assert (= (select var1755!1 0) (cast-from-String-to-var2719 var841))) ; Statement: $r7[0] = r3 
(declare-const var1755!2 (Array Int var2719))
(assert (not (= var1755!2 null-__Array__Int__var2719__)))
(assert (= (select var1755!2 1) (cast-from-var996-to-var2719 var3501!1))) ; Statement: $r7[1] = $r0 
(define-const var3446 Int (Int_valueOf/-1102777585 var2421)) ; Statement: $r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3) 
(declare-const var1755!3 (Array Int var2719))
(assert (not (= var1755!3 null-__Array__Int__var2719__)))
(assert (= (select var1755!3 2) (cast-from-Int-to-var2719 var3446))) ; Statement: $r7[2] = $r8 
(define-const var3257 String (String_format/1339386452 "%n%s: finished %s (%d)" var1755!3)) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: finished %s (%d)", $r7) 
 ; Statement: goto [?= $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out>] 
(assert true) ; Non Conditional
(define-const var604 var3713 (out/1750867282 (cast-from-var2546-to-var1572 var3621))) ; Statement: $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out> 
(assert true)
(define-const var2093 Int (getPriority/1213607689 var3673)) ; Statement: $i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (printMessage/-1991938728 (cast-from-var2546-to-var1572 var3621) var3257 var604 var2093)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r9, $r6, $i0) 

(declare-const var3621!1 var2546)
(declare-const var3257!1 String)
(declare-const var604!1 var3713)
(declare-const var2093!1 Int)
(assert true)
;(assert (log/-430506474 (cast-from-var2546-to-var1572 var3621!1) var3257!1)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r9) 

(declare-const var3621!2 var2546)
(declare-const var3257!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var996-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), getTime/1283854862=([java.util.Date], long), arr-var2719-init=([], java.lang.Object[]), cast-from-String-to-var2719=([java.lang.String], java.lang.Object), cast-from-var996-to-var2719=([java.util.Date], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2719=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), out/1750867282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.io.PrintStream), cast-from-var2546-to-var1572=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int), printMessage/-1991938728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String, java.io.PrintStream, int], void), log/-430506474=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, java.lang.String], void)}
; {var2546=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, var3621=r4, var3844=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3673=r5, var996=java.util.Date, var1552=r1, var841=r3, var2130=null_type, var3501=$r0, var2199=$l2, var3482=$l1, var2421=l3, var2719=java.lang.Object, var1755=$r7, var3446=$r8, var3257=r9, var3713=java.io.PrintStream, var1572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var604=$r6, var2093=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger=var2546, r4=var3621, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var3844, r5=var3673, java.util.Date=var996, r1=var1552, r3=var841, null_type=var2130, $r0=var3501, $l2=var2199, $l1=var3482, l3=var2421, java.lang.Object=var2719, $r7=var1755, $r8=var3446, r9=var3257, java.io.PrintStream=var3713, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var1572, $r6=var604, $i0=var2093}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger;	r5 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r1 := @parameter1: java.util.Date;	r3 := @parameter2: java.lang.String;	$r0 = new java.util.Date;	specialinvoke $r0.<java.util.Date: void <init>()>();	if r1 == null goto $r2 = newarray (java.lang.Object)[2];	$l2 = virtualinvoke $r0.<java.util.Date: long getTime()>();	$l1 = virtualinvoke r1.<java.util.Date: long getTime()>();	l3 = $l2 - $l1;	$r7 = newarray (java.lang.Object)[3];	$r7[0] = r3;	$r7[1] = $r0;	$r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l3);	$r7[2] = $r8;	r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s: finished %s (%d)", $r7);	goto [?= $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out>];	$r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.io.PrintStream out>;	$i0 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void printMessage(java.lang.String,java.io.PrintStream,int)>(r9, $r6, $i0);	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void log(java.lang.String)>(r9);	return
;block_num 3