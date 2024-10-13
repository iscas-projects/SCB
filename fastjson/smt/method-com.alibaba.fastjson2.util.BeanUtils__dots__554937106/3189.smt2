(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var3933 0)
(declare-sort var1699 0)
(declare-sort var2919 0)
(declare-sort var327 0)
(declare-sort var2551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAndSet/-2096274246 (var3933 var327 var327) var327)
(declare-fun cast-from-var2919-to-var327 (var2919) var327)
(declare-fun cast-from-var327-to-__Array__Int__Int__ (var327) (Array Int Int))
(declare-fun set/-1521643236 (var3933 var327 var327) void)
(declare-fun cast-from-__Array__Int__Int__-to-var327 ((Array Int Int)) var327)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1699-CHARS_UPDATER var3933)
(declare-const var1699-CACHE var2919)
(declare-const null-NullType var2669)
(declare-const null-var327 var327)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var2551 var2551)
(declare-const var802 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var802 null-String)))
(declare-const var3614 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3614 null-Int)))
(declare-const var171 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var171 null-Bool)))
(assert true)
(define-const var1399 Int (length/-134980193 var802)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var889 var3933 var1699-CHARS_UPDATER) ; Statement: $r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var2398 var2919 var1699-CACHE) ; Statement: $r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
(define-const var3817 var327 (getAndSet/-2096274246 var889 (cast-from-var2919-to-var327 var2398) null-var327)) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null) 
(define-const var3526 (Array Int Int) (cast-from-var327-to-__Array__Int__Int__ var3817)) ; Statement: r10 = (char[]) $r3 
 ; Statement: if r10 != null goto i6 = 0 
(assert (not (not (= var3526 null-__Array__Int__Int__)))) ; Negate: Cond: r10 != null  
(declare-const var2236 var2551) ; Statement: $r7 := @caughtexception 
(assert (not (= var2236 null-var2551)))
(assert true) ; Non Conditional
(define-const var2036 var3933 var1699-CHARS_UPDATER) ; Statement: $r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var2861 var2919 var1699-CACHE) ; Statement: $r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
;(assert (set/-1521643236 var2036 (cast-from-var2919-to-var327 var2861) (cast-from-__Array__Int__Int__-to-var327 var3526))) ; Statement: virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10) 

(declare-const var2036!1 var3933)
(declare-const var2861!1 var2919)
(declare-const var3526!1 (Array Int Int))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2919-to-var327=([com.alibaba.fastjson2.util.TypeUtils$Cache], java.lang.Object), cast-from-var327-to-__Array__Int__Int__=([java.lang.Object], char[]), set/-1521643236=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], void), cast-from-__Array__Int__Int__-to-var327=([char[]], java.lang.Object)}
; {var802=r0, var2669=null_type, var3614=i1, var171=z0, var1399=i0, var3933=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var1699=com.alibaba.fastjson2.util.TypeUtils, var889=$r2, var2919=com.alibaba.fastjson2.util.TypeUtils$Cache, var2398=$r1, var327=java.lang.Object, var3817=$r3, var3526=r10, var2551=java.lang.Throwable, var2236=$r7, var2036=$r9, var2861=$r8}
; {r0=var802, null_type=var2669, i1=var3614, z0=var171, i0=var1399, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var3933, com.alibaba.fastjson2.util.TypeUtils=var1699, $r2=var889, com.alibaba.fastjson2.util.TypeUtils$Cache=var2919, $r1=var2398, java.lang.Object=var327, $r3=var3817, r10=var3526, java.lang.Throwable=var2551, $r7=var2236, $r9=var2036, $r8=var2861}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	$r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null);	r10 = (char[]) $r3;	if r10 != null goto i6 = 0;	$r7 := @caughtexception;	$r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10);	throw $r7
;block_num 3