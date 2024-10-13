(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1596 0)
(declare-sort var3468 0)
(declare-sort var1959 0)
(declare-sort var1990 0)
(declare-sort var2260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1959_checkNotNullParameter/-2060636419 (var1990 String) void)
(declare-fun cast-from-var3468-to-var1990 (var3468) var1990)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2260-init () var2260)
(declare-fun toString/-522406933 (var1990) String)
(declare-fun cast-from-String-to-var1990 (String) var1990)
(declare-fun <init>/875830710 (var2260 String) void)
(declare-const null-var1596 var1596)
(declare-const null-var3468 var3468)
(declare-const null-Int Int)
(declare-const var663 var1596) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource 
(assert (not (= var663 null-var1596)))
(declare-const var3720 var3468) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var3720 null-var3468)))
(declare-const var2516 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2516 null-Int)))
;(assert (var1959_checkNotNullParameter/-2060636419 (cast-from-var3468-to-var1990 var3720) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var3720!1 var3468)
(declare-const var627 String)
(define-const var3437 Int (ite (> var2516 0) 1 (ite (< var2516 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3582 Int (cast-from-Int-to-Int var3437)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z3 = 0 
(assert (< var3582 0)) ; Cond: $i12 < 0 
(define-const var3558 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z3 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: boolean getClosed()>() 
(assert (not (not (= (ite var3558 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3753 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3753)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3753!1 String)
(assert (= var3753!1 ""))
(assert true)
(define-const var135 String (append/672562846 var3753!1 "byteCount < 0: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var3753!2 String)
(assert (= var3753!2 (str.++ var3753!1 "byteCount < 0: ")))
(assert true)
(define-const var154 String (append/-901862667 var135 var2516)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var135!1 String)
(assert (str.prefixof var135 var135!1))
(assert true)
(define-const var486 String (toString/-2075883882 var154)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2980 var2260 var2260-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2464 String (toString/-522406933 (cast-from-String-to-var1990 var486))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2980 var2464)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2980!1 var2260)
(declare-const var2464!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1959_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3468-to-var1990=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2260-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1990=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1596=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, var663=r1, var3468=okio.Buffer, var3720=r0, var2516=l0, var1959=kotlin.jvm.internal.Intrinsics, var1990=java.lang.Object, var627="sink", var3437=$b1, var3582=$i12, var3558=$z3, var3753=$r14, var135=$r8, var154=$r9, var486=$r12, var2260=java.lang.IllegalArgumentException, var2980=$r15, var2464=$r11}
; {okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource=var1596, r1=var663, okio.Buffer=var3468, r0=var3720, l0=var2516, kotlin.jvm.internal.Intrinsics=var1959, java.lang.Object=var1990, "sink"=var627, $b1=var3437, $i12=var3582, $z3=var3558, $r14=var3753, $r8=var135, $r9=var154, $r12=var486, java.lang.IllegalArgumentException=var2260, $r15=var2980, $r11=var2464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z3 = 0;	$z3 = 0;	if $z3 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: boolean getClosed()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 4