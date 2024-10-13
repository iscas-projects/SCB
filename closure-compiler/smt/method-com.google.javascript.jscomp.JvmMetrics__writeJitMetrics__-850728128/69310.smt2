(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort var3349 0)
(declare-sort var3806 0)
(declare-sort var339 0)
(declare-sort var3932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3806_getCompilationMXBean/-1378364050 () var3349)
(declare-fun var3349_getName/398408814 (var3349) String)
(declare-fun arr-var339-init () (Array Int var339))
(declare-fun var3932_normalizeName/-1981212452 (String) String)
(declare-fun cast-from-String-to-var339 (String) var339)
(declare-fun var3349_getTotalCompilationTime/1559341078 (var3349) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var339 (Int) var339)
(declare-fun String_format/1339386452 (String (Array Int var339)) String)
(declare-fun var3932_normalizeTabularColonPos/-1974473301 (String) String)
(declare-fun println/1773605060 (var190 String) void)
(declare-const null-var190 var190)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var339__ (Array Int var339))
(declare-const var3223 var190) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var3223 null-var190)))
(declare-const var3153 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3153 null-Bool)))
(declare-const var2691 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2691 null-Bool)))
(define-const var220 var3349 var3806_getCompilationMXBean/-1378364050) ; Statement: r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>() 
 ; Statement: if z0 == 0 goto r9 = "total" 
(assert (not (= (ite var3153 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var293 String (var3349_getName/398408814 var220)) ; Statement: r9 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: java.lang.String getName()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = newarray (java.lang.Object)[2] 
(assert (= (ite var2691 1 0) 0)) ; Cond: z1 == 0 
(define-const var3388 (Array Int var339) arr-var339-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(define-const var2492 String (var3932_normalizeName/-1981212452 var293)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r9) 
(declare-const var3388!1 (Array Int var339))
(assert (not (= var3388!1 null-__Array__Int__var339__)))
(assert (= (select var3388!1 0) (cast-from-String-to-var339 var2492))) ; Statement: $r2[0] = $r3 
(define-const var2237 Int (var3349_getTotalCompilationTime/1559341078 var220)) ; Statement: $l0 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>() 
(define-const var2105 Int (Int_valueOf/-1102777585 var2237)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var3388!2 (Array Int var339))
(assert (not (= var3388!2 null-__Array__Int__var339__)))
(assert (= (select var3388!2 1) (cast-from-Int-to-var339 var2105))) ; Statement: $r2[1] = $r4 
(define-const var2539 String (String_format/1339386452 "%s-jit-time-ms : %d" var3388!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-jit-time-ms : %d", $r2) 
(define-const var92 String (var3932_normalizeTabularColonPos/-1974473301 var2539)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5) 
(assert true)
;(assert (println/1773605060 var3223 var92)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3223!1 var190)
(declare-const var92!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3806_getCompilationMXBean/-1378364050=([], java.lang.management.CompilationMXBean), var3349_getName/398408814=([java.lang.management.CompilationMXBean], java.lang.String), arr-var339-init=([], java.lang.Object[]), var3932_normalizeName/-1981212452=([java.lang.String], java.lang.String), cast-from-String-to-var339=([java.lang.String], java.lang.Object), var3349_getTotalCompilationTime/1559341078=([java.lang.management.CompilationMXBean], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var339=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3932_normalizeTabularColonPos/-1974473301=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var190=java.io.PrintStream, var3223=r1, var3153=z0, var2691=z1, var3349=java.lang.management.CompilationMXBean, var3806=java.lang.management.ManagementFactory, var220=r0, var293=r9, var339=java.lang.Object, var3388=$r2, var3932=com.google.javascript.jscomp.JvmMetrics, var2492=$r3, var2237=$l0, var2105=$r4, var2539=$r5, var92=$r6}
; {java.io.PrintStream=var190, r1=var3223, z0=var3153, z1=var2691, java.lang.management.CompilationMXBean=var3349, java.lang.management.ManagementFactory=var3806, r0=var220, r9=var293, java.lang.Object=var339, $r2=var3388, com.google.javascript.jscomp.JvmMetrics=var3932, $r3=var2492, $l0=var2237, $r4=var2105, $r5=var2539, $r6=var92}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r0 = staticinvoke <java.lang.management.ManagementFactory: java.lang.management.CompilationMXBean getCompilationMXBean()>();	if z0 == 0 goto r9 = "total";	r9 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: java.lang.String getName()>();	goto [?= (branch)];	if z1 == 0 goto $r2 = newarray (java.lang.Object)[2];	$r2 = newarray (java.lang.Object)[2];	$r3 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r9);	$r2[0] = $r3;	$l0 = interfaceinvoke r0.<java.lang.management.CompilationMXBean: long getTotalCompilationTime()>();	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r2[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-jit-time-ms : %d", $r2);	$r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5);	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r6);	return
;block_num 5