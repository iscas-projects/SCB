(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var341 0)
(declare-sort var3344 0)
(declare-sort var3300 0)
(declare-sort var3365 0)
(declare-sort var395 0)
(declare-sort var1411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAndSet/-2096274246 (var3344 var395 var395) var395)
(declare-fun cast-from-var3365-to-var395 (var3365) var395)
(declare-fun cast-from-var395-to-__Array__Int__Int__ (var395) (Array Int Int))
(declare-fun set/-1521643236 (var3344 var395 var395) void)
(declare-fun cast-from-__Array__Int__Int__-to-var395 ((Array Int Int)) var395)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3300-CHARS_UPDATER var3344)
(declare-const var3300-CACHE var3365)
(declare-const null-NullType var341)
(declare-const null-var395 var395)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1411 var1411)
(declare-const var2213 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2213 null-String)))
(declare-const var3431 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3431 null-Int)))
(declare-const var2795 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2795 null-Bool)))
(assert true)
(define-const var1355 Int (length/-134980193 var2213)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2118 var3344 var3300-CHARS_UPDATER) ; Statement: $r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var1551 var3365 var3300-CACHE) ; Statement: $r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
(define-const var3183 var395 (getAndSet/-2096274246 var2118 (cast-from-var3365-to-var395 var1551) null-var395)) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null) 
(define-const var1541 (Array Int Int) (cast-from-var395-to-__Array__Int__Int__ var3183)) ; Statement: r10 = (char[]) $r3 
 ; Statement: if r10 != null goto i6 = 0 
(assert (not (not (= var1541 null-__Array__Int__Int__)))) ; Negate: Cond: r10 != null  
(declare-const var2993 var1411) ; Statement: $r7 := @caughtexception 
(assert (not (= var2993 null-var1411)))
(assert true) ; Non Conditional
(define-const var1759 var3344 var3300-CHARS_UPDATER) ; Statement: $r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var1328 var3365 var3300-CACHE) ; Statement: $r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
;(assert (set/-1521643236 var1759 (cast-from-var3365-to-var395 var1328) (cast-from-__Array__Int__Int__-to-var395 var1541))) ; Statement: virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10) 

(declare-const var1759!1 var3344)
(declare-const var1328!1 var3365)
(declare-const var1541!1 (Array Int Int))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3365-to-var395=([com.alibaba.fastjson2.util.TypeUtils$Cache], java.lang.Object), cast-from-var395-to-__Array__Int__Int__=([java.lang.Object], char[]), set/-1521643236=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], void), cast-from-__Array__Int__Int__-to-var395=([char[]], java.lang.Object)}
; {var2213=r0, var341=null_type, var3431=i1, var2795=z0, var1355=i0, var3344=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var3300=com.alibaba.fastjson2.util.TypeUtils, var2118=$r2, var3365=com.alibaba.fastjson2.util.TypeUtils$Cache, var1551=$r1, var395=java.lang.Object, var3183=$r3, var1541=r10, var1411=java.lang.Throwable, var2993=$r7, var1759=$r9, var1328=$r8}
; {r0=var2213, null_type=var341, i1=var3431, z0=var2795, i0=var1355, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var3344, com.alibaba.fastjson2.util.TypeUtils=var3300, $r2=var2118, com.alibaba.fastjson2.util.TypeUtils$Cache=var3365, $r1=var1551, java.lang.Object=var395, $r3=var3183, r10=var1541, java.lang.Throwable=var1411, $r7=var2993, $r9=var1759, $r8=var1328}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	$r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null);	r10 = (char[]) $r3;	if r10 != null goto i6 = 0;	$r7 := @caughtexception;	$r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10);	throw $r7
;block_num 3