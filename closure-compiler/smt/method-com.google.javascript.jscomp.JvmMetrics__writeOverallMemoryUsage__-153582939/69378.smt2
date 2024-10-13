(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var3995 0)
(declare-sort var3946 0)
(declare-sort var3972 0)
(declare-sort var3679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3972_normalizeName/-1981212452 (String) String)
(declare-fun arr-var3679-init () (Array Int var3679))
(declare-fun cast-from-String-to-var3679 (String) var3679)
(declare-fun getMax/1152071350 (var3995) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var3679 (Int) var3679)
(declare-fun String_format/1339386452 (String (Array Int var3679)) String)
(declare-fun var3972_normalizeTabularColonPos/-1974473301 (String) String)
(declare-fun println/1773605060 (var3547 String) void)
(declare-fun getUsed/364132067 (var3995) Int)
(declare-const null-var3547 var3547)
(declare-const null-var3995 var3995)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3679__ (Array Int var3679))
(declare-const var3763 var3547) ; Statement: r0 := @parameter0: java.io.PrintStream 
(assert (not (= var3763 null-var3547)))
(declare-const var1733 var3995) ; Statement: r2 := @parameter1: java.lang.management.MemoryUsage 
(assert (not (= var1733 null-var3995)))
(declare-const var3107 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var3107 null-String)))
(declare-const var986 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var986 null-Bool)))
 ; Statement: if z0 == 0 goto r16 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r15) 
(assert (= (ite var986 1 0) 0)) ; Cond: z0 == 0 
(define-const var1583 String (var3972_normalizeName/-1981212452 var3107)) ; Statement: r16 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r15) 
(define-const var1885 (Array Int var3679) arr-var3679-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var1885!1 (Array Int var3679))
(assert (not (= var1885!1 null-__Array__Int__var3679__)))
(assert (= (select var1885!1 0) (cast-from-String-to-var3679 var1583))) ; Statement: $r1[0] = r16 
(assert true)
(define-const var1307 Int (getMax/1152071350 var1733)) ; Statement: $l0 = virtualinvoke r2.<java.lang.management.MemoryUsage: long getMax()>() 
(define-const var2062 Int (Int_valueOf/-1102777585 var1307)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1885!2 (Array Int var3679))
(assert (not (= var1885!2 null-__Array__Int__var3679__)))
(assert (= (select var1885!2 1) (cast-from-Int-to-var3679 var2062))) ; Statement: $r1[1] = $r3 
(define-const var827 String (String_format/1339386452 "%s-available-bytes : %d" var1885!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-available-bytes : %d", $r1) 
(define-const var3105 String (var3972_normalizeTabularColonPos/-1974473301 var827)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r4) 
(assert true)
;(assert (println/1773605060 var3763 var3105)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var3763!1 var3547)
(declare-const var3105!1 String)
(define-const var3751 (Array Int var3679) arr-var3679-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(declare-const var3751!1 (Array Int var3679))
(assert (not (= var3751!1 null-__Array__Int__var3679__)))
(assert (= (select var3751!1 0) (cast-from-String-to-var3679 var1583))) ; Statement: $r6[0] = r16 
(assert true)
(define-const var3038 Int (getUsed/364132067 var1733)) ; Statement: $l1 = virtualinvoke r2.<java.lang.management.MemoryUsage: long getUsed()>() 
(define-const var50 Int (Int_valueOf/-1102777585 var3038)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(declare-const var3751!2 (Array Int var3679))
(assert (not (= var3751!2 null-__Array__Int__var3679__)))
(assert (= (select var3751!2 1) (cast-from-Int-to-var3679 var50))) ; Statement: $r6[1] = $r7 
(define-const var3999 String (String_format/1339386452 "%s-current-bytes : %d" var3751!2)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-current-bytes : %d", $r6) 
(define-const var3711 String (var3972_normalizeTabularColonPos/-1974473301 var3999)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r8) 
(assert true)
;(assert (println/1773605060 var3763!1 var3711)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3763!2 var3547)
(declare-const var3711!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3972_normalizeName/-1981212452=([java.lang.String], java.lang.String), arr-var3679-init=([], java.lang.Object[]), cast-from-String-to-var3679=([java.lang.String], java.lang.Object), getMax/1152071350=([java.lang.management.MemoryUsage], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var3679=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3972_normalizeTabularColonPos/-1974473301=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getUsed/364132067=([java.lang.management.MemoryUsage], long)}
; {var3547=java.io.PrintStream, var3763=r0, var3995=java.lang.management.MemoryUsage, var1733=r2, var3107=r15, var3946=null_type, var986=z0, var3972=com.google.javascript.jscomp.JvmMetrics, var1583=r16, var3679=java.lang.Object, var1885=$r1, var1307=$l0, var2062=$r3, var827=$r4, var3105=$r5, var3751=$r6, var3038=$l1, var50=$r7, var3999=$r8, var3711=$r9}
; {java.io.PrintStream=var3547, r0=var3763, java.lang.management.MemoryUsage=var3995, r2=var1733, r15=var3107, null_type=var3946, z0=var986, com.google.javascript.jscomp.JvmMetrics=var3972, r16=var1583, java.lang.Object=var3679, $r1=var1885, $l0=var1307, $r3=var2062, $r4=var827, $r5=var3105, $r6=var3751, $l1=var3038, $r7=var50, $r8=var3999, $r9=var3711}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2}
;stmts r0 := @parameter0: java.io.PrintStream;	r2 := @parameter1: java.lang.management.MemoryUsage;	r15 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	if z0 == 0 goto r16 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r15);	r16 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>(r15);	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r16;	$l0 = virtualinvoke r2.<java.lang.management.MemoryUsage: long getMax()>();	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r1[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-available-bytes : %d", $r1);	$r5 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r4);	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r5);	$r6 = newarray (java.lang.Object)[2];	$r6[0] = r16;	$l1 = virtualinvoke r2.<java.lang.management.MemoryUsage: long getUsed()>();	$r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r6[1] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s-current-bytes : %d", $r6);	$r9 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r8);	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r9);	return
;block_num 3