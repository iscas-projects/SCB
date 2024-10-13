(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var3044 0)
(declare-sort var703 0)
(declare-sort var3881 0)
(declare-sort var1522 0)
(declare-sort var2675 0)
(declare-sort var2692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentContext/-1050779056 (var2338) var703)
(declare-fun var3881-init () var3881)
(declare-fun var703_getWriter/1406962570 (var703) var1522)
(declare-fun <init>/-1864438596 (var3881 var1522) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var3044-1 ((Array Int var3044)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var3881 String) void)
(declare-fun flush/-1073200041 (var3881) void)
(declare-const null-var2338 var2338)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3044__ (Array Int var3044))
(declare-const null-var703 var703)
(declare-const var2692-UNDEFINED var2675)
(declare-const var3942 var2338) ; Statement: r0 := @this: jdk.nashorn.internal.objects.Global 
(assert (not (= var3942 null-var2338)))
(declare-const var1041 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1041 null-Bool)))
(declare-const var2872 (Array Int var3044)) ; Statement: r6 := @parameter1: java.lang.Object[] 
(assert (not (= var2872 null-__Array__Int__var3044__)))
(assert true)
(define-const var2236 var703 (currentContext/-1050779056 var3942)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert (not (= var2236 null-var703))) ; Negate: Cond: r1 == null  
(define-const var2574 var3881 var3881-init) ; Statement: $r13 = new java.io.PrintWriter 
(define-const var3302 var1522 (var703_getWriter/1406962570 var2236)) ; Statement: $r12 = interfaceinvoke r1.<javax.script.ScriptContext: java.io.Writer getWriter()>() 
(assert true)
;(assert (<init>/-1864438596 var2574 var3302)) ; Statement: specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12) 

(declare-const var2574!1 var3881)
(declare-const var3302!1 var1522)
 ; Statement: goto [?= r4 = $r13] 
(assert true) ; Non Conditional
(define-const var446 var3881 var2574!1) ; Statement: r4 = $r13 
(define-const var1461 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1461)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1461!1 String)
(assert (= var1461!1 ""))
(define-const var1185 Int (getLength-Arr-var3044-1 var2872)) ; Statement: $i1 = lengthof r6 
(define-const var3995 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto (branch) 
(assert (>= var3995 var1185)) ; Cond: i2 >= $i1 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1041 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2504 String (toString/-2075883882 var1461!1)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var446 var2504)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var446!1 var3881)
(declare-const var2504!1 String)
 ; Statement: goto [?= virtualinvoke r4.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var446!1)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void flush()>() 

(declare-const var446!2 var3881)
(define-const var2821 var2675 var2692-UNDEFINED) ; Statement: $r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {currentContext/-1050779056=([jdk.nashorn.internal.objects.Global], javax.script.ScriptContext), var3881-init=([], java.io.PrintWriter), var703_getWriter/1406962570=([javax.script.ScriptContext], java.io.Writer), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var3044-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var2338=jdk.nashorn.internal.objects.Global, var3942=r0, var1041=z0, var3044=java.lang.Object, var2872=r6, var703=javax.script.ScriptContext, var2236=r1, var3881=java.io.PrintWriter, var2574=$r13, var1522=java.io.Writer, var3302=$r12, var446=r4, var1461=$r5, var1185=$i1, var3995=i2, var2504=$r9, var2675=jdk.nashorn.internal.runtime.Undefined, var2692=jdk.nashorn.internal.runtime.ScriptRuntime, var2821=$r8}
; {jdk.nashorn.internal.objects.Global=var2338, r0=var3942, z0=var1041, java.lang.Object=var3044, r6=var2872, javax.script.ScriptContext=var703, r1=var2236, java.io.PrintWriter=var3881, $r13=var2574, java.io.Writer=var1522, $r12=var3302, r4=var446, $r5=var1461, $i1=var1185, i2=var3995, $r9=var2504, jdk.nashorn.internal.runtime.Undefined=var2675, jdk.nashorn.internal.runtime.ScriptRuntime=var2692, $r8=var2821}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.Global;	z0 := @parameter0: boolean;	r6 := @parameter1: java.lang.Object[];	r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>();	if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r13 = new java.io.PrintWriter;	$r12 = interfaceinvoke r1.<javax.script.ScriptContext: java.io.Writer getWriter()>();	specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12);	goto [?= r4 = $r13];	r4 = $r13;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i1 = lengthof r6;	i2 = 0;	if i2 >= $i1 goto (branch);	if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<java.io.PrintWriter: void println(java.lang.String)>($r9);	goto [?= virtualinvoke r4.<java.io.PrintWriter: void flush()>()];	virtualinvoke r4.<java.io.PrintWriter: void flush()>();	$r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	return $r8
;block_num 7