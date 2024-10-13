(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1525 0)
(declare-sort var844 0)
(declare-sort var3904 0)
(declare-sort var3595 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3904_getCompilationMXBean/-1378364050 () var844)
(declare-fun arr-var3595-init () (Array Int var3595))
(declare-fun var1805_normalizeName/-1981212452 (String) String)
(declare-fun cast-from-String-to-var3595 (String) var3595)
(declare-fun var844_getTotalCompilationTime/1559341078 (var844) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var3595 (Int) var3595)
(declare-fun String_format/1339386452 (String (Array Int var3595)) String)
(declare-fun var1805_normalizeTabularColonPos/-1974473301 (String) String)
(declare-fun println/1773605060 (var1525 String) void)
(declare-const null-var1525 var1525)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3595__ (Array Int var3595))
(declare-const var1459 var1525) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1459 null-var1525)))
(declare-const var3871 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3871 null-Bool)))
(declare-const var1775 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1775 null-Bool)))
(define-const var3007 var844 var3904_getCompilationMXBean/-1378364050) ; Statement: r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>() 
 ; Statement: if z0 == 0 goto r9 = "total" 
(assert (= (ite var3871 1 0) 0)) ; Cond: z0 == 0 
(define-const var2909 String "total") ; Statement: r9 = "total" 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = newarray (java.lang.Object)[2] 
(assert (= (ite var1775 1 0) 0)) ; Cond: z1 == 0 
(define-const var2006 (Array Int var3595) arr-var3595-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(define-const var1290 String (var1805_normalizeName/-1981212452 var2909)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r9) 
(declare-const var2006!1 (Array Int var3595))
(assert (not (= var2006!1 null-__Array__Int__var3595__)))
(assert (= (select var2006!1 0) (cast-from-String-to-var3595 var1290))) ; Statement: $r2[0] = $r3 
(define-const var231 Int (var844_getTotalCompilationTime/1559341078 var3007)) ; Statement: $l0 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>() 
(define-const var3876 Int (Int_valueOf/-1102777585 var231)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var2006!2 (Array Int var3595))
(assert (not (= var2006!2 null-__Array__Int__var3595__)))
(assert (= (select var2006!2 1) (cast-from-Int-to-var3595 var3876))) ; Statement: $r2[1] = $r4 
(define-const var2613 String (String_format/1339386452 "%s-jit-time-ms : %d" var2006!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-jit-time-ms : %d", $r2) 
(define-const var3465 String (var1805_normalizeTabularColonPos/-1974473301 var2613)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5) 
(assert true)
;(assert (println/1773605060 var1459 var3465)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var1459!1 var1525)
(declare-const var3465!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3904_getCompilationMXBean/-1378364050=([], java.lang.management.CompilationMXBean), arr-var3595-init=([], java.lang.Object[]), var1805_normalizeName/-1981212452=([java.lang.String], java.lang.String), cast-from-String-to-var3595=([java.lang.String], java.lang.Object), var844_getTotalCompilationTime/1559341078=([java.lang.management.CompilationMXBean], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var3595=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var1805_normalizeTabularColonPos/-1974473301=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1525=java.io.PrintStream, var1459=r1, var3871=z0, var1775=z1, var844=java.lang.management.CompilationMXBean, var3904=java.lang.management.ManagementFactory, var3007=r0, var2909=r9, var3595=java.lang.Object, var2006=$r2, var1805=com.google.javascript.jscomp.JvmMetrics, var1290=$r3, var231=$l0, var3876=$r4, var2613=$r5, var3465=$r6}
; {java.io.PrintStream=var1525, r1=var1459, z0=var3871, z1=var1775, java.lang.management.CompilationMXBean=var844, java.lang.management.ManagementFactory=var3904, r0=var3007, r9=var2909, java.lang.Object=var3595, $r2=var2006, com.google.javascript.jscomp.JvmMetrics=var1805, $r3=var1290, $l0=var231, $r4=var3876, $r5=var2613, $r6=var3465}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>();	if z0 == 0 goto r9 = "total";	r9 = "total";	if z1 == 0 goto $r2 = newarray (java.lang.Object)[2];	$r2 = newarray (java.lang.Object)[2];	$r3 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r9);	$r2[0] = $r3;	$l0 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>();	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-jit-time-ms : %d", $r2);	$r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5);	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	return
;block_num 5