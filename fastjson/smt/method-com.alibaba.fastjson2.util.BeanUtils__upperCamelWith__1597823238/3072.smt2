(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3802 0)
(declare-sort var1645 0)
(declare-sort var3585 0)
(declare-sort var2754 0)
(declare-sort var889 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAndSet/-2096274246 (var1645 var889 var889) var889)
(declare-fun cast-from-var2754-to-var889 (var2754) var889)
(declare-fun cast-from-var889-to-__Array__Int__Int__ (var889) (Array Int Int))
(declare-fun set/-1521643236 (var1645 var889 var889) void)
(declare-fun cast-from-__Array__Int__Int__-to-var889 ((Array Int Int)) var889)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3585-CHARS_UPDATER var1645)
(declare-const var3585-CACHE var2754)
(declare-const null-NullType var3802)
(declare-const null-var889 var889)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var247 var247)
(declare-const var1502 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1502 null-String)))
(declare-const var329 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var329 null-Int)))
(declare-const var110 Int) ; Statement: c8 := @parameter2: char 
(assert (not (= var110 null-Int)))
(assert true)
(define-const var3947 Int (length/-134980193 var1502)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var43 var1645 var3585-CHARS_UPDATER) ; Statement: $r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var3424 var2754 var3585-CACHE) ; Statement: $r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
(define-const var1046 var889 (getAndSet/-2096274246 var43 (cast-from-var2754-to-var889 var3424) null-var889)) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null) 
(define-const var2008 (Array Int Int) (cast-from-var889-to-__Array__Int__Int__ var1046)) ; Statement: r10 = (char[]) $r3 
 ; Statement: if r10 != null goto i22 = 0 
(assert (not (not (= var2008 null-__Array__Int__Int__)))) ; Negate: Cond: r10 != null  
(declare-const var1257 var247) ; Statement: $r7 := @caughtexception 
(assert (not (= var1257 null-var247)))
(assert true) ; Non Conditional
(define-const var3053 var1645 var3585-CHARS_UPDATER) ; Statement: $r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var338 var2754 var3585-CACHE) ; Statement: $r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
;(assert (set/-1521643236 var3053 (cast-from-var2754-to-var889 var338) (cast-from-__Array__Int__Int__-to-var889 var2008))) ; Statement: virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10) 

(declare-const var3053!1 var1645)
(declare-const var338!1 var2754)
(declare-const var2008!1 (Array Int Int))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2754-to-var889=([com.alibaba.fastjson2.util.TypeUtils$Cache], java.lang.Object), cast-from-var889-to-__Array__Int__Int__=([java.lang.Object], char[]), set/-1521643236=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], void), cast-from-__Array__Int__Int__-to-var889=([char[]], java.lang.Object)}
; {var1502=r0, var3802=null_type, var329=i1, var110=c8, var3947=i0, var1645=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var3585=com.alibaba.fastjson2.util.TypeUtils, var43=$r2, var2754=com.alibaba.fastjson2.util.TypeUtils$Cache, var3424=$r1, var889=java.lang.Object, var1046=$r3, var2008=r10, var247=java.lang.Throwable, var1257=$r7, var3053=$r9, var338=$r8}
; {r0=var1502, null_type=var3802, i1=var329, c8=var110, i0=var3947, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var1645, com.alibaba.fastjson2.util.TypeUtils=var3585, $r2=var43, com.alibaba.fastjson2.util.TypeUtils$Cache=var2754, $r1=var3424, java.lang.Object=var889, $r3=var1046, r10=var2008, java.lang.Throwable=var247, $r7=var1257, $r9=var3053, $r8=var338}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c8 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	$r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null);	r10 = (char[]) $r3;	if r10 != null goto i22 = 0;	$r7 := @caughtexception;	$r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10);	throw $r7
;block_num 3