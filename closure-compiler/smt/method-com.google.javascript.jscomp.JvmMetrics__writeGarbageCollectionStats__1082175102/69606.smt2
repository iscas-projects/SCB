(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var845 0)
(declare-sort var3817 0)
(declare-sort var3306 0)
(declare-sort var2640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3817_getGarbageCollectorMXBeans/1080076771 () var845)
(declare-fun var845_size/-959786421 (var845) Int)
(declare-fun var845_iterator/-912451715 (var845) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3306_normalizeName/-1981212452 (String) String)
(declare-fun arr-var2640-init () (Array Int var2640))
(declare-fun cast-from-String-to-var2640 (String) var2640)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2640 (Int) var2640)
(declare-fun String_format/1339386452 (String (Array Int var2640)) String)
(declare-fun var3306_normalizeTabularColonPos/-1974473301 (String) String)
(declare-fun println/1773605060 (var2609 String) void)
(declare-const null-var2609 var2609)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2640__ (Array Int var2640))
(declare-const var3010 var2609) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var3010 null-var2609)))
(declare-const var102 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var102 null-Bool)))
(declare-const var2677 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2677 null-Bool)))
(define-const var1054 var845 var3817_getGarbageCollectorMXBeans/1080076771) ; Statement: r0 = staticinvoke <java.lang.management.ManagementFactory: java.util.List getGarbageCollectorMXBeans()>() 
 ; Statement: if z0 == 0 goto l7 = 0L 
(assert (= (ite var102 1 0) 0)) ; Cond: z0 == 0 
(define-const var3139 Int 0) ; Statement: l7 = 0L 
(define-const var166 Int 0) ; Statement: l8 = 0L 
(define-const var1030 Int (var845_size/-959786421 var1054)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var1794 Iterator (var845_iterator/-912451715 var1054)) ; Statement: r42 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1529 Bool (Iterator_hasNext/-1669924200 var1794)) ; Statement: $z1 = interfaceinvoke r42.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1529 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z2 == 0 goto r43 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>("aggregate") 
(assert (= (ite var2677 1 0) 0)) ; Cond: z2 == 0 
(define-const var2075 String (var3306_normalizeName/-1981212452 "aggregate")) ; Statement: r43 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>("aggregate") 
(define-const var2417 (Array Int var2640) arr-var2640-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(declare-const var2417!1 (Array Int var2640))
(assert (not (= var2417!1 null-__Array__Int__var2640__)))
(assert (= (select var2417!1 0) (cast-from-String-to-var2640 var2075))) ; Statement: $r2[0] = r43 
(define-const var626 Int (Int_valueOf/-1102777585 var3139)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l7) 
(declare-const var2417!2 (Array Int var2640))
(assert (not (= var2417!2 null-__Array__Int__var2640__)))
(assert (= (select var2417!2 1) (cast-from-Int-to-var2640 var626))) ; Statement: $r2[1] = $r3 
(define-const var3015 String (String_format/1339386452 "gc-%s-collection-count : %d" var2417!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("gc-%s-collection-count : %d", $r2) 
(define-const var2783 String (var3306_normalizeTabularColonPos/-1974473301 var3015)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r4) 
(assert true)
;(assert (println/1773605060 var3010 var2783)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var3010!1 var2609)
(declare-const var2783!1 String)
(define-const var3335 (Array Int var2640) arr-var2640-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(declare-const var3335!1 (Array Int var2640))
(assert (not (= var3335!1 null-__Array__Int__var2640__)))
(assert (= (select var3335!1 0) (cast-from-String-to-var2640 var2075))) ; Statement: $r6[0] = r43 
(define-const var1903 Int (Int_valueOf/-1102777585 var166)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l8) 
(declare-const var3335!2 (Array Int var2640))
(assert (not (= var3335!2 null-__Array__Int__var2640__)))
(assert (= (select var3335!2 1) (cast-from-Int-to-var2640 var1903))) ; Statement: $r6[1] = $r7 
(define-const var744 String (String_format/1339386452 "gc-%s-collection-time-ms : %d" var3335!2)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("gc-%s-collection-time-ms : %d", $r6) 
(define-const var503 String (var3306_normalizeTabularColonPos/-1974473301 var744)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r8) 
(assert true)
;(assert (println/1773605060 var3010!1 var503)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3010!2 var2609)
(declare-const var503!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3817_getGarbageCollectorMXBeans/1080076771=([], java.util.List), var845_size/-959786421=([java.util.List], int), var845_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3306_normalizeName/-1981212452=([java.lang.String], java.lang.String), arr-var2640-init=([], java.lang.Object[]), cast-from-String-to-var2640=([java.lang.String], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2640=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3306_normalizeTabularColonPos/-1974473301=([java.lang.String], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2609=java.io.PrintStream, var3010=r1, var102=z0, var2677=z2, var845=java.util.List, var3817=java.lang.management.ManagementFactory, var1054=r0, var3139=l7, var166=l8, var1030=i0, var1794=r42, var1529=$z1, var3306=com.google.javascript.jscomp.JvmMetrics, var2075=r43, var2640=java.lang.Object, var2417=$r2, var626=$r3, var3015=$r4, var2783=$r5, var3335=$r6, var1903=$r7, var744=$r8, var503=$r9}
; {java.io.PrintStream=var2609, r1=var3010, z0=var102, z2=var2677, java.util.List=var845, java.lang.management.ManagementFactory=var3817, r0=var1054, l7=var3139, l8=var166, i0=var1030, r42=var1794, $z1=var1529, com.google.javascript.jscomp.JvmMetrics=var3306, r43=var2075, java.lang.Object=var2640, $r2=var2417, $r3=var626, $r4=var3015, $r5=var2783, $r6=var3335, $r7=var1903, $r8=var744, $r9=var503}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2}
;stmts r1 := @parameter0: java.io.PrintStream;	z0 := @parameter1: boolean;	z2 := @parameter2: boolean;	r0 = staticinvoke <java.lang.management.ManagementFactory: java.util.List getGarbageCollectorMXBeans()>();	if z0 == 0 goto l7 = 0L;	l7 = 0L;	l8 = 0L;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	r42 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r42.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto (branch);	if z2 == 0 goto r43 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>("aggregate");	r43 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeName(java.lang.String)>("aggregate");	$r2 = newarray (java.lang.Object)[2];	$r2[0] = r43;	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l7);	$r2[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("gc-%s-collection-count : %d", $r2);	$r5 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r4);	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	$r6 = newarray (java.lang.Object)[2];	$r6[0] = r43;	$r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l8);	$r6[1] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("gc-%s-collection-time-ms : %d", $r6);	$r9 = staticinvoke <com.google.javascript.jscomp.JvmMetrics: java.lang.String normalizeTabularColonPos(java.lang.String)>($r8);	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r9);	return
;block_num 6