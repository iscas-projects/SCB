(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1639 0)
(declare-sort var367 0)
(declare-sort var3709 0)
(declare-sort var3714 0)
(declare-sort var2743 0)
(declare-sort var199 0)
(declare-sort var235 0)
(declare-sort var3618 0)
(declare-sort var3946 0)
(declare-sort var1114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var367-to-var1639 (var367) var1639)
(declare-fun var3714-init () var3714)
(declare-fun var2743-init () var2743)
(declare-fun <init>/393586270 (var2743 var199) void)
(declare-fun <init>/30097470 (var3714 var3618) void)
(declare-fun cast-from-var2743-to-var3618 (var2743) var3618)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun print/-1969040762 (var3946 String) void)
(declare-fun readLine/150542008 (var3714) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1639 var1639)
(declare-const var3709-UNDEFINED var367)
(declare-const var235-in var199)
(declare-const var235-out var3946)
(declare-const null-String String)
(declare-const var437 var1639) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var437 null-var1639)))
(declare-const var3471 var1639) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3471 null-var1639)))
(declare-const var3790 var1639) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3790 null-var1639)))
(define-const var1426 var367 var3709-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r0 == $r1 goto $r12 = "" 
(assert (= var3471 (cast-from-var367-to-var1639 var1426))) ; Cond: r0 == $r1 
(define-const var3409 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(define-const var1957 String var3409) ; Statement: r2 = $r12 
(define-const var1522 var367 var3709-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 == $r4 goto $r13 = ">> " 
(assert (= var3790 (cast-from-var367-to-var1639 var1522))) ; Cond: r3 == $r4 
(define-const var3718 String ">> ") ; Statement: $r13 = ">> " 
(assert true) ; Non Conditional
(define-const var3986 String var3718) ; Statement: r5 = $r13 
(define-const var1250 var3714 var3714-init) ; Statement: $r6 = new java.io.BufferedReader 
(define-const var1157 var2743 var2743-init) ; Statement: $r7 = new java.io.InputStreamReader 
(define-const var66 var199 var235-in) ; Statement: $r8 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var1157 var66)) ; Statement: specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8) 

(declare-const var1157!1 var2743)
(declare-const var66!1 var199)
(assert true)
;(assert (<init>/30097470 var1250 (cast-from-var2743-to-var3618 var1157!1))) ; Statement: specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7) 

(declare-const var1250!1 var3714)
(declare-const var1157!2 var2743)
(define-const var1595 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1595)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1595!1 String)
(assert (= var1595!1 ""))
(assert true) ; Non Conditional
(define-const var941 var3946 var235-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/-1969040762 var941 var3986)) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5) 

(declare-const var941!1 var3946)
(declare-const var3986!1 String)
(assert true)
(define-const var1287 String (readLine/150542008 var1250!1)) ; Statement: $r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1287 null-String)) ; Cond: $r15 == null 
(assert true)
(define-const var2888 String (toString/-2075883882 var1595!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var367-to-var1639=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var3714-init=([], java.io.BufferedReader), var2743-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var2743-to-var3618=([java.io.InputStreamReader], java.io.Reader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), print/-1969040762=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1639=java.lang.Object, var437=r11, var3471=r0, var3790=r3, var367=jdk.nashorn.internal.runtime.Undefined, var3709=jdk.nashorn.internal.runtime.ScriptRuntime, var1426=$r1, var3409=$r12, var1957=r2, var1522=$r4, var3718=$r13, var3986=r5, var3714=java.io.BufferedReader, var1250=$r6, var2743=java.io.InputStreamReader, var1157=$r7, var199=java.io.InputStream, var235=java.lang.System, var66=$r8, var3618=java.io.Reader, var1595=$r9, var3946=java.io.PrintStream, var941=$r14, var1287=$r15, var1114=null_type, var2888=$r10}
; {java.lang.Object=var1639, r11=var437, r0=var3471, r3=var3790, jdk.nashorn.internal.runtime.Undefined=var367, jdk.nashorn.internal.runtime.ScriptRuntime=var3709, $r1=var1426, $r12=var3409, r2=var1957, $r4=var1522, $r13=var3718, r5=var3986, java.io.BufferedReader=var3714, $r6=var1250, java.io.InputStreamReader=var2743, $r7=var1157, java.io.InputStream=var199, java.lang.System=var235, $r8=var66, java.io.Reader=var3618, $r9=var1595, java.io.PrintStream=var3946, $r14=var941, $r15=var1287, null_type=var1114, $r10=var2888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r0 == $r1 goto $r12 = "";	$r12 = "";	r2 = $r12;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 == $r4 goto $r13 = ">> ";	$r13 = ">> ";	r5 = $r13;	$r6 = new java.io.BufferedReader;	$r7 = new java.io.InputStreamReader;	$r8 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8);	specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5);	$r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>();	if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7