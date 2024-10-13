(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1145 0)
(declare-sort var430 0)
(declare-sort var2204 0)
(declare-sort var1336 0)
(declare-sort var2498 0)
(declare-sort var1123 0)
(declare-sort var3376 0)
(declare-sort var246 0)
(declare-sort var720 0)
(declare-sort var2197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3376!class ClassObject)
(declare-fun var430-init () var430)
(declare-fun <init>/-1724395088 (var430 var2204) void)
(declare-fun var2498_isCallable/-814261722 (var1145) Bool)
(declare-fun replacerFunction/906978120 (var430) var1145)
(declare-fun var1123_toPrimitive/1704974141 (var1145 ClassObject) var1145)
(declare-fun var1123_toNumber/1589859753 (var1145) Float64)
(declare-fun cast-from-Float64-to-var1145 (Float64) var1145)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var1123_isString/-1349252463 (var1145) Bool)
(declare-fun gap/906978120 (var430) String)
(declare-fun var720_newEmptyInstance/-1533132012 () var246)
(declare-fun set/-239134907 (var246 var1145 var1145 Int) void)
(declare-fun cast-from-String-to-var1145 (String) var1145)
(declare-fun var2197_str/1408181749 (var1145 var1145 var430) var1145)
(declare-fun cast-from-var246-to-var1145 (var246) var1145)
(declare-const null-var1145 var1145)
(declare-const null-NullType var1336)
(declare-const null-var2204 var2204)
(declare-const null-var430 var430)
(declare-const var3988 var1145) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var3988 null-var1145)))
(declare-const var2580 var1145) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2580 null-var1145)))
(declare-const var2660 var1145) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var2660 null-var1145)))
(declare-const var1872 var1145) ; Statement: r2 := @parameter3: java.lang.Object 
(assert (not (= var1872 null-var1145)))
(define-const var2627 var430 var430-init) ; Statement: $r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState 
(assert true)
;(assert (<init>/-1724395088 var2627 null-var2204)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null) 

