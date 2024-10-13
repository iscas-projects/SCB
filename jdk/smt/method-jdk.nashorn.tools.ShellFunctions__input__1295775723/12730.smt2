(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1168 0)
(declare-sort var3870 0)
(declare-sort var135 0)
(declare-sort var2100 0)
(declare-sort var2631 0)
(declare-sort var1236 0)
(declare-sort var3137 0)
(declare-sort var312 0)
(declare-sort var3983 0)
(declare-sort var830 0)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3870-to-var1168 (var3870) var1168)
(declare-fun var2100_toString/-1831155339 (var1168) String)
(declare-fun var2631-init () var2631)
(declare-fun var1236-init () var1236)
(declare-fun <init>/393586270 (var1236 var3137) void)
(declare-fun <init>/30097470 (var2631 var3983) void)
(declare-fun cast-from-var1236-to-var3983 (var1236) var3983)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun print/-1969040762 (var830 String) void)
(declare-fun readLine/150542008 (var2631) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1168 var1168)
(declare-const var135-UNDEFINED var3870)
(declare-const var312-in var3137)
(declare-const var312-out var830)
(declare-const null-String String)
(declare-const var1805 var1168) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var1805 null-var1168)))
(declare-const var3014 var1168) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3014 null-var1168)))
(declare-const var595 var1168) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var595 null-var1168)))
(define-const var3959 var3870 var135-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r0 == $r1 goto $r12 = "" 
(assert (not (= var3014 (cast-from-var3870-to-var1168 var3959)))) ; Negate: Cond: r0 == $r1  
(define-const var3280 String (var2100_toString/-1831155339 var3014)) ; Statement: $r12 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
 ; Statement: goto [?= r2 = $r12] 
(assert true) ; Non Conditional
(define-const var785 String var3280) ; Statement: r2 = $r12 
(define-const var496 var3870 var135-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 == $r4 goto $r13 = ">> " 
(assert (= var595 (cast-from-var3870-to-var1168 var496))) ; Cond: r3 == $r4 
(define-const var2773 String ">> ") ; Statement: $r13 = ">> " 
(assert true) ; Non Conditional
(define-const var3963 String var2773) ; Statement: r5 = $r13 
(define-const var3917 var2631 var2631-init) ; Statement: $r6 = new java.io.BufferedReader 
(define-const var2902 var1236 var1236-init) ; Statement: $r7 = new java.io.InputStreamReader 
(define-const var2021 var3137 var312-in) ; Statement: $r8 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var2902 var2021)) ; Statement: specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8) 

(declare-const var2902!1 var1236)
(declare-const var2021!1 var3137)
(assert true)
;(assert (<init>/30097470 var3917 (cast-from-var1236-to-var3983 var2902!1))) ; Statement: specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7) 

(declare-const var3917!1 var2631)
(declare-const var2902!2 var1236)
(define-const var3487 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3487)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3487!1 String)
(assert (= var3487!1 ""))
(assert true) ; Non Conditional
(define-const var892 var830 var312-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/-1969040762 var892 var3963)) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5) 

(declare-const var892!1 var830)
(declare-const var3963!1 String)
(assert true)
(define-const var79 String (readLine/150542008 var3917!1)) ; Statement: $r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var79 null-String)) ; Cond: $r15 == null 
(assert true)
(define-const var1700 String (toString/-2075883882 var3487!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3870-to-var1168=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2100_toString/-1831155339=([java.lang.Object], java.lang.String), var2631-init=([], java.io.BufferedReader), var1236-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var1236-to-var3983=([java.io.InputStreamReader], java.io.Reader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), print/-1969040762=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1168=java.lang.Object, var1805=r11, var3014=r0, var595=r3, var3870=jdk.nashorn.internal.runtime.Undefined, var135=jdk.nashorn.internal.runtime.ScriptRuntime, var3959=$r1, var2100=jdk.nashorn.internal.runtime.JSType, var3280=$r12, var785=r2, var496=$r4, var2773=$r13, var3963=r5, var2631=java.io.BufferedReader, var3917=$r6, var1236=java.io.InputStreamReader, var2902=$r7, var3137=java.io.InputStream, var312=java.lang.System, var2021=$r8, var3983=java.io.Reader, var3487=$r9, var830=java.io.PrintStream, var892=$r14, var79=$r15, var3615=null_type, var1700=$r10}
; {java.lang.Object=var1168, r11=var1805, r0=var3014, r3=var595, jdk.nashorn.internal.runtime.Undefined=var3870, jdk.nashorn.internal.runtime.ScriptRuntime=var135, $r1=var3959, jdk.nashorn.internal.runtime.JSType=var2100, $r12=var3280, r2=var785, $r4=var496, $r13=var2773, r5=var3963, java.io.BufferedReader=var2631, $r6=var3917, java.io.InputStreamReader=var1236, $r7=var2902, java.io.InputStream=var3137, java.lang.System=var312, $r8=var2021, java.io.Reader=var3983, $r9=var3487, java.io.PrintStream=var830, $r14=var892, $r15=var79, null_type=var3615, $r10=var1700}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r0 == $r1 goto $r12 = "";	$r12 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	goto [?= r2 = $r12];	r2 = $r12;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 == $r4 goto $r13 = ">> ";	$r13 = ">> ";	r5 = $r13;	$r6 = new java.io.BufferedReader;	$r7 = new java.io.InputStreamReader;	$r8 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8);	specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5);	$r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>();	if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7