(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort var2920 0)
(declare-sort var1196 0)
(declare-sort var3462 0)
(declare-sort var1359 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAndSet/-2096274246 (var2920 var1359 var1359) var1359)
(declare-fun cast-from-var3462-to-var1359 (var3462) var1359)
(declare-fun cast-from-var1359-to-__Array__Int__Int__ (var1359) (Array Int Int))
(declare-fun set/-1521643236 (var2920 var1359 var1359) void)
(declare-fun cast-from-__Array__Int__Int__-to-var1359 ((Array Int Int)) var1359)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1196-CHARS_UPDATER var2920)
(declare-const var1196-CACHE var3462)
(declare-const null-NullType var705)
(declare-const null-var1359 var1359)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1536 var1536)
(declare-const var2866 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2866 null-String)))
(declare-const var3169 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3169 null-Int)))
(declare-const var1691 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1691 null-Bool)))
(assert true)
(define-const var2755 Int (length/-134980193 var2866)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1828 var2920 var1196-CHARS_UPDATER) ; Statement: $r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var3334 var3462 var1196-CACHE) ; Statement: $r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
(define-const var3001 var1359 (getAndSet/-2096274246 var1828 (cast-from-var3462-to-var1359 var3334) null-var1359)) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null) 
(define-const var2103 (Array Int Int) (cast-from-var1359-to-__Array__Int__Int__ var3001)) ; Statement: r10 = (char[]) $r3 
 ; Statement: if r10 != null goto i6 = 0 
(assert (not (not (= var2103 null-__Array__Int__Int__)))) ; Negate: Cond: r10 != null  
(declare-const var953 var1536) ; Statement: $r7 := @caughtexception 
(assert (not (= var953 null-var1536)))
(assert true) ; Non Conditional
(define-const var34 var2920 var1196-CHARS_UPDATER) ; Statement: $r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER> 
(define-const var386 var3462 var1196-CACHE) ; Statement: $r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE> 
(assert true)
;(assert (set/-1521643236 var34 (cast-from-var3462-to-var1359 var386) (cast-from-__Array__Int__Int__-to-var1359 var2103))) ; Statement: virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10) 

(declare-const var34!1 var2920)
(declare-const var386!1 var3462)
(declare-const var2103!1 (Array Int Int))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAndSet/-2096274246=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3462-to-var1359=([com.alibaba.fastjson2.util.TypeUtils$Cache], java.lang.Object), cast-from-var1359-to-__Array__Int__Int__=([java.lang.Object], char[]), set/-1521643236=([java.util.concurrent.atomic.AtomicReferenceFieldUpdater, java.lang.Object, java.lang.Object], void), cast-from-__Array__Int__Int__-to-var1359=([char[]], java.lang.Object)}
; {var2866=r0, var705=null_type, var3169=i1, var1691=z0, var2755=i0, var2920=java.util.concurrent.atomic.AtomicReferenceFieldUpdater, var1196=com.alibaba.fastjson2.util.TypeUtils, var1828=$r2, var3462=com.alibaba.fastjson2.util.TypeUtils$Cache, var3334=$r1, var1359=java.lang.Object, var3001=$r3, var2103=r10, var1536=java.lang.Throwable, var953=$r7, var34=$r9, var386=$r8}
; {r0=var2866, null_type=var705, i1=var3169, z0=var1691, i0=var2755, java.util.concurrent.atomic.AtomicReferenceFieldUpdater=var2920, com.alibaba.fastjson2.util.TypeUtils=var1196, $r2=var1828, com.alibaba.fastjson2.util.TypeUtils$Cache=var3462, $r1=var3334, java.lang.Object=var1359, $r3=var3001, r10=var2103, java.lang.Throwable=var1536, $r7=var953, $r9=var34, $r8=var386}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r1 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	$r3 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: java.lang.Object getAndSet(java.lang.Object,java.lang.Object)>($r1, null);	r10 = (char[]) $r3;	if r10 != null goto i6 = 0;	$r7 := @caughtexception;	$r9 = <com.alibaba.fastjson2.util.TypeUtils: java.util.concurrent.atomic.AtomicReferenceFieldUpdater CHARS_UPDATER>;	$r8 = <com.alibaba.fastjson2.util.TypeUtils: com.alibaba.fastjson2.util.TypeUtils$Cache CACHE>;	virtualinvoke $r9.<java.util.concurrent.atomic.AtomicReferenceFieldUpdater: void set(java.lang.Object,java.lang.Object)>($r8, r10);	throw $r7
;block_num 3