(declare-const var2627!1 var430)
(declare-const var143 var1336)
(define-const var1199 Bool (var2498_isCallable/-814261722 var2660)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1) 
(assert (not (= (ite var1199 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2627!2 var430)
(assert (not (= var2627!2 null-var430)))
(assert (= (replacerFunction/906978120 var2627!2) var2660)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1 
 ; Statement: goto [?= r14 = r2] 
(assert true) ; Non Conditional
(define-const var3649 var1145 var1872) ; Statement: r14 = r2 
(define-const var1573 Bool false) ; Statement: $z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber 
 ; Statement: if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
(assert (not (= (ite var1573 1 0) 0))) ; Negate: Cond: $z13 == 0  
(define-const var2429 var1145 (var1123_toPrimitive/1704974141 var1872 var3376!class)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;") 
(define-const var763 Float64 (var1123_toNumber/1589859753 var2429)) ; Statement: $d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>($r6) 
(define-const var3649!1 var1145 (cast-from-Float64-to-var1145 (Float64_valueOf/679560954 var763))) ; Statement: r14 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
 ; Statement: goto [?= $z14 = r14 instanceof java.lang.Number] 
(assert true) ; Non Conditional
(define-const var3871 Bool false) ; Statement: $z14 = r14 instanceof java.lang.Number 
 ; Statement: if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
(assert (= (ite var3871 1 0) 0)) ; Cond: $z14 == 0 
(define-const var3958 Bool (var1123_isString/-1349252463 var3649!1)) ; Statement: $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
 ; Statement: if $z3 == 0 goto r15 = "" 
(assert (= (ite var3958 1 0) 0)) ; Cond: $z3 == 0 
(define-const var419 String "") ; Statement: r15 = "" 
(assert true) ; Non Conditional
(declare-const var2627!3 var430)
(assert (not (= var2627!3 null-var430)))
(assert (= (gap/906978120 var2627!3) var419)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15 
(define-const var955 var246 var720_newEmptyInstance/-1533132012) ; Statement: $r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>() 
(assert true)
;(assert (set/-239134907 var955 (cast-from-String-to-var1145 "") var2580 0)) ; Statement: virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0) 

(declare-const var955!1 var246)
(declare-const var936 String)
(declare-const var2580!1 var1145)
(declare-const var3786 Int)
(define-const var1908 var1145 (var2197_str/1408181749 (cast-from-String-to-var1145 "") (cast-from-var246-to-var1145 var955!1) var2627!3)) ; Statement: $r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var430-init=([], jdk.nashorn.internal.objects.NativeJSON$StringifyState), <init>/-1724395088=([jdk.nashorn.internal.objects.NativeJSON$StringifyState, jdk.nashorn.internal.objects.NativeJSON$1], void), var2498_isCallable/-814261722=([java.lang.Object], boolean), replacerFunction/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), var1123_toPrimitive/1704974141=([java.lang.Object, java.lang.Class], java.lang.Object), var1123_toNumber/1589859753=([java.lang.Object], double), cast-from-Float64-to-var1145=([java.lang.Double], java.lang.Object), Float64_valueOf/679560954=([double], java.lang.Double), var1123_isString/-1349252463=([java.lang.Object], boolean), gap/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.String), var720_newEmptyInstance/-1533132012=([], jdk.nashorn.internal.runtime.ScriptObject), set/-239134907=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object, java.lang.Object, int], void), cast-from-String-to-var1145=([java.lang.String], java.lang.Object), var2197_str/1408181749=([java.lang.Object, java.lang.Object, jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), cast-from-var246-to-var1145=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var1145=java.lang.Object, var3988=r9, var2580=r3, var2660=r1, var1872=r2, var430=jdk.nashorn.internal.objects.NativeJSON$StringifyState, var2627=$r0, var2204=jdk.nashorn.internal.objects.NativeJSON$1, var143=null, var1336=null_type, var2498=jdk.nashorn.internal.runtime.linker.Bootstrap, var1199=$z0, var3649=r14, var1573=$z13, var1123=jdk.nashorn.internal.runtime.JSType, var3376=java.lang.Number, var2429=$r6, var763=$d0, var3871=$z14, var3958=$z3, var419=r15, var246=jdk.nashorn.internal.runtime.ScriptObject, var720=jdk.nashorn.internal.objects.Global, var955=$r17, var936="", var3786=0, var2197=jdk.nashorn.internal.objects.NativeJSON, var1908=$r18}
; {java.lang.Object=var1145, r9=var3988, r3=var2580, r1=var2660, r2=var1872, jdk.nashorn.internal.objects.NativeJSON$StringifyState=var430, $r0=var2627, jdk.nashorn.internal.objects.NativeJSON$1=var2204, null=var143, null_type=var1336, jdk.nashorn.internal.runtime.linker.Bootstrap=var2498, $z0=var1199, r14=var3649, $z13=var1573, jdk.nashorn.internal.runtime.JSType=var1123, java.lang.Number=var3376, $r6=var2429, $d0=var763, $z14=var3871, $z3=var3958, r15=var419, jdk.nashorn.internal.runtime.ScriptObject=var246, jdk.nashorn.internal.objects.Global=var720, $r17=var955, ""=var936, 0=var3786, jdk.nashorn.internal.objects.NativeJSON=var2197, $r18=var1908}
;seq 
;cnt {}
;stmts r9 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: java.lang.Object;	$r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState;	specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1);	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1;	goto [?= r14 = r2];	r14 = r2;	$z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber;	if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	$r6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.Object toPrimitive(java.lang.Object,java.lang.Class)>(r2, class "Ljava/lang/Number;");	$d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>($r6);	r14 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	goto [?= $z14 = r14 instanceof java.lang.Number];	$z14 = r14 instanceof java.lang.Number;	if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	$z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	if $z3 == 0 goto r15 = "";	r15 = "";	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15;	$r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>();	virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0);	$r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0);	return $r18
;block_num 8