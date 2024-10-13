(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1835 0)
(declare-sort var554 0)
(declare-sort var3874 0)
(declare-sort var1531 0)
(declare-sort var3014 0)
(declare-sort var2023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1835_getProperty/258823597 (String) String)
(declare-fun println/1773605060 (var1531 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1835_exit/142839841 (Int) void)
(declare-fun printStackTrace/885456489 (var2023) void)
(declare-fun cast-from-var3014-to-var2023 (var3014) var2023)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var554 var554)
(declare-const null-String String)
(declare-const var1835-err var1531)
(declare-const null-var3014 var3014)
(declare-const var2491 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var2491 null-__Array__Int__String__)))
(define-const var3164 String (var1835_getProperty/258823597 "mainclass")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass") 
(define-const var1237 var554 null-var554) ; Statement: r34 = null 
(define-const var1900 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1206 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
 ; Statement: if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (= var3164 null-String)) ; Cond: r0 == null 
(define-const var2732 var1531 var1835-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var2732 "The system property \u0027mainclass\u0027 must contain the classname to start.")) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("The system property \'mainclass\' must contain the classname to start.") 

(declare-const var2732!1 var1531)
(declare-const var2091 String)
(define-const var3581 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
;(assert (var1835_exit/142839841 var3581)) ; Statement: staticinvoke <java.lang.System: void exit(int)>($i1) 

(declare-const var3581!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1632 var3014) ; Statement: $r6 := @caughtexception 
(assert (not (= var1632 null-var3014)))
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var3014-to-var2023 var1632))) ; Statement: virtualinvoke $r6.<java.lang.Exception: void printStackTrace()>() 

(declare-const var1632!1 var3014)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1835_getProperty/258823597=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), cast-from-Int-to-Int=([int], int), var1835_exit/142839841=([int], void), printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var3014-to-var2023=([java.lang.Exception], java.lang.Throwable)}
; {var2491=r2, var1835=java.lang.System, var3164=r0, var554=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var1237=r34, var1900=z1, var1206=z2, var3874=null_type, var1531=java.io.PrintStream, var2732=$r1, var2091="The system property \'mainclass\' must contain the classname to start.", var3581=$i1, var3014=java.lang.Exception, var1632=$r6, var2023=java.lang.Throwable}
; {r2=var2491, java.lang.System=var1835, r0=var3164, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var554, r34=var1237, z1=var1900, z2=var1206, null_type=var3874, java.io.PrintStream=var1531, $r1=var2732, "The system property \'mainclass\' must contain the classname to start."=var2091, $i1=var3581, java.lang.Exception=var3014, $r6=var1632, java.lang.Throwable=var2023}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass");	r34 = null;	z1 = 0;	z2 = 0;	if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>("The system property \'mainclass\' must contain the classname to start.");	$i1 = (int) -1;	staticinvoke <java.lang.System: void exit(int)>($i1);	$r6 := @caughtexception;	virtualinvoke $r6.<java.lang.Exception: void printStackTrace()>();	return
;block_num 4