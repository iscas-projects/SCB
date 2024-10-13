(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var633 0)
(declare-sort var3065 0)
(declare-sort var3687 0)
(declare-sort var3638 0)
(declare-sort var1555 0)
(declare-sort var3028 0)
(declare-sort var686 0)
(declare-sort var797 0)
(declare-sort var1704 0)
(declare-sort var3782 0)
(declare-sort var2348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3065-to-var633 (var3065) var633)
(declare-fun var3638_toString/-1831155339 (var633) String)
(declare-fun var1555-init () var1555)
(declare-fun var3028-init () var3028)
(declare-fun <init>/393586270 (var3028 var686) void)
(declare-fun <init>/30097470 (var1555 var1704) void)
(declare-fun cast-from-var3028-to-var1704 (var3028) var1704)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun print/-1969040762 (var3782 String) void)
(declare-fun readLine/150542008 (var1555) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var633 var633)
(declare-const var3687-UNDEFINED var3065)
(declare-const var797-in var686)
(declare-const var797-out var3782)
(declare-const null-String String)
(declare-const var3745 var633) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var3745 null-var633)))
(declare-const var3958 var633) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3958 null-var633)))
(declare-const var3129 var633) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3129 null-var633)))
(define-const var1846 var3065 var3687-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r0 == $r1 goto $r12 = "" 
(assert (= var3958 (cast-from-var3065-to-var633 var1846))) ; Cond: r0 == $r1 
(define-const var1259 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(define-const var3848 String var1259) ; Statement: r2 = $r12 
(define-const var2249 var3065 var3687-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 == $r4 goto $r13 = ">> " 
(assert (not (= var3129 (cast-from-var3065-to-var633 var2249)))) ; Negate: Cond: r3 == $r4  
(define-const var455 String (var3638_toString/-1831155339 var3129)) ; Statement: $r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3) 
 ; Statement: goto [?= r5 = $r13] 
(assert true) ; Non Conditional
(define-const var2915 String var455) ; Statement: r5 = $r13 
(define-const var111 var1555 var1555-init) ; Statement: $r6 = new java.io.BufferedReader 
(define-const var217 var3028 var3028-init) ; Statement: $r7 = new java.io.InputStreamReader 
(define-const var3564 var686 var797-in) ; Statement: $r8 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var217 var3564)) ; Statement: specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8) 

(declare-const var217!1 var3028)
(declare-const var3564!1 var686)
(assert true)
;(assert (<init>/30097470 var111 (cast-from-var3028-to-var1704 var217!1))) ; Statement: specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7) 

(declare-const var111!1 var1555)
(declare-const var217!2 var3028)
(define-const var1212 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true) ; Non Conditional
(define-const var3345 var3782 var797-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/-1969040762 var3345 var2915)) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5) 

(declare-const var3345!1 var3782)
(declare-const var2915!1 String)
(assert true)
(define-const var2620 String (readLine/150542008 var111!1)) ; Statement: $r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2620 null-String)) ; Cond: $r15 == null 
(assert true)
(define-const var3744 String (toString/-2075883882 var1212!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3065-to-var633=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var3638_toString/-1831155339=([java.lang.Object], java.lang.String), var1555-init=([], java.io.BufferedReader), var3028-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var3028-to-var1704=([java.io.InputStreamReader], java.io.Reader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), print/-1969040762=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var633=java.lang.Object, var3745=r11, var3958=r0, var3129=r3, var3065=jdk.nashorn.internal.runtime.Undefined, var3687=jdk.nashorn.internal.runtime.ScriptRuntime, var1846=$r1, var1259=$r12, var3848=r2, var2249=$r4, var3638=jdk.nashorn.internal.runtime.JSType, var455=$r13, var2915=r5, var1555=java.io.BufferedReader, var111=$r6, var3028=java.io.InputStreamReader, var217=$r7, var686=java.io.InputStream, var797=java.lang.System, var3564=$r8, var1704=java.io.Reader, var1212=$r9, var3782=java.io.PrintStream, var3345=$r14, var2620=$r15, var2348=null_type, var3744=$r10}
; {java.lang.Object=var633, r11=var3745, r0=var3958, r3=var3129, jdk.nashorn.internal.runtime.Undefined=var3065, jdk.nashorn.internal.runtime.ScriptRuntime=var3687, $r1=var1846, $r12=var1259, r2=var3848, $r4=var2249, jdk.nashorn.internal.runtime.JSType=var3638, $r13=var455, r5=var2915, java.io.BufferedReader=var1555, $r6=var111, java.io.InputStreamReader=var3028, $r7=var217, java.io.InputStream=var686, java.lang.System=var797, $r8=var3564, java.io.Reader=var1704, $r9=var1212, java.io.PrintStream=var3782, $r14=var3345, $r15=var2620, null_type=var2348, $r10=var3744}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r0 == $r1 goto $r12 = "";	$r12 = "";	r2 = $r12;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 == $r4 goto $r13 = ">> ";	$r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3);	goto [?= r5 = $r13];	r5 = $r13;	$r6 = new java.io.BufferedReader;	$r7 = new java.io.InputStreamReader;	$r8 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8);	specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5);	$r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>();	if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7