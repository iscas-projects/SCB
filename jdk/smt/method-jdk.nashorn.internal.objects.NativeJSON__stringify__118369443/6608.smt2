(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3470 0)
(declare-sort var204 0)
(declare-sort var1226 0)
(declare-sort var2763 0)
(declare-sort var209 0)
(declare-sort var1196 0)
(declare-sort var1533 0)
(declare-sort var1243 0)
(declare-sort var884 0)
(declare-sort var3705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var204-init () var204)
(declare-fun <init>/-1724395088 (var204 var1226) void)
(declare-fun var209_isCallable/-814261722 (var3470) Bool)
(declare-fun replacerFunction/906978120 (var204) var3470)
(declare-fun var1196_isString/-1349252463 (var3470) Bool)
(declare-fun toString/-522406933 (var3470) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1533_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun gap/906978120 (var204) String)
(declare-fun var884_newEmptyInstance/-1533132012 () var1243)
(declare-fun set/-239134907 (var1243 var3470 var3470 Int) void)
(declare-fun cast-from-String-to-var3470 (String) var3470)
(declare-fun var3705_str/1408181749 (var3470 var3470 var204) var3470)
(declare-fun cast-from-var1243-to-var3470 (var1243) var3470)
(declare-const null-var3470 var3470)
(declare-const null-NullType var2763)
(declare-const null-var1226 var1226)
(declare-const null-var204 var204)
(declare-const var1481 var3470) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var1481 null-var3470)))
(declare-const var3872 var3470) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3872 null-var3470)))
(declare-const var3120 var3470) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var3120 null-var3470)))
(declare-const var3499 var3470) ; Statement: r2 := @parameter3: java.lang.Object 
(assert (not (= var3499 null-var3470)))
(define-const var273 var204 var204-init) ; Statement: $r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState 
(assert true)
;(assert (<init>/-1724395088 var273 null-var1226)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null) 

