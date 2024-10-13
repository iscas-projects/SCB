(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var374 0)
(declare-sort var1853 0)
(declare-sort var3990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1853_getCompilationMXBean/-1378364050 () var374)
(declare-fun println/1773605060 (var3671 String) void)
(declare-fun arr-var3990-init () (Array Int var3990))
(declare-fun cast-from-String-to-var3990 (String) var3990)
(declare-fun var374_getTotalCompilationTime/1559341078 (var374) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var3990 (Int) var3990)
(declare-fun printf/-241172884 (var3671 String (Array Int var3990)) var3671)
(declare-const null-var3671 var3671)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3990__ (Array Int var3990))
(declare-const var488 var3671) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var488 null-var3671)))
(declare-const var1452 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1452 null-Bool)))
(declare-const var1406 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1406 null-Bool)))
(define-const var3858 var374 var1853_getCompilationMXBean/-1378364050) ; Statement: r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>() 
 ; Statement: if z0 == 0 goto r9 = "total" 
(assert (= (ite var1452 1 0) 0)) ; Cond: z0 == 0 
(define-const var1378 String "total") ; Statement: r9 = "total" 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = newarray (java.lang.Object)[2] 
(assert (not (= (ite var1406 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (println/1773605060 var488 "\nJIT Stats")) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>("\nJIT Stats") 

(declare-const var488!1 var3671)
(declare-const var37 String)
(define-const var2646 (Array Int var3990) arr-var3990-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var2646!1 (Array Int var3990))
(assert (not (= var2646!1 null-__Array__Int__var3990__)))
(assert (= (select var2646!1 0) (cast-from-String-to-var3990 var1378))) ; Statement: $r7[0] = r9 
(define-const var2049 Int (var374_getTotalCompilationTime/1559341078 var3858)) ; Statement: $l1 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>() 
(define-const var1880 Int (Int_valueOf/-1102777585 var2049)) ; Statement: $r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(declare-const var2646!2 (Array Int var3990))
(assert (not (= var2646!2 null-__Array__Int__var3990__)))
(assert (= (select var2646!2 1) (cast-from-Int-to-var3990 var1880))) ; Statement: $r7[1] = $r8 
(assert true)
;(assert (printf/-241172884 var488!1 "\t%s jit time: %d ms%n" var2646!2)) ; Statement: virtualinvoke r1.<java.io.PrintStream: java.io.PrintStream printf(java.lang.String,java.lang.Object[])>("\t%s jit time: %d ms%n", $r7) 

(declare-const var488!2 var3671)
(declare-const var1335 String)
(declare-const var2646!3 (Array Int var3990))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1853_getCompilationMXBean/-1378364050=([], java.lang.management.CompilationMXBean), println/1773605060=([java.io.PrintStream, java.lang.String], void), arr-var3990-init=([], java.lang.Object[]), cast-from-String-to-var3990=([java.lang.String], java.lang.Object), var374_getTotalCompilationTime/1559341078=([java.lang.management.CompilationMXBean], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var3990=([java.lang.Long], java.lang.Object), printf/-241172884=([java.io.PrintStream, java.lang.String, java.lang.Object[]], java.io.PrintStream)}
; {var3671=java.io.PrintStream, var488=r1, var1452=z0, var1406=z1, var374=java.lang.management.CompilationMXBean, var1853=java.lang.management.ManagementFactory, var3858=r0, var1378=r9, var37="\nJIT Stats", var3990=java.lang.Object, var2646=$r7, var2049=$l1, var1880=$r8, var1335="\t%s jit time: %d ms%n"}
; {java.io.PrintStream=var3671, r1=var488, z0=var1452, z1=var1406, java.lang.management.CompilationMXBean=var374, java.lang.management.ManagementFactory=var1853, r0=var3858, r9=var1378, "\nJIT Stats"=var37, java.lang.Object=var3990, $r7=var2646, $l1=var2049, $r8=var1880, "\t%s jit time: %d ms%n"=var1335}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.io.PrintStream;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>();	if z0 == 0 goto r9 = "total";	r9 = "total";	if z1 == 0 goto $r2 = newarray (java.lang.Object)[2];	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>("\nJIT Stats");	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r9;	$l1 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>();	$r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r7[1] = $r8;	virtualinvoke r1.<java.io.PrintStream: java.io.PrintStream printf(java.lang.String,java.lang.Object[])>("\t%s jit time: %d ms%n", $r7);	goto [?= return];	return
;block_num 5