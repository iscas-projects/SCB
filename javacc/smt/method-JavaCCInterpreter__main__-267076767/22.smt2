(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var176 0)
(declare-sort var3980 0)
(declare-sort var3076 0)
(declare-sort var3892 0)
(declare-sort var1259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var176_reInitAll/529526883 () void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3076_exit/142839841 (Int) void)
(declare-fun var3076_currentTimeMillis/630293680 () Int)
(declare-fun var3892-init () var3892)
(declare-fun <init>/-1790459135 (var3892) void)
(declare-fun runTokenizer/981280399 (var3892 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1259 String) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3980 var3980)
(declare-const var3076-err var1259)
(declare-const var2817 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2817 null-__Array__Int__String__)))
;(assert var176_reInitAll/529526883) ; Statement: staticinvoke <org.javacc.parser.Main: void reInitAll()>() 
(define-const var205 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var3494 Int (getLength-Arr-String-1 var2817)) ; Statement: $i0 = lengthof r0 
(define-const var789 Int (- var3494 2)) ; Statement: $i1 = $i0 - 2 
 ; Statement: if i10 >= $i1 goto r24 = "" 
(assert (>= var205 var789)) ; Cond: i10 >= $i1 
(define-const var3271 String "") ; Statement: r24 = "" 
(define-const var951 String "") ; Statement: r25 = "" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1096 var3980) ; Statement: $r22 := @caughtexception 
(assert (not (= var1096 null-var3980)))
;(assert (var3076_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var3533 Int)
(assert true) ; Non Conditional
(define-const var3438 Int var3076_currentTimeMillis/630293680) ; Statement: $l11 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var2378 var3892 var3892-init) ; Statement: $r28 = new JavaCCInterpreter 
(assert true)
;(assert (<init>/-1790459135 var2378)) ; Statement: specialinvoke $r28.<JavaCCInterpreter: void <init>()>() 

(declare-const var2378!1 var3892)
(assert true)
;(assert (runTokenizer/981280399 var2378!1 var951 var3271)) ; Statement: virtualinvoke $r28.<JavaCCInterpreter: void runTokenizer(java.lang.String,java.lang.String)>(r25, r24) 

(declare-const var2378!2 var3892)
(declare-const var951!1 String)
(declare-const var3271!1 String)
(define-const var2776 var1259 var3076-err) ; Statement: $r29 = <java.lang.System: java.io.PrintStream err> 
(define-const var3080 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3080)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3080!1 String)
(assert (= var3080!1 ""))
(assert true)
(define-const var3068 String (append/672562846 var3080!1 "Tokenized in: ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tokenized in: ") 
(declare-const var3080!2 String)
(assert (= var3080!2 (str.++ var3080!1 "Tokenized in: ")))
(define-const var3315 Int var3076_currentTimeMillis/630293680) ; Statement: $l12 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var1572 Int (- var3315 var3438)) ; Statement: $l13 = $l12 - $l11 
(assert true)
(define-const var1453 String (append/-901862667 var3068 var1572)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l13) 
(declare-const var3068!1 String)
(assert (str.prefixof var3068 var3068!1))
(assert true)
(define-const var2546 String (toString/-2075883882 var1453)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2776 var2546)) ; Statement: virtualinvoke $r29.<java.io.PrintStream: void println(java.lang.String)>($r33) 

(declare-const var2776!1 var1259)
(declare-const var2546!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var176_reInitAll/529526883=([], void), getLength-Arr-String-1=([java.lang.String[]], int), var3076_exit/142839841=([int], void), var3076_currentTimeMillis/630293680=([], long), var3892-init=([], JavaCCInterpreter), <init>/-1790459135=([JavaCCInterpreter], void), runTokenizer/981280399=([JavaCCInterpreter, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2817=r0, var176=org.javacc.parser.Main, var205=i10, var3494=$i0, var789=$i1, var3271=r24, var951=r25, var3980=java.lang.Throwable, var1096=$r22, var3076=java.lang.System, var3533=1, var3438=$l11, var3892=JavaCCInterpreter, var2378=$r28, var1259=java.io.PrintStream, var2776=$r29, var3080=$r30, var3068=$r31, var3315=$l12, var1572=$l13, var1453=$r32, var2546=$r33}
; {r0=var2817, org.javacc.parser.Main=var176, i10=var205, $i0=var3494, $i1=var789, r24=var3271, r25=var951, java.lang.Throwable=var3980, $r22=var1096, java.lang.System=var3076, 1=var3533, $l11=var3438, JavaCCInterpreter=var3892, $r28=var2378, java.io.PrintStream=var1259, $r29=var2776, $r30=var3080, $r31=var3068, $l12=var3315, $l13=var1572, $r32=var1453, $r33=var2546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String[];	staticinvoke <org.javacc.parser.Main: void reInitAll()>();	i10 = 0;	$i0 = lengthof r0;	$i1 = $i0 - 2;	if i10 >= $i1 goto r24 = "";	r24 = "";	r25 = "";	$r22 := @caughtexception;	staticinvoke <java.lang.System: void exit(int)>(1);	$l11 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r28 = new JavaCCInterpreter;	specialinvoke $r28.<JavaCCInterpreter: void <init>()>();	virtualinvoke $r28.<JavaCCInterpreter: void runTokenizer(java.lang.String,java.lang.String)>(r25, r24);	$r29 = <java.lang.System: java.io.PrintStream err>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tokenized in: ");	$l12 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l13 = $l12 - $l11;	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l13);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r29.<java.io.PrintStream: void println(java.lang.String)>($r33);	return
;block_num 5