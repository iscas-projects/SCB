(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var74 0)
(declare-sort var1483 0)
(declare-sort var3766 0)
(declare-sort var3317 0)
(declare-sort var2964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3317-init () (Array Int var3317))
(declare-fun cast-from-String-to-var3317 (String) var3317)
(declare-fun getMax/1152071350 (var1483) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var3317 (Int) var3317)
(declare-fun String_format/1339386452 (String (Array Int var3317)) String)
(declare-fun var2964_normalizeTabularColonPos/-1974473301 (String) String)
(declare-fun println/1773605060 (var74 String) void)
(declare-fun getUsed/364132067 (var1483) Int)
(declare-const null-var74 var74)
(declare-const null-var1483 var1483)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3317__ (Array Int var3317))
(declare-const var3524 var74) ; Statement: r0 := @parameter0: java.io.PrintStream 
(assert (not (= var3524 null-var74)))
(declare-const var2745 var1483) ; Statement: r3 := @parameter1: java.lang.management.MemoryUsage 
(assert (not (= var2745 null-var1483)))
(declare-const var1347 var1483) ; Statement: r8 := @parameter2: java.lang.management.MemoryUsage 
(assert (not (= var1347 null-var1483)))
(declare-const var2637 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var2637 null-String)))
(declare-const var2199 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2199 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = newarray (java.lang.Object)[2] 
(assert (= (ite var2199 1 0) 0)) ; Cond: z0 == 0 
(define-const var3310 (Array Int var3317) arr-var3317-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var3310!1 (Array Int var3317))
(assert (not (= var3310!1 null-__Array__Int__var3317__)))
(assert (= (select var3310!1 0) (cast-from-String-to-var3317 var2637))) ; Statement: $r1[0] = r2 
(assert true)
(define-const var2016 Int (getMax/1152071350 var2745)) ; Statement: $l0 = virtualinvoke r3.<java.lang.management.MemoryUsage: long getMax()>() 
(define-const var3463 Int (Int_valueOf/-1102777585 var2016)) ; Statement: $r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var3310!2 (Array Int var3317))
(assert (not (= var3310!2 null-__Array__Int__var3317__)))
(assert (= (select var3310!2 1) (cast-from-Int-to-var3317 var3463))) ; Statement: $r1[1] = $r4 
(define-const var404 String (String_format/1339386452 "%s-available-bytes : %d" var3310!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-available-bytes : %d", $r1) 
(define-const var3232 String (var2964_normalizeTabularColonPos/-1974473301 var404)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5) 
(assert true)
;(assert (println/1773605060 var3524 var3232)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3524!1 var74)
(declare-const var3232!1 String)
(define-const var1177 (Array Int var3317) arr-var3317-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var1177!1 (Array Int var3317))
(assert (not (= var1177!1 null-__Array__Int__var3317__)))
(assert (= (select var1177!1 0) (cast-from-String-to-var3317 var2637))) ; Statement: $r7[0] = r2 
(assert true)
(define-const var1057 Int (getUsed/364132067 var1347)) ; Statement: $l1 = virtualinvoke r8.<java.lang.management.MemoryUsage: long getUsed()>() 
(define-const var3400 Int (Int_valueOf/-1102777585 var1057)) ; Statement: $r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(declare-const var1177!2 (Array Int var3317))
(assert (not (= var1177!2 null-__Array__Int__var3317__)))
(assert (= (select var1177!2 1) (cast-from-Int-to-var3317 var3400))) ; Statement: $r7[1] = $r9 
(define-const var30 String (String_format/1339386452 "%s-peak-bytes : %d" var1177!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-peak-bytes : %d", $r7) 
(define-const var406 String (var2964_normalizeTabularColonPos/-1974473301 var30)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r10) 
(assert true)
;(assert (println/1773605060 var3524!1 var406)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var3524!2 var74)
(declare-const var406!1 String)
(define-const var1418 (Array Int var3317) arr-var3317-init) ; Statement: $r12 = newarray (java.lang.Object)[2] 
(declare-const var1418!1 (Array Int var3317))
(assert (not (= var1418!1 null-__Array__Int__var3317__)))
(assert (= (select var1418!1 0) (cast-from-String-to-var3317 var2637))) ; Statement: $r12[0] = r2 
(assert true)
(define-const var2612 Int (getUsed/364132067 var2745)) ; Statement: $l2 = virtualinvoke r3.<java.lang.management.MemoryUsage: long getUsed()>() 
(define-const var2310 Int (Int_valueOf/-1102777585 var2612)) ; Statement: $r13 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l2) 
(declare-const var1418!2 (Array Int var3317))
(assert (not (= var1418!2 null-__Array__Int__var3317__)))
(assert (= (select var1418!2 1) (cast-from-Int-to-var3317 var2310))) ; Statement: $r12[1] = $r13 
(define-const var986 String (String_format/1339386452 "%s-current-bytes : %d" var1418!2)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-current-bytes : %d", $r12) 
(define-const var718 String (var2964_normalizeTabularColonPos/-1974473301 var986)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r14) 
(assert true)
;(assert (println/1773605060 var3524!2 var718)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3524!3 var74)
(declare-const var718!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3317-init=([], java.lang.Object[]), cast-from-String-to-var3317=([java.lang.String], java.lang.Object), getMax/1152071350=([java.lang.management.MemoryUsage], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var3317=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var2964_normalizeTabularColonPos/-1974473301=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getUsed/364132067=([java.lang.management.MemoryUsage], long)}
; {var74=java.io.PrintStream, var3524=r0, var1483=java.lang.management.MemoryUsage, var2745=r3, var1347=r8, var2637=r2, var3766=null_type, var2199=z0, var3317=java.lang.Object, var3310=$r1, var2016=$l0, var3463=$r4, var404=$r5, var2964=com.google.javascript.jscomp.JvmMetrics, var3232=$r6, var1177=$r7, var1057=$l1, var3400=$r9, var30=$r10, var406=$r11, var1418=$r12, var2612=$l2, var2310=$r13, var986=$r14, var718=$r15}
; {java.io.PrintStream=var74, r0=var3524, java.lang.management.MemoryUsage=var1483, r3=var2745, r8=var1347, r2=var2637, null_type=var3766, z0=var2199, java.lang.Object=var3317, $r1=var3310, $l0=var2016, $r4=var3463, $r5=var404, com.google.javascript.jscomp.JvmMetrics=var2964, $r6=var3232, $r7=var1177, $l1=var1057, $r9=var3400, $r10=var30, $r11=var406, $r12=var1418, $l2=var2612, $r13=var2310, $r14=var986, $r15=var718}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 3}
;stmts r0 := @parameter0: java.io.PrintStream;	r3 := @parameter1: java.lang.management.MemoryUsage;	r8 := @parameter2: java.lang.management.MemoryUsage;	r2 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	if z0 == 0 goto $r1 = newarray (java.lang.Object)[2];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$l0 = virtualinvoke r3.<java.lang.management.MemoryUsage: long getMax()>();	$r4 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-available-bytes : %d", $r1);	$r6 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r5);	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r6);	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r2;	$l1 = virtualinvoke r8.<java.lang.management.MemoryUsage: long getUsed()>();	$r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r7[1] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-peak-bytes : %d", $r7);	$r11 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r10);	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r12 = newarray (java.lang.Object)[2];	$r12[0] = r2;	$l2 = virtualinvoke r3.<java.lang.management.MemoryUsage: long getUsed()>();	$r13 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l2);	$r12[1] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-current-bytes : %d", $r12);	$r15 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r14);	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 3