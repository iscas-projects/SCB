(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort var1727 0)
(declare-sort var2074 0)
(declare-sort var513 0)
(declare-sort var3098 0)
(declare-sort var2565 0)
(declare-sort var1635 0)
(declare-sort var21 0)
(declare-sort var3121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1727-init () var1727)
(declare-fun <init>/-1724395088 (var1727 var2074) void)
(declare-fun var3098_isCallable/-814261722 (var3829) Bool)
(declare-fun replacerFunction/906978120 (var1727) var3829)
(declare-fun var2565_isString/-1349252463 (var3829) Bool)
(declare-fun gap/906978120 (var1727) String)
(declare-fun var21_newEmptyInstance/-1533132012 () var1635)
(declare-fun set/-239134907 (var1635 var3829 var3829 Int) void)
(declare-fun cast-from-String-to-var3829 (String) var3829)
(declare-fun var3121_str/1408181749 (var3829 var3829 var1727) var3829)
(declare-fun cast-from-var1635-to-var3829 (var1635) var3829)
(declare-const null-var3829 var3829)
(declare-const null-NullType var513)
(declare-const null-var2074 var2074)
(declare-const null-var1727 var1727)
(declare-const var2729 var3829) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var2729 null-var3829)))
(declare-const var1856 var3829) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1856 null-var3829)))
(declare-const var3435 var3829) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var3435 null-var3829)))
(declare-const var1029 var3829) ; Statement: r2 := @parameter3: java.lang.Object 
(assert (not (= var1029 null-var3829)))
(define-const var1348 var1727 var1727-init) ; Statement: $r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState 
(assert true)
;(assert (<init>/-1724395088 var1348 null-var2074)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null) 

(declare-const var1348!1 var1727)
(declare-const var1817 var513)
(define-const var885 Bool (var3098_isCallable/-814261722 var3435)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1) 
(assert (not (= (ite var885 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1348!2 var1727)
(assert (not (= var1348!2 null-var1727)))
(assert (= (replacerFunction/906978120 var1348!2) var3435)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1 
 ; Statement: goto [?= r14 = r2] 
(assert true) ; Non Conditional
(define-const var3887 var3829 var1029) ; Statement: r14 = r2 
(define-const var3370 Bool false) ; Statement: $z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber 
 ; Statement: if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
(assert (= (ite var3370 1 0) 0)) ; Cond: $z13 == 0 
(define-const var2210 Bool false) ; Statement: $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString 
 ; Statement: if $z2 == 0 goto $z14 = r14 instanceof java.lang.Number 
(assert (= (ite var2210 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3459 Bool false) ; Statement: $z14 = r14 instanceof java.lang.Number 
 ; Statement: if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
(assert (= (ite var3459 1 0) 0)) ; Cond: $z14 == 0 
(define-const var3809 Bool (var2565_isString/-1349252463 var3887)) ; Statement: $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14) 
 ; Statement: if $z3 == 0 goto r15 = "" 
(assert (= (ite var3809 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3220 String "") ; Statement: r15 = "" 
(assert true) ; Non Conditional
(declare-const var1348!3 var1727)
(assert (not (= var1348!3 null-var1727)))
(assert (= (gap/906978120 var1348!3) var3220)) ; Statement: $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15 
(define-const var3136 var1635 var21_newEmptyInstance/-1533132012) ; Statement: $r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>() 
(assert true)
;(assert (set/-239134907 var3136 (cast-from-String-to-var3829 "") var1856 0)) ; Statement: virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0) 

(declare-const var3136!1 var1635)
(declare-const var708 String)
(declare-const var1856!1 var3829)
(declare-const var3423 Int)
(define-const var2442 var3829 (var3121_str/1408181749 (cast-from-String-to-var3829 "") (cast-from-var1635-to-var3829 var3136!1) var1348!3)) ; Statement: $r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1727-init=([], jdk.nashorn.internal.objects.NativeJSON$StringifyState), <init>/-1724395088=([jdk.nashorn.internal.objects.NativeJSON$StringifyState, jdk.nashorn.internal.objects.NativeJSON$1], void), var3098_isCallable/-814261722=([java.lang.Object], boolean), replacerFunction/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), var2565_isString/-1349252463=([java.lang.Object], boolean), gap/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.String), var21_newEmptyInstance/-1533132012=([], jdk.nashorn.internal.runtime.ScriptObject), set/-239134907=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object, java.lang.Object, int], void), cast-from-String-to-var3829=([java.lang.String], java.lang.Object), var3121_str/1408181749=([java.lang.Object, java.lang.Object, jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), cast-from-var1635-to-var3829=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var3829=java.lang.Object, var2729=r9, var1856=r3, var3435=r1, var1029=r2, var1727=jdk.nashorn.internal.objects.NativeJSON$StringifyState, var1348=$r0, var2074=jdk.nashorn.internal.objects.NativeJSON$1, var1817=null, var513=null_type, var3098=jdk.nashorn.internal.runtime.linker.Bootstrap, var885=$z0, var3887=r14, var3370=$z13, var2210=$z2, var3459=$z14, var2565=jdk.nashorn.internal.runtime.JSType, var3809=$z3, var3220=r15, var1635=jdk.nashorn.internal.runtime.ScriptObject, var21=jdk.nashorn.internal.objects.Global, var3136=$r17, var708="", var3423=0, var3121=jdk.nashorn.internal.objects.NativeJSON, var2442=$r18}
; {java.lang.Object=var3829, r9=var2729, r3=var1856, r1=var3435, r2=var1029, jdk.nashorn.internal.objects.NativeJSON$StringifyState=var1727, $r0=var1348, jdk.nashorn.internal.objects.NativeJSON$1=var2074, null=var1817, null_type=var513, jdk.nashorn.internal.runtime.linker.Bootstrap=var3098, $z0=var885, r14=var3887, $z13=var3370, $z2=var2210, $z14=var3459, jdk.nashorn.internal.runtime.JSType=var2565, $z3=var3809, r15=var3220, jdk.nashorn.internal.runtime.ScriptObject=var1635, jdk.nashorn.internal.objects.Global=var21, $r17=var3136, ""=var708, 0=var3423, jdk.nashorn.internal.objects.NativeJSON=var3121, $r18=var2442}
;seq 
;cnt {}
;stmts r9 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: java.lang.Object;	$r0 = new jdk.nashorn.internal.objects.NativeJSON$StringifyState;	specialinvoke $r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: void <init>(jdk.nashorn.internal.objects.NativeJSON$1)>(null);	$z0 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: boolean isCallable(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: boolean isArray(java.lang.Object)>(r1);	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = r1;	goto [?= r14 = r2];	r14 = r2;	$z13 = r2 instanceof jdk.nashorn.internal.objects.NativeNumber;	if $z13 == 0 goto $z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	$z2 = r2 instanceof jdk.nashorn.internal.objects.NativeString;	if $z2 == 0 goto $z14 = r14 instanceof java.lang.Number;	$z14 = r14 instanceof java.lang.Number;	if $z14 == 0 goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	$z3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: boolean isString(java.lang.Object)>(r14);	if $z3 == 0 goto r15 = "";	r15 = "";	$r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = r15;	$r17 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newEmptyInstance()>();	virtualinvoke $r17.<jdk.nashorn.internal.runtime.ScriptObject: void set(java.lang.Object,java.lang.Object,int)>("", r3, 0);	$r18 = staticinvoke <jdk.nashorn.internal.objects.NativeJSON: java.lang.Object str(java.lang.Object,java.lang.Object,jdk.nashorn.internal.objects.NativeJSON$StringifyState)>("", $r17, $r0);	return $r18
;block_num 8