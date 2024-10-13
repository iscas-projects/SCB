(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2526 0)
(declare-sort var3299 0)
(declare-sort var643 0)
(declare-sort var2162 0)
(declare-sort var1221 0)
(declare-sort var2612 0)
(declare-sort var1116 0)
(declare-sort var1097 0)
(declare-sort var3180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2526-init () var2526)
(declare-fun var643_asList/1779083644 ((Array Int var2162)) var3299)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2162__ ((Array Int String)) (Array Int var2162))
(declare-fun <init>/-1446325642 (var2526 var1221) void)
(declare-fun cast-from-var3299-to-var1221 (var3299) var1221)
(declare-fun var1221_isEmpty/-1652560782 (var1221) Bool)
(declare-fun cast-from-var2526-to-var1221 (var2526) var1221)
(declare-fun var2612_remove/-1045534506 (var2612) var2162)
(declare-fun cast-from-var2526-to-var2612 (var2526) var2612)
(declare-fun cast-from-var2162-to-String (var2162) String)
(declare-fun var1116_getCommands/-1250253466 () var3299)
(declare-fun var3299_iterator/-912451715 (var3299) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1097 String) void)
(declare-fun println/-898436193 (var1097) void)
(declare-fun var1116_displayAvailableCommands/-54987682 (var1097) void)
(declare-fun var3180_exit/142839841 (Int) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3180-err var1097)
(declare-const var1705 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var1705 null-__Array__Int__String__)))
(define-const var1786 var2526 var2526-init) ; Statement: $r0 = new java.util.LinkedList 
(define-const var3286 var3299 (var643_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var2162__ var1705))) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1) 
(assert true)
;(assert (<init>/-1446325642 var1786 (cast-from-var3299-to-var1221 var3286))) ; Statement: specialinvoke $r0.<java.util.LinkedList: void <init>(java.util.Collection)>($r2) 

(declare-const var1786!1 var2526)
(declare-const var3286!1 var3299)
(define-const var1874 Bool (var1221_isEmpty/-1652560782 (cast-from-var2526-to-var1221 var1786!1))) ; Statement: $z0 = interfaceinvoke $r0.<java.util.Deque: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke $r0.<java.util.Deque: java.lang.Object remove()>() 
(assert (= (ite var1874 1 0) 0)) ; Cond: $z0 == 0 
(define-const var816 var2162 (var2612_remove/-1045534506 (cast-from-var2526-to-var2612 var1786!1))) ; Statement: $r3 = interfaceinvoke $r0.<java.util.Deque: java.lang.Object remove()>() 
(define-const var3284 String (cast-from-var2162-to-String var816)) ; Statement: $r50 = (java.lang.String) $r3 
(define-const var2985 var3299 var1116_getCommands/-1250253466) ; Statement: $r4 = staticinvoke <jdk.jfr.internal.tool.Command: java.util.List getCommands()>() 
(define-const var1788 Iterator (var3299_iterator/-912451715 var2985)) ; Statement: $r51 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3100 Bool (Iterator_hasNext/-1669924200 var1788)) ; Statement: $z2 = interfaceinvoke $r51.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r6 = <java.lang.System: java.io.PrintStream err> 
(assert (= (ite var3100 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3217 var1097 var3180-err) ; Statement: $r6 = <java.lang.System: java.io.PrintStream err> 
(define-const var2937 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2937)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2937!1 String)
(assert (= var2937!1 ""))
(assert true)
(define-const var945 String (append/672562846 var2937!1 "jfr: unknown command \u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jfr: unknown command \'") 
(declare-const var2937!2 String)
(assert (= var2937!2 (str.++ var2937!1 "jfr: unknown command \u0027")))
(assert true)
(define-const var3367 String (append/672562846 var945 var3284)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50) 
(declare-const var945!1 String)
(assert (= var945!1 (str.++ var945 var3284)))
(assert true)
(define-const var2983 String (append/672562846 var3367 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3367!1 String)
(assert (= var3367!1 (str.++ var3367 "\u0027")))
(assert true)
(define-const var2076 String (toString/-2075883882 var2983)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3217 var2076)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var3217!1 var1097)
(declare-const var2076!1 String)
(define-const var3572 var1097 var3180-err) ; Statement: $r11 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/-898436193 var3572)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println()>() 

(declare-const var3572!1 var1097)
(define-const var3246 var1097 var3180-err) ; Statement: $r12 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3246 "List of available commands:")) ; Statement: virtualinvoke $r12.<java.io.PrintStream: void println(java.lang.String)>("List of available commands:") 

