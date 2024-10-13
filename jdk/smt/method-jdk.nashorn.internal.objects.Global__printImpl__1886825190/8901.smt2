(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2131 0)
(declare-sort var2465 0)
(declare-sort var1060 0)
(declare-sort var1887 0)
(declare-sort var352 0)
(declare-sort var2835 0)
(declare-sort var3992 0)
(declare-sort var1024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentContext/-1050779056 (var2131) var1060)
(declare-fun getContext/2090148484 (var2131) var1887)
(declare-fun getEnv/-1085769023 (var1887) var352)
(declare-fun getOut/1568846174 (var352) var2835)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var2465-1 ((Array Int var2465)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var2835 String) void)
(declare-fun flush/-1073200041 (var2835) void)
(declare-const null-var2131 var2131)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2465__ (Array Int var2465))
(declare-const null-var1060 var1060)
(declare-const var1024-UNDEFINED var3992)
(declare-const var1362 var2131) ; Statement: r0 := @this: jdk.nashorn.internal.objects.Global 
(assert (not (= var1362 null-var2131)))
(declare-const var3859 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3859 null-Bool)))
(declare-const var1937 (Array Int var2465)) ; Statement: r6 := @parameter1: java.lang.Object[] 
(assert (not (= var1937 null-__Array__Int__var2465__)))
(assert true)
(define-const var3384 var1060 (currentContext/-1050779056 var1362)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert (= var3384 null-var1060)) ; Cond: r1 == null 
(assert true)
(define-const var130 var1887 (getContext/2090148484 var1362)) ; Statement: $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert true)
(define-const var3156 var352 (getEnv/-1085769023 var130)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>() 
(assert true)
(define-const var2009 var2835 (getOut/1568846174 var3156)) ; Statement: $r13 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getOut()>() 
(assert true) ; Non Conditional
(define-const var3950 var2835 var2009) ; Statement: r4 = $r13 
(define-const var2780 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2780)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2780!1 String)
(assert (= var2780!1 ""))
(define-const var2258 Int (getLength-Arr-var2465-1 var1937)) ; Statement: $i1 = lengthof r6 
(define-const var3101 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto (branch) 
(assert (>= var3101 var2258)) ; Cond: i2 >= $i1 
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3859 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1879 String (toString/-2075883882 var2780!1)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var3950 var1879)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void print(java.lang.String)>($r7) 

(declare-const var3950!1 var2835)
(declare-const var1879!1 String)
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var3950!1)) ; Statement: virtualinvoke r4.<java.io.PrintWriter: void flush()>() 

(declare-const var3950!2 var2835)
(define-const var230 var3992 var1024-UNDEFINED) ; Statement: $r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {currentContext/-1050779056=([jdk.nashorn.internal.objects.Global], javax.script.ScriptContext), getContext/2090148484=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.Context), getEnv/-1085769023=([jdk.nashorn.internal.runtime.Context], jdk.nashorn.internal.runtime.ScriptEnvironment), getOut/1568846174=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var2465-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var2131=jdk.nashorn.internal.objects.Global, var1362=r0, var3859=z0, var2465=java.lang.Object, var1937=r6, var1060=javax.script.ScriptContext, var3384=r1, var1887=jdk.nashorn.internal.runtime.Context, var130=$r2, var352=jdk.nashorn.internal.runtime.ScriptEnvironment, var3156=$r3, var2835=java.io.PrintWriter, var2009=$r13, var3950=r4, var2780=$r5, var2258=$i1, var3101=i2, var1879=$r7, var3992=jdk.nashorn.internal.runtime.Undefined, var1024=jdk.nashorn.internal.runtime.ScriptRuntime, var230=$r8}
; {jdk.nashorn.internal.objects.Global=var2131, r0=var1362, z0=var3859, java.lang.Object=var2465, r6=var1937, javax.script.ScriptContext=var1060, r1=var3384, jdk.nashorn.internal.runtime.Context=var1887, $r2=var130, jdk.nashorn.internal.runtime.ScriptEnvironment=var352, $r3=var3156, java.io.PrintWriter=var2835, $r13=var2009, r4=var3950, $r5=var2780, $i1=var2258, i2=var3101, $r7=var1879, jdk.nashorn.internal.runtime.Undefined=var3992, jdk.nashorn.internal.runtime.ScriptRuntime=var1024, $r8=var230}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.Global;	z0 := @parameter0: boolean;	r6 := @parameter1: java.lang.Object[];	r1 = specialinvoke r0.<jdk.nashorn.internal.objects.Global: javax.script.ScriptContext currentContext()>();	if r1 == null goto $r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r2 = virtualinvoke r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>();	$r13 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getOut()>();	r4 = $r13;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i1 = lengthof r6;	i2 = 0;	if i2 >= $i1 goto (branch);	if z0 == 0 goto $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<java.io.PrintWriter: void print(java.lang.String)>($r7);	virtualinvoke r4.<java.io.PrintWriter: void flush()>();	$r8 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	return $r8
;block_num 7