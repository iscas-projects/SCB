(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var951 0)
(declare-sort var3173 0)
(declare-sort var1445 0)
(declare-sort var2204 0)
(declare-sort var2683 0)
(declare-sort var3577 0)
(declare-sort var2428 0)
(declare-sort var2755 0)
(declare-sort var3472 0)
(declare-sort var1544 0)
(declare-sort var19 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2428!class ClassObject)
(declare-fun var3173-init () var3173)
(declare-fun <init>/-1724395088 (var3173 var1445) void)
(declare-fun var2683_isCallable/-814261722 (var951) Bool)
(declare-fun replacerFunction/906978120 (var3173) var951)
(declare-fun var3577_toPrimitive/1704974141 (var951 ClassObject) var951)
(declare-fun var3577_toNumber/1589859753 (var951) Float64)
(declare-fun cast-from-Float64-to-var951 (Float64) var951)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var3577_isString/-1349252463 (var951) Bool)
(declare-fun toString/-522406933 (var951) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2755_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun gap/906978120 (var3173) String)
(declare-fun var1544_newEmptyInstance/-1533132012 () var3472)
(declare-fun set/-239134907 (var3472 var951 var951 Int) void)
(declare-fun cast-from-String-to-var951 (String) var951)
(declare-fun var19_str/1408181749 (var951 var951 var3173) var951)
(declare-fun cast-from-var3472-to-var951 (var3472) var951)
(declare-const null-var951 var951)
(declare-const null-NullType var2204)
(declare-const null-var1445 var1445)
(declare-const null-var3173 var3173)
(declare-const var1870 var951) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var1870 null-var951)))
(declare-const var3861 var951) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3861 null-var951)))
(declare-const var3796 var951) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var3796 null-var951)))
(declare-const var2914 var951) ; Statement: r2 := @parameter3: java.lang.Object 
(assert (not (= var2914 null-var951)))
(define-const var2074 var3173 var3173-init) ; Statement: $r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState 
(assert true)
;(assert (<init>/-1724395088 var2074 null-var1445)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null) 

(declare-const var2074!1 var3173)
(declare-const var3017 var2204)
(define-const var735 Bool (var2683_isCallable/-814261722 var3796)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1) 
(assert (not (= (ite var735 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2074!2 var3173)
(assert (not (= var2074!2 null-var3173)))
(assert (= (replacerFunction/906978120 var2074!2) var3796)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1 
 ; Statement: goto [?= r14 = r2] 
(assert true) ; Non Conditional
(define-const var1799 var951 var2914) ; Statement: r14 = r2 
(define-const var1392 Bool false) ; Statement: $z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber 
 ; Statement: if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
(assert (not (= (ite var1392 1 0) 0))) ; Negate: Cond: $z13 == 0  
(define-const var1802 var951 (var3577_toPrimitive/1704974141 var2914 var2428!class)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var3389 Float64 (var3577_toNumber/1589859753 var1802)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>($r6) 
(define-const var1799!1 var951 (cast-from-Float64-to-var951 (Float64_valueOf/679560954 var3389))) ; Statement: r14 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
 ; Statement: goto [?= $z14 = r14 instanceof java.lang.Number] 
(assert true) ; Non Conditional
(define-const var2296 Bool false) ; Statement: $z14 = r14 instanceof java.lang.Number 
 ; Statement: if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
(assert (= (ite var2296 1 0) 0)) ; Cond: $z14 == 0 
(define-const var727 Bool (var3577_isString/-1349252463 var1799!1)) ; Statement: $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
 ; Statement: if $z3 == 0 goto r15 = "" 
(assert (not (= (ite var727 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var3151 String (toString/-522406933 var1799!1)) ; Statement: r16 = virtualinvoke r14.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var173 Int (length/-134980193 var3151)) ; Statement: $i0 = virtualinvoke r16.<java.lang.String: int length()>() 
(define-const var27 Int (var2755_min/-1112089438 10 var173)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>(10, $i0) 
(assert (not (and true (and (>= 0 0) (>= (str.len var3151) var27) (>= var27 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3173-init=([], jdk.nashorn.internal.objects.NativeJSON$StringifyState), <init>/-1724395088=([jdk.nashorn.internal.objects.NativeJSON$StringifyState, jdk.nashorn.internal.objects.NativeJSON$1], void), var2683_isCallable/-814261722=([java.lang.Object], boolean), replacerFunction/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), var3577_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var3577_toNumber/1589859753=([java.lang.Object], double), cast-from-Float64-to-var951=([java.lang.Double], java.lang.Object), Float64_valueOf/679560954=([double], java.lang.Double), var3577_isString/-1349252463=([java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var2755_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), gap/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.String), var1544_newEmptyInstance/-1533132012=([], jdk.nashorn.internal.runtime.ScriptObject), set/-239134907=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object, java.lang.Object, int], void), cast-from-String-to-var951=([java.lang.String], java.lang.Object), var19_str/1408181749=([java.lang.Object, java.lang.Object, jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), cast-from-var3472-to-var951=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var951=java.lang.Object, var1870=r9, var3861=r3, var3796=r1, var2914=r2, var3173=jdk.nashorn.internal.objects.NativeJSON$StringifyState, var2074=$r0, var1445=jdk.nashorn.internal.objects.NativeJSON$1, var3017=null, var2204=null_type, var2683=jdk.nashorn.internal.runtime.linker.Bootstrap, var735=$z0, var1799=r14, var1392=$z13, var3577=jdk.nashorn.internal.runtime.JSType, var2428=java.lang.Number, var1802=$r6, var3389=$d0, var2296=$z14, var727=$z3, var3151=r16, var173=$i0, var2755=java.lang.Math, var27=$i1, var3464=r15, var3472=jdk.nashorn.internal.runtime.ScriptObject, var1544=jdk.nashorn.internal.objects.Global, var2603=$r17, var1679="", var2091=0, var19=jdk.nashorn.internal.objects.NativeJSON, var1901=$r18}
; {java.lang.Object=var951, r9=var1870, r3=var3861, r1=var3796, r2=var2914, jdk.nashorn.internal.objects.NativeJSON$StringifyState=var3173, $r0=var2074, jdk.nashorn.internal.objects.NativeJSON$1=var1445, null=var3017, null_type=var2204, jdk.nashorn.internal.runtime.linker.Bootstrap=var2683, $z0=var735, r14=var1799, $z13=var1392, jdk.nashorn.internal.runtime.JSType=var3577, java.lang.Number=var2428, $r6=var1802, $d0=var3389, $z14=var2296, $z3=var727, r16=var3151, $i0=var173, java.lang.Math=var2755, $i1=var27, r15=var3464, jdk.nashorn.internal.runtime.ScriptObject=var3472, jdk.nashorn.internal.objects.Global=var1544, $r17=var2603, ""=var1679, 0=var2091, jdk.nashorn.internal.objects.NativeJSON=var19, $r18=var1901}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r9 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: java.lang.Object;	$r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState;	specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1);	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1;	goto [?= r14 = r2];	r14 = r2;	$z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber;	if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	$r6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>($r6);	r14 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	goto [?= $z14 = r14 instanceof java.lang.Number];	$z14 = r14 instanceof java.lang.Number;	if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	$z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	if $z3 == 0 goto r15 = "";	r16 = virtualinvoke r14.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke r16.<java.lang.String: int length()>();	$i1 = staticinvoke <java.lang.Math: int min(int,int)>(10, $i0);	r15 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	goto [?= $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15];	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15;	$r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>();	virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0);	$r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0);	return $r18
;block_num 8