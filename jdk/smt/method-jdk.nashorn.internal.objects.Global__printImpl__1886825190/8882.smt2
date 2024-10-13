(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var1500 0)
(declare-sort var429 0)
(declare-sort var1921 0)
(declare-sort var2657 0)
(declare-sort var2440 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentContext/-1050779056 (var1738) var429)
(declare-fun var1921-init () var1921)
(declare-fun var429_getWriter/1406962570 (var429) var2657)
(declare-fun <init>/-1864438596 (var1921 var2657) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var1500-1 ((Array Int var1500)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var1921 String) void)
(declare-fun flush/-1073200041 (var1921) void)
(declare-const null-var1738 var1738)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1500__ (Array Int var1500))
(declare-const null-var429 var429)
(declare-const var2597-UNDEFINED var2440)
(declare-const var1185 var1738) ; Statement: r0 := @this: jdk.nashorn.internal.objects.Global 
(assert (not (= var1185 null-var1738)))
(declare-const var2234 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2234 null-Bool)))
(declare-const var3021 (Array Int var1500)) ; Statement: r6 := @parameter1: java.lang.Object[] 
(assert (not (= var3021 null-__Array__Int__var1500__)))
(assert true)
(define-const var280 var429 (currentContext/-1050779056 var1185)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert (not (= var280 null-var429))) ; Negate: Cond: r1 == null  
(define-const var3792 var1921 var1921-init) ; Statement: $r13 = new java.io.PrintWriter 
(define-const var762 var2657 (var429_getWriter/1406962570 var280)) ; Statement: $r12 = interfaceinvoke r1.<javax.script.ScriptContext: java.io.Writer getWriter()>() 
(assert true)
;(assert (<init>/-1864438596 var3792 var762)) ; Statement: specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12) 

(declare-const var3792!1 var1921)
(declare-const var762!1 var2657)
 ; Statement: goto [?= r4 = $r13] 
(assert true) ; Non Conditional
(define-const var3294 var1921 var3792!1) ; Statement: r4 = $r13 
(define-const var2770 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2770)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2770!1 String)
(assert (= var2770!1 ""))
(define-const var2200 Int (getLength-Arr-var1500-1 var3021)) ; Statement: $i1 = lengthof r6 
(define-const var1557 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto (branch) 
(assert (>= var1557 var2200)) ; Cond: i2 >= $i1 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2234 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2334 String (toString/-2075883882 var2770!1)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var3294 var2334)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void print(java.lang.String)>($r7) 

(declare-const var3294!1 var1921)
(declare-const var2334!1 String)
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var3294!1)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void flush()>() 

(declare-const var3294!2 var1921)
(define-const var1771 var2440 var2597-UNDEFINED) ; Statement: $r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {currentContext/-1050779056=([jdk.nashorn.internal.objects.Global], javax.script.ScriptContext), var1921-init=([], java.io.PrintWriter), var429_getWriter/1406962570=([javax.script.ScriptContext], java.io.Writer), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var1500-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var1738=jdk.nashorn.internal.objects.Global, var1185=r0, var2234=z0, var1500=java.lang.Object, var3021=r6, var429=javax.script.ScriptContext, var280=r1, var1921=java.io.PrintWriter, var3792=$r13, var2657=java.io.Writer, var762=$r12, var3294=r4, var2770=$r5, var2200=$i1, var1557=i2, var2334=$r7, var2440=jdk.nashorn.internal.runtime.Undefined, var2597=jdk.nashorn.internal.runtime.ScriptRuntime, var1771=$r8}
; {jdk.nashorn.internal.objects.Global=var1738, r0=var1185, z0=var2234, java.lang.Object=var1500, r6=var3021, javax.script.ScriptContext=var429, r1=var280, java.io.PrintWriter=var1921, $r13=var3792, java.io.Writer=var2657, $r12=var762, r4=var3294, $r5=var2770, $i1=var2200, i2=var1557, $r7=var2334, jdk.nashorn.internal.runtime.Undefined=var2440, jdk.nashorn.internal.runtime.ScriptRuntime=var2597, $r8=var1771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.Global;	z0 := @parameter0: boolean;	r6 := @parameter1: java.lang.Object[];	r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>();	if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r13 = new java.io.PrintWriter;	$r12 = interfaceinvoke r1.<javax.script.ScriptContext: java.io.Writer getWriter()>();	specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12);	goto [?= r4 = $r13];	r4 = $r13;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i1 = lengthof r6;	i2 = 0;	if i2 >= $i1 goto (branch);	if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<java.io.PrintWriter: void print(java.lang.String)>($r7);	virtualinvoke r4.<java.io.PrintWriter: void flush()>();	$r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	return $r8
;block_num 7