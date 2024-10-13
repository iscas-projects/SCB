(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3994 0)
(declare-sort var2148 0)
(declare-sort var3122 0)
(declare-sort var443 0)
(declare-sort var3561 0)
(declare-sort var1619 0)
(declare-sort var2270 0)
(declare-sort var608 0)
(declare-sort var2384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3122-init () var3122)
(declare-fun var443-init () var443)
(declare-fun toString/-1112415476 (var608) String)
(declare-fun cast-from-var3561-to-var608 (var3561) var608)
(declare-fun println/1773605060 (var1619 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2384_get_error_count/-1557085957 () Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var2384_get_warning_count/2113508455 () Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2270_exit/142839841 (Int) void)
(declare-const null-var3994 var3994)
(declare-const null-String String)
(declare-const null-var3561 var3561)
(declare-const var2270-out var1619)
(declare-const var3458 var3994) ; Statement: r26 := @this: JavaCCInterpreter 
(assert (not (= var3458 null-var3994)))
(declare-const var285 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var285 null-String)))
(declare-const var2295 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2295 null-String)))
(define-const var2475 var3122 var3122-init) ; Statement: $r0 = new org.javacc.parser.JavaCCParser 
(define-const var1610 var443 var443-init) ; Statement: $r1 = new java.io.StringReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1621 var3561) ; Statement: $r6 := @caughtexception 
(assert (not (= var1621 null-var3561)))
(define-const var3623 var1619 var2270-out) ; Statement: $r7 = <java.lang.System: java.io.PrintStream out> 
(assert true)
(define-const var2794 String (toString/-1112415476 (cast-from-var3561-to-var608 var1621))) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3623 var2794)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var3623!1 var1619)
(declare-const var2794!1 String)
(define-const var2584 var1619 var2270-out) ; Statement: $r10 = <java.lang.System: java.io.PrintStream out> 
(define-const var1081 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1081)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1081!1 String)
(assert (= var1081!1 ""))
(assert true)
(define-const var2912 String (append/672562846 var1081!1 "Detected ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected ") 
(declare-const var1081!2 String)
(assert (= var1081!2 (str.++ var1081!1 "Detected ")))
(define-const var2590 Int var2384_get_error_count/-1557085957) ; Statement: $i1 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_error_count()>() 
(define-const var1403 Int (+ var2590 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
(define-const var2905 String (append/-1001720160 var2912 var1403)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2912!1 String)
(assert (str.prefixof var2912 var2912!1))
(assert true)
(define-const var1718 String (append/672562846 var2905 " errors and ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" errors and ") 
(declare-const var2905!1 String)
(assert (= var2905!1 (str.++ var2905 " errors and ")))
(define-const var2011 Int var2384_get_warning_count/2113508455) ; Statement: $i3 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_warning_count()>() 
(assert true)
(define-const var660 String (append/-1001720160 var1718 var2011)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1718!1 String)
(assert (str.prefixof var1718 var1718!1))
(assert true)
(define-const var3900 String (append/672562846 var660 " warnings.")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" warnings.") 
(declare-const var660!1 String)
(assert (= var660!1 (str.++ var660 " warnings.")))
(assert true)
(define-const var486 String (toString/-2075883882 var3900)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2584 var486)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r16) 

(declare-const var2584!1 var1619)
(declare-const var486!1 String)
;(assert (var2270_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var2591 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3122-init=([], org.javacc.parser.JavaCCParser), var443-init=([], java.io.StringReader), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3561-to-var608=([java.lang.Exception], java.lang.Throwable), println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2384_get_error_count/-1557085957=([], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var2384_get_warning_count/2113508455=([], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2270_exit/142839841=([int], void)}
; {var3994=JavaCCInterpreter, var3458=r26, var285=r2, var2148=null_type, var2295=r5, var3122=org.javacc.parser.JavaCCParser, var2475=$r0, var443=java.io.StringReader, var1610=$r1, var3561=java.lang.Exception, var1621=$r6, var1619=java.io.PrintStream, var2270=java.lang.System, var3623=$r7, var608=java.lang.Throwable, var2794=$r8, var2584=$r10, var1081=$r9, var2912=$r11, var2384=org.javacc.parser.JavaCCErrors, var2590=$i1, var1403=$i2, var2905=$r12, var1718=$r13, var2011=$i3, var660=$r14, var3900=$r15, var486=$r16, var2591=1}
; {JavaCCInterpreter=var3994, r26=var3458, r2=var285, null_type=var2148, r5=var2295, org.javacc.parser.JavaCCParser=var3122, $r0=var2475, java.io.StringReader=var443, $r1=var1610, java.lang.Exception=var3561, $r6=var1621, java.io.PrintStream=var1619, java.lang.System=var2270, $r7=var3623, java.lang.Throwable=var608, $r8=var2794, $r10=var2584, $r9=var1081, $r11=var2912, org.javacc.parser.JavaCCErrors=var2384, $i1=var2590, $i2=var1403, $r12=var2905, $r13=var1718, $i3=var2011, $r14=var660, $r15=var3900, $r16=var486, 1=var2591}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: JavaCCInterpreter;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = new org.javacc.parser.JavaCCParser;	$r1 = new java.io.StringReader;	$r6 := @caughtexception;	$r7 = <java.lang.System: java.io.PrintStream out>;	$r8 = virtualinvoke $r6.<java.lang.Exception: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r8);	$r10 = <java.lang.System: java.io.PrintStream out>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected ");	$i1 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_error_count()>();	$i2 = $i1 + 1;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" errors and ");	$i3 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_warning_count()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" warnings.");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r16);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3