(declare-const var3246!1 var1097)
(declare-const var3622 String)
(define-const var3585 var1097 var3180-err) ; Statement: $r13 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/-898436193 var3585)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println()>() 

(declare-const var3585!1 var1097)
(define-const var2566 var1097 var3180-err) ; Statement: $r14 = <java.lang.System: java.io.PrintStream err> 
;(assert (var1116_displayAvailableCommands/-54987682 var2566)) ; Statement: staticinvoke <jdk.jfr.internal.tool.Command: void displayAvailableCommands(java.io.PrintStream)>($r14) 

(declare-const var2566!1 var1097)
;(assert (var3180_exit/142839841 2)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(2) 

(declare-const var3707 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2526-init=([], java.util.LinkedList), var643_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var2162__=([java.lang.String[]], java.lang.Object[]), <init>/-1446325642=([java.util.LinkedList, java.util.Collection], void), cast-from-var3299-to-var1221=([java.util.List], java.util.Collection), var1221_isEmpty/-1652560782=([java.util.Collection], boolean), cast-from-var2526-to-var1221=([java.util.LinkedList], java.util.Collection), var2612_remove/-1045534506=([java.util.Deque], java.lang.Object), cast-from-var2526-to-var2612=([java.util.LinkedList], java.util.Deque), cast-from-var2162-to-String=([java.lang.Object], java.lang.String), var1116_getCommands/-1250253466=([], java.util.List), var3299_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), println/-898436193=([java.io.PrintStream], void), var1116_displayAvailableCommands/-54987682=([java.io.PrintStream], void), var3180_exit/142839841=([int], void)}
; {var1705=r1, var2526=java.util.LinkedList, var1786=$r0, var3299=java.util.List, var643=java.util.Arrays, var2162=java.lang.Object, var3286=$r2, var1221=java.util.Collection, var1874=$z0, var2612=java.util.Deque, var816=$r3, var3284=$r50, var1116=jdk.jfr.internal.tool.Command, var2985=$r4, var1788=$r51, var3100=$z2, var1097=java.io.PrintStream, var3180=java.lang.System, var3217=$r6, var2937=$r5, var945=$r7, var3367=$r8, var2983=$r9, var2076=$r10, var3572=$r11, var3246=$r12, var3622="List of available commands:", var3585=$r13, var2566=$r14, var3707=2}
; {r1=var1705, java.util.LinkedList=var2526, $r0=var1786, java.util.List=var3299, java.util.Arrays=var643, java.lang.Object=var2162, $r2=var3286, java.util.Collection=var1221, $z0=var1874, java.util.Deque=var2612, $r3=var816, $r50=var3284, jdk.jfr.internal.tool.Command=var1116, $r4=var2985, $r51=var1788, $z2=var3100, java.io.PrintStream=var1097, java.lang.System=var3180, $r6=var3217, $r5=var2937, $r7=var945, $r8=var3367, $r9=var2983, $r10=var2076, $r11=var3572, $r12=var3246, "List of available commands:"=var3622, $r13=var3585, $r14=var2566, 2=var3707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String[];	$r0 = new java.util.LinkedList;	$r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r1);	specialinvoke $r0.<java.util.LinkedList: void <init>(java.util.Collection)>($r2);	$z0 = interfaceinvoke $r0.<java.util.Deque: boolean isEmpty()>();	if $z0 == 0 goto $r3 = interfaceinvoke $r0.<java.util.Deque: java.lang.Object remove()>();	$r3 = interfaceinvoke $r0.<java.util.Deque: java.lang.Object remove()>();	$r50 = (java.lang.String) $r3;	$r4 = staticinvoke <jdk.jfr.internal.tool.Command: java.util.List getCommands()>();	$r51 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r51.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r6 = <java.lang.System: java.io.PrintStream err>;	$r6 = <java.lang.System: java.io.PrintStream err>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jfr: unknown command \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r10);	$r11 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r11.<java.io.PrintStream: void println()>();	$r12 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r12.<java.io.PrintStream: void println(java.lang.String)>("List of available commands:");	$r13 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r13.<java.io.PrintStream: void println()>();	$r14 = <java.lang.System: java.io.PrintStream err>;	staticinvoke <jdk.jfr.internal.tool.Command: void displayAvailableCommands(java.io.PrintStream)>($r14);	staticinvoke <java.lang.System: void exit(int)>(2);	return
;block_num 4