(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var2197 0)
(declare-sort var1036 0)
(declare-sort var577 0)
(declare-sort var1065 0)
(declare-sort var1563 0)
(declare-sort var277 0)
(declare-sort var817 0)
(declare-sort var1239 0)
(declare-sort var3269 0)
(declare-sort var979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2197-to-var1469 (var2197) var1469)
(declare-fun var577_toString/-1831155339 (var1469) String)
(declare-fun var1065-init () var1065)
(declare-fun var1563-init () var1563)
(declare-fun <init>/393586270 (var1563 var277) void)
(declare-fun <init>/30097470 (var1065 var1239) void)
(declare-fun cast-from-var1563-to-var1239 (var1563) var1239)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun print/-1969040762 (var3269 String) void)
(declare-fun readLine/150542008 (var1065) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1469 var1469)
(declare-const var1036-UNDEFINED var2197)
(declare-const var817-in var277)
(declare-const var817-out var3269)
(declare-const null-String String)
(declare-const var2015 var1469) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var2015 null-var1469)))
(declare-const var268 var1469) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var268 null-var1469)))
(declare-const var2375 var1469) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var2375 null-var1469)))
(define-const var833 var2197 var1036-UNDEFINED) ; Statement: $r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r0 == $r1 goto $r12 = "" 
(assert (not (= var268 (cast-from-var2197-to-var1469 var833)))) ; Negate: Cond: r0 == $r1  
(define-const var1208 String (var577_toString/-1831155339 var268)) ; Statement: $r12 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
 ; Statement: goto [?= r2 = $r12] 
(assert true) ; Non Conditional
(define-const var1221 String var1208) ; Statement: r2 = $r12 
(define-const var2613 var2197 var1036-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 == $r4 goto $r13 = ">> " 
(assert (not (= var2375 (cast-from-var2197-to-var1469 var2613)))) ; Negate: Cond: r3 == $r4  
(define-const var3433 String (var577_toString/-1831155339 var2375)) ; Statement: $r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3) 
 ; Statement: goto [?= r5 = $r13] 
(assert true) ; Non Conditional
(define-const var95 String var3433) ; Statement: r5 = $r13 
(define-const var3427 var1065 var1065-init) ; Statement: $r6 = new java.io.BufferedReader 
(define-const var2913 var1563 var1563-init) ; Statement: $r7 = new java.io.InputStreamReader 
(define-const var3770 var277 var817-in) ; Statement: $r8 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var2913 var3770)) ; Statement: specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8) 

(declare-const var2913!1 var1563)
(declare-const var3770!1 var277)
(assert true)
;(assert (<init>/30097470 var3427 (cast-from-var1563-to-var1239 var2913!1))) ; Statement: specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7) 

(declare-const var3427!1 var1065)
(declare-const var2913!2 var1563)
(define-const var3470 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3470)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3470!1 String)
(assert (= var3470!1 ""))
(assert true) ; Non Conditional
(define-const var1635 var3269 var817-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/-1969040762 var1635 var95)) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5) 

(declare-const var1635!1 var3269)
(declare-const var95!1 String)
(assert true)
(define-const var2124 String (readLine/150542008 var3427!1)) ; Statement: $r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2124 null-String)) ; Cond: $r15 == null 
(assert true)
(define-const var2228 String (toString/-2075883882 var3470!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2197-to-var1469=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var577_toString/-1831155339=([java.lang.Object], java.lang.String), var1065-init=([], java.io.BufferedReader), var1563-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var1563-to-var1239=([java.io.InputStreamReader], java.io.Reader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), print/-1969040762=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1469=java.lang.Object, var2015=r11, var268=r0, var2375=r3, var2197=jdk.nashorn.internal.runtime.Undefined, var1036=jdk.nashorn.internal.runtime.ScriptRuntime, var833=$r1, var577=jdk.nashorn.internal.runtime.JSType, var1208=$r12, var1221=r2, var2613=$r4, var3433=$r13, var95=r5, var1065=java.io.BufferedReader, var3427=$r6, var1563=java.io.InputStreamReader, var2913=$r7, var277=java.io.InputStream, var817=java.lang.System, var3770=$r8, var1239=java.io.Reader, var3470=$r9, var3269=java.io.PrintStream, var1635=$r14, var2124=$r15, var979=null_type, var2228=$r10}
; {java.lang.Object=var1469, r11=var2015, r0=var268, r3=var2375, jdk.nashorn.internal.runtime.Undefined=var2197, jdk.nashorn.internal.runtime.ScriptRuntime=var1036, $r1=var833, jdk.nashorn.internal.runtime.JSType=var577, $r12=var1208, r2=var1221, $r4=var2613, $r13=var3433, r5=var95, java.io.BufferedReader=var1065, $r6=var3427, java.io.InputStreamReader=var1563, $r7=var2913, java.io.InputStream=var277, java.lang.System=var817, $r8=var3770, java.io.Reader=var1239, $r9=var3470, java.io.PrintStream=var3269, $r14=var1635, $r15=var2124, null_type=var979, $r10=var2228}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	$r1 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r0 == $r1 goto $r12 = "";	$r12 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	goto [?= r2 = $r12];	r2 = $r12;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 == $r4 goto $r13 = ">> ";	$r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3);	goto [?= r5 = $r13];	r5 = $r13;	$r6 = new java.io.BufferedReader;	$r7 = new java.io.InputStreamReader;	$r8 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r7.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r8);	specialinvoke $r6.<java.io.BufferedReader: void <init>(java.io.Reader)>($r7);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r14 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r14.<java.io.PrintStream: void print(java.lang.String)>(r5);	$r15 = virtualinvoke $r6.<java.io.BufferedReader: java.lang.String readLine()>();	if $r15 == null goto $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 7