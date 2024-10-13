(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var92 0)
(declare-sort var3910 0)
(declare-sort var1551 0)
(declare-sort var2004 0)
(declare-sort var1920 0)
(declare-sort var306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAndSet/-2096274246 (var3910 var1920 var1920) var1920)
(declare-fun cast-from-var2004-to-var1920 (var2004) var1920)
(declare-fun cast-from-var1920-to-__Array__Int__Int__ (var1920) (Array Int Int))
(declare-fun set/-1521643236 (var3910 var1920 var1920) void)
(declare-fun cast-from-__Array__Int__Int__-to-var1920 ((Array Int Int)) var1920)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1551-CHARS_UPDATER var3910)
(declare-const var1551-CACHE var2004)
(declare-const null-NullType var92)
(declare-const null-var1920 var1920)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var306 var306)
(declare-const var409 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var409 null-String)))
(declare-const var1599 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1599 null-Int)))
(assert true)
(define-const var2853 Int (length/-134980193 var409)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3721 var3910 var1551-CHARS_UPDATER) ; Statement: $r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var2443 var2004 var1551-CACHE) ; Statement: $r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
(define-const var3989 var1920 (getAndSet/-2096274246 var3721 (cast-from-var2004-to-var1920 var2443) null-var1920)) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null) 
(define-const var226 (Array Int Int) (cast-from-var1920-to-__Array__Int__Int__ var3989)) ; Statement: r10 = (char[]) $r3 
 ; Statement: if r10 != null goto i4 = 0 
(assert (not (not (= var226 null-__Array__Int__Int__)))) ; Negate: Cond: r10 != null  
(declare-const var309 var306) ; Statement: $r7 := @caughtexception 
(assert (not (= var309 null-var306)))
(assert true) ; Non Conditional
(define-const var1083 var3910 var1551-CHARS_UPDATER) ; Statement: $r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var3708 var2004 var1551-CACHE) ; Statement: $r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
;(assert (set/-1521643236 var1083 (cast-from-var2004-to-var1920 var3708) (cast-from-__Array__Int__Int__-to-var1920 var226))) ; Statement: virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10) 

(declare-const var1083!1 var3910)
(declare-const var3708!1 var2004)
(declare-const var226!1 (Array Int Int))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2004-to-var1920=([com.alibaba.fastjson2.util.TypeUtils$Cache], java.lang.Object), cast-from-var1920-to-__Array__Int__Int__=([java.lang.Object], char[]), set/-1521643236=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], void), cast-from-__Array__Int__Int__-to-var1920=([char[]], java.lang.Object)}
; {var409=r0, var92=null_type, var1599=i1, var2853=i0, var3910=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var1551=com.alibaba.fastjson2.util.TypeUtils, var3721=$r2, var2004=com.alibaba.fastjson2.util.TypeUtils$Cache, var2443=$r1, var1920=java.lang.Object, var3989=$r3, var226=r10, var306=java.lang.Throwable, var309=$r7, var1083=$r9, var3708=$r8}
; {r0=var409, null_type=var92, i1=var1599, i0=var2853, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var3910, com.alibaba.fastjson2.util.TypeUtils=var1551, $r2=var3721, com.alibaba.fastjson2.util.TypeUtils$Cache=var2004, $r1=var2443, java.lang.Object=var1920, $r3=var3989, r10=var226, java.lang.Throwable=var306, $r7=var309, $r9=var1083, $r8=var3708}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	$r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null);	r10 = (char[]) $r3;	if r10 != null goto i4 = 0;	$r7 := @caughtexception;	$r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10);	throw $r7
;block_num 3