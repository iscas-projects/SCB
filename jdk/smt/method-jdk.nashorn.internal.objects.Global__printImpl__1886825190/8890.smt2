(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var507 0)
(declare-sort var2770 0)
(declare-sort var241 0)
(declare-sort var477 0)
(declare-sort var3919 0)
(declare-sort var137 0)
(declare-sort var1187 0)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentContext/-1050779056 (var507) var241)
(declare-fun getContext/2090148484 (var507) var477)
(declare-fun getEnv/-1085769023 (var477) var3919)
(declare-fun getOut/1568846174 (var3919) var137)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var2770-1 ((Array Int var2770)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var137 String) void)
(declare-fun flush/-1073200041 (var137) void)
(declare-const null-var507 var507)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2770__ (Array Int var2770))
(declare-const null-var241 var241)
(declare-const var2944-UNDEFINED var1187)
(declare-const var162 var507) ; Statement: r0 := @this: jdk.nashorn.internal.objects.Global 
(assert (not (= var162 null-var507)))
(declare-const var2286 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2286 null-Bool)))
(declare-const var1740 (Array Int var2770)) ; Statement: r6 := @parameter1: java.lang.Object[] 
(assert (not (= var1740 null-__Array__Int__var2770__)))
(assert true)
(define-const var1447 var241 (currentContext/-1050779056 var162)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert (= var1447 null-var241)) ; Cond: r1 == null 
(assert true)
(define-const var1452 var477 (getContext/2090148484 var162)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert true)
(define-const var2674 var3919 (getEnv/-1085769023 var1452)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>() 
(assert true)
(define-const var3365 var137 (getOut/1568846174 var2674)) ; Statement: $r13 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getOut()>() 
(assert true) ; Non Conditional
(define-const var2030 var137 var3365) ; Statement: r4 = $r13 
(define-const var2258 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2258)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2258!1 String)
(assert (= var2258!1 ""))
(define-const var3583 Int (getLength-Arr-var2770-1 var1740)) ; Statement: $i1 = lengthof r6 
(define-const var2284 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto (branch) 
(assert (>= var2284 var3583)) ; Cond: i2 >= $i1 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2286 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var1902 String (toString/-2075883882 var2258!1)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2030 var1902)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var2030!1 var137)
(declare-const var1902!1 String)
 ; Statement: goto [?= virtualinvoke r4.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var2030!1)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void flush()>() 

(declare-const var2030!2 var137)
(define-const var2879 var1187 var2944-UNDEFINED) ; Statement: $r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {currentContext/-1050779056=([jdk.nashorn.internal.objects.Global], javax.script.ScriptContext), getContext/2090148484=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.Context), getEnv/-1085769023=([jdk.nashorn.internal.runtime.Context], jdk.nashorn.internal.runtime.ScriptEnvironment), getOut/1568846174=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var2770-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var507=jdk.nashorn.internal.objects.Global, var162=r0, var2286=z0, var2770=java.lang.Object, var1740=r6, var241=javax.script.ScriptContext, var1447=r1, var477=jdk.nashorn.internal.runtime.Context, var1452=$r2, var3919=jdk.nashorn.internal.runtime.ScriptEnvironment, var2674=$r3, var137=java.io.PrintWriter, var3365=$r13, var2030=r4, var2258=$r5, var3583=$i1, var2284=i2, var1902=$r9, var1187=jdk.nashorn.internal.runtime.Undefined, var2944=jdk.nashorn.internal.runtime.ScriptRuntime, var2879=$r8}
; {jdk.nashorn.internal.objects.Global=var507, r0=var162, z0=var2286, java.lang.Object=var2770, r6=var1740, javax.script.ScriptContext=var241, r1=var1447, jdk.nashorn.internal.runtime.Context=var477, $r2=var1452, jdk.nashorn.internal.runtime.ScriptEnvironment=var3919, $r3=var2674, java.io.PrintWriter=var137, $r13=var3365, r4=var2030, $r5=var2258, $i1=var3583, i2=var2284, $r9=var1902, jdk.nashorn.internal.runtime.Undefined=var1187, jdk.nashorn.internal.runtime.ScriptRuntime=var2944, $r8=var2879}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.Global;	z0 := @parameter0: boolean;	r6 := @parameter1: java.lang.Object[];	r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>();	if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>();	$r13 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getOut()>();	r4 = $r13;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i1 = lengthof r6;	i2 = 0;	if i2 >= $i1 goto (branch);	if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r9);	goto [?= virtualinvoke r4.<java.io.PrintWriter: void flush()>()];	virtualinvoke r4.<java.io.PrintWriter: void flush()>();	$r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	return $r8
;block_num 7