(declare-const var273!1 var204)
(declare-const var2662 var2763)
(define-const var3580 Bool (var209_isCallable/-814261722 var3120)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1) 
(assert (not (= (ite var3580 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var273!2 var204)
(assert (not (= var273!2 null-var204)))
(assert (= (replacerFunction/906978120 var273!2) var3120)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1 
 ; Statement: goto [?= r14 = r2] 
(assert true) ; Non Conditional
(define-const var3295 var3470 var3499) ; Statement: r14 = r2 
(define-const var3101 Bool false) ; Statement: $z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber 
 ; Statement: if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
(assert (= (ite var3101 1 0) 0)) ; Cond: $z13 == 0 
(define-const var3302 Bool false) ; Statement: $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
 ; Statement: if $z2 == 0 goto $z14 = r14 instanceof java.lang.Number 
(assert (= (ite var3302 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2688 Bool false) ; Statement: $z14 = r14 instanceof java.lang.Number 
 ; Statement: if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
(assert (= (ite var2688 1 0) 0)) ; Cond: $z14 == 0 
(define-const var2184 Bool (var1196_isString/-1349252463 var3295)) ; Statement: $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
 ; Statement: if $z3 == 0 goto r15 = "" 
(assert (not (= (ite var2184 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var2488 String (toString/-522406933 var3295)) ; Statement: r16 = virtualinvoke r14.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var733 Int (length/-134980193 var2488)) ; Statement: $i0 = virtualinvoke r16.<java.lang.String: int length()>() 
(define-const var2590 Int (var1533_min/-1112089438 10 var733)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>(10, $i0) 
(assert (and true (and (>= 0 0) (>= (str.len var2488) var2590) (>= var2590 0))))
(define-const var3271 String (substring/-1240304868 var2488 0 var2590)) ; Statement: r15 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
 ; Statement: goto [?= $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15] 
(assert true) ; Non Conditional
(declare-const var273!3 var204)
(assert (not (= var273!3 null-var204)))
(assert (= (gap/906978120 var273!3) var3271)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15 
(define-const var1374 var1243 var884_newEmptyInstance/-1533132012) ; Statement: $r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>() 
(assert true)
;(assert (set/-239134907 var1374 (cast-from-String-to-var3470 "") var3872 0)) ; Statement: virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0) 

(declare-const var1374!1 var1243)
(declare-const var1767 String)
(declare-const var3872!1 var3470)
(declare-const var2026 Int)
(define-const var2441 var3470 (var3705_str/1408181749 (cast-from-String-to-var3470 "") (cast-from-var1243-to-var3470 var1374!1) var273!3)) ; Statement: $r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var204-init=([], jdk.nashorn.internal.objects.NativeJSON$StringifyState), <init>/-1724395088=([jdk.nashorn.internal.objects.NativeJSON$StringifyState, jdk.nashorn.internal.objects.NativeJSON$1], void), var209_isCallable/-814261722=([java.lang.Object], boolean), replacerFunction/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), var1196_isString/-1349252463=([java.lang.Object], boolean), toString/-522406933=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var1533_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), gap/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.String), var884_newEmptyInstance/-1533132012=([], jdk.nashorn.internal.runtime.ScriptObject), set/-239134907=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object, java.lang.Object, int], void), cast-from-String-to-var3470=([java.lang.String], java.lang.Object), var3705_str/1408181749=([java.lang.Object, java.lang.Object, jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), cast-from-var1243-to-var3470=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var3470=java.lang.Object, var1481=r9, var3872=r3, var3120=r1, var3499=r2, var204=jdk.nashorn.internal.objects.NativeJSON$StringifyState, var273=$r0, var1226=jdk.nashorn.internal.objects.NativeJSON$1, var2662=null, var2763=null_type, var209=jdk.nashorn.internal.runtime.linker.Bootstrap, var3580=$z0, var3295=r14, var3101=$z13, var3302=$z2, var2688=$z14, var1196=jdk.nashorn.internal.runtime.JSType, var2184=$z3, var2488=r16, var733=$i0, var1533=java.lang.Math, var2590=$i1, var3271=r15, var1243=jdk.nashorn.internal.runtime.ScriptObject, var884=jdk.nashorn.internal.objects.Global, var1374=$r17, var1767="", var2026=0, var3705=jdk.nashorn.internal.objects.NativeJSON, var2441=$r18}
; {java.lang.Object=var3470, r9=var1481, r3=var3872, r1=var3120, r2=var3499, jdk.nashorn.internal.objects.NativeJSON$StringifyState=var204, $r0=var273, jdk.nashorn.internal.objects.NativeJSON$1=var1226, null=var2662, null_type=var2763, jdk.nashorn.internal.runtime.linker.Bootstrap=var209, $z0=var3580, r14=var3295, $z13=var3101, $z2=var3302, $z14=var2688, jdk.nashorn.internal.runtime.JSType=var1196, $z3=var2184, r16=var2488, $i0=var733, java.lang.Math=var1533, $i1=var2590, r15=var3271, jdk.nashorn.internal.runtime.ScriptObject=var1243, jdk.nashorn.internal.objects.Global=var884, $r17=var1374, ""=var1767, 0=var2026, jdk.nashorn.internal.objects.NativeJSON=var3705, $r18=var2441}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r9 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: java.lang.Object;	$r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState;	specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1);	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1;	goto [?= r14 = r2];	r14 = r2;	$z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber;	if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	$z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	if $z2 == 0 goto $z14 = r14 instanceof java.lang.Number;	$z14 = r14 instanceof java.lang.Number;	if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	$z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	if $z3 == 0 goto r15 = "";	r16 = virtualinvoke r14.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke r16.<java.lang.String: int length()>();	$i1 = staticinvoke <java.lang.Math: int min(int,int)>(10, $i0);	r15 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	goto [?= $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15];	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15;	$r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>();	virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0);	$r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0);	return $r18
;block_num 8