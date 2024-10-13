(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var157 0)
(declare-sort var3042 0)
(declare-sort var3928 0)
(declare-sort var1349 0)
(declare-sort var3710 0)
(declare-sort var1818 0)
(declare-sort var2884 0)
(declare-sort var5 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3928-init () var3928)
(declare-fun var1349-init () var1349)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var5_get_error_count/-1557085957 () Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var5_get_warning_count/2113508455 () Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1818 String) void)
(declare-fun var2884_exit/142839841 (Int) void)
(declare-const null-var157 var157)
(declare-const null-String String)
(declare-const null-var3710 var3710)
(declare-const var2884-out var1818)
(declare-const var3503 var157) ; Statement: r26 := @this: JavaCCInterpreter 
(assert (not (= var3503 null-var157)))
(declare-const var255 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var255 null-String)))
(declare-const var1721 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1721 null-String)))
(define-const var2025 var3928 var3928-init) ; Statement: $r0 = new org.javacc.parser.JavaCCParser 
(define-const var3446 var1349 var1349-init) ; Statement: $r1 = new java.io.StringReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2277 var3710) ; Statement: $r17 := @caughtexception 
(assert (not (= var2277 null-var3710)))
(define-const var2695 var1818 var2884-out) ; Statement: $r19 = <java.lang.System: java.io.PrintStream out> 
(define-const var3551 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3551)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3551!1 String)
(assert (= var3551!1 ""))
(assert true)
(define-const var13 String (append/672562846 var3551!1 "Detected ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected ") 
(declare-const var3551!2 String)
(assert (= var3551!2 (str.++ var3551!1 "Detected ")))
(define-const var3068 Int var5_get_error_count/-1557085957) ; Statement: $i4 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_error_count()>() 
(assert true)
(define-const var245 String (append/-1001720160 var13 var3068)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var13!1 String)
(assert (str.prefixof var13 var13!1))
(assert true)
(define-const var3286 String (append/672562846 var245 " errors and ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" errors and ") 
(declare-const var245!1 String)
(assert (= var245!1 (str.++ var245 " errors and ")))
(define-const var1293 Int var5_get_warning_count/2113508455) ; Statement: $i5 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_warning_count()>() 
(assert true)
(define-const var184 String (append/-1001720160 var3286 var1293)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var3286!1 String)
(assert (str.prefixof var3286 var3286!1))
(assert true)
(define-const var3691 String (append/672562846 var184 " warnings.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" warnings.") 
(declare-const var184!1 String)
(assert (= var184!1 (str.++ var184 " warnings.")))
(assert true)
(define-const var545 String (toString/-2075883882 var3691)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2695 var545)) ; Statement: virtualinvoke $r19.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var2695!1 var1818)
(declare-const var545!1 String)
;(assert (var2884_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var2622 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3928-init=([], org.javacc.parser.JavaCCParser), var1349-init=([], java.io.StringReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var5_get_error_count/-1557085957=([], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var5_get_warning_count/2113508455=([], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2884_exit/142839841=([int], void)}
; {var157=JavaCCInterpreter, var3503=r26, var255=r2, var3042=null_type, var1721=r5, var3928=org.javacc.parser.JavaCCParser, var2025=$r0, var1349=java.io.StringReader, var3446=$r1, var3710=org.javacc.parser.MetaParseException, var2277=$r17, var1818=java.io.PrintStream, var2884=java.lang.System, var2695=$r19, var3551=$r18, var13=$r20, var5=org.javacc.parser.JavaCCErrors, var3068=$i4, var245=$r21, var3286=$r22, var1293=$i5, var184=$r23, var3691=$r24, var545=$r25, var2622=1}
; {JavaCCInterpreter=var157, r26=var3503, r2=var255, null_type=var3042, r5=var1721, org.javacc.parser.JavaCCParser=var3928, $r0=var2025, java.io.StringReader=var1349, $r1=var3446, org.javacc.parser.MetaParseException=var3710, $r17=var2277, java.io.PrintStream=var1818, java.lang.System=var2884, $r19=var2695, $r18=var3551, $r20=var13, org.javacc.parser.JavaCCErrors=var5, $i4=var3068, $r21=var245, $r22=var3286, $i5=var1293, $r23=var184, $r24=var3691, $r25=var545, 1=var2622}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: JavaCCInterpreter;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r0 = new org.javacc.parser.JavaCCParser;	$r1 = new java.io.StringReader;	$r17 := @caughtexception;	$r19 = <java.lang.System: java.io.PrintStream out>;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detected ");	$i4 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_error_count()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" errors and ");	$i5 = staticinvoke <org.javacc.parser.JavaCCErrors: int get_warning_count()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" warnings.");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r19.<java.io.PrintStream: void println(java.lang.String)>($r25);	staticinvoke <java.lang.System: void exit(int)>(1);	goto [?= return];	return
;block_num 3