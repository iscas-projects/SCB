(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var2607 0)
(declare-sort var2680 0)
(declare-sort var1402 0)
(declare-sort var2989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2680_checkNotNullParameter/-2060636419 (var1402 String) void)
(declare-fun cast-from-var2607-to-var1402 (var2607) var1402)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2989-init () var2989)
(declare-fun toString/-522406933 (var1402) String)
(declare-fun cast-from-String-to-var1402 (String) var1402)
(declare-fun <init>/875830710 (var2989 String) void)
(declare-const null-var841 var841)
(declare-const null-var2607 var2607)
(declare-const null-Int Int)
(declare-const var1301 var841) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource 
(assert (not (= var1301 null-var841)))
(declare-const var3363 var2607) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var3363 null-var2607)))
(declare-const var3480 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3480 null-Int)))
;(assert (var2680_checkNotNullParameter/-2060636419 (cast-from-var2607-to-var1402 var3363) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var3363!1 var2607)
(declare-const var2537 String)
(define-const var1553 Int (ite (> var3480 0) 1 (ite (< var3480 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1116 Int (cast-from-Int-to-Int var1553)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z1 = 0 
(assert (< var1116 0)) ; Cond: $i12 < 0 
(define-const var1536 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: boolean getClosed()>() 
(assert (not (not (= (ite var1536 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3942 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3942)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3942!1 String)
(assert (= var3942!1 ""))
(assert true)
(define-const var3557 String (append/672562846 var3942!1 "byteCount < 0: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var3942!2 String)
(assert (= var3942!2 (str.++ var3942!1 "byteCount < 0: ")))
(assert true)
(define-const var2442 String (append/-901862667 var3557 var3480)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3557!1 String)
(assert (str.prefixof var3557 var3557!1))
(assert true)
(define-const var1212 String (toString/-2075883882 var2442)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3782 var2989 var2989-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3306 String (toString/-522406933 (cast-from-String-to-var1402 var1212))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3782 var3306)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3782!1 var2989)
(declare-const var3306!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2680_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2607-to-var1402=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2989-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1402=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var841=okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, var1301=r1, var2607=okio.Buffer, var3363=r0, var3480=l0, var2680=kotlin.jvm.internal.Intrinsics, var1402=java.lang.Object, var2537="sink", var1553=$b1, var1116=$i12, var1536=$z1, var3942=$r14, var3557=$r8, var2442=$r9, var1212=$r12, var2989=java.lang.IllegalArgumentException, var3782=$r15, var3306=$r11}
; {okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource=var841, r1=var1301, okio.Buffer=var2607, r0=var3363, l0=var3480, kotlin.jvm.internal.Intrinsics=var2680, java.lang.Object=var1402, "sink"=var2537, $b1=var1553, $i12=var1116, $z1=var1536, $r14=var3942, $r8=var3557, $r9=var2442, $r12=var1212, java.lang.IllegalArgumentException=var2989, $r15=var3782, $r11=var3306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: boolean getClosed()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 4