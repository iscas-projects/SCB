(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var40 0)
(declare-sort var3136 0)
(declare-sort var3648 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3136_checkNotNullParameter/-2060636419 (var3648 String) void)
(declare-fun cast-from-var40-to-var3648 (var40) var3648)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2618-init () var2618)
(declare-fun toString/-522406933 (var3648) String)
(declare-fun cast-from-String-to-var3648 (String) var3648)
(declare-fun <init>/875830710 (var2618 String) void)
(declare-const null-var2474 var2474)
(declare-const null-var40 var40)
(declare-const null-Int Int)
(declare-const var1490 var2474) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource 
(assert (not (= var1490 null-var2474)))
(declare-const var823 var40) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var823 null-var40)))
(declare-const var1619 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1619 null-Int)))
;(assert (var3136_checkNotNullParameter/-2060636419 (cast-from-var40-to-var3648 var823) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var823!1 var40)
(declare-const var3952 String)
(define-const var2001 Int (ite (> var1619 0) 1 (ite (< var1619 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var2688 Int (cast-from-Int-to-Int var2001)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 < 0 goto $z2 = 0 
(assert (not (< var2688 0))) ; Negate: Cond: $i4 < 0  
(define-const var180 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: boolean getClosed()>() 
(assert (not (not (= (ite var180 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var865 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var865)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var865!1 String)
(assert (= var865!1 ""))
(assert true)
(define-const var899 String (append/672562846 var865!1 "byteCount < 0: ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var865!2 String)
(assert (= var865!2 (str.++ var865!1 "byteCount < 0: ")))
(assert true)
(define-const var1855 String (append/-901862667 var899 var1619)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var899!1 String)
(assert (str.prefixof var899 var899!1))
(assert true)
(define-const var2459 String (toString/-2075883882 var1855)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2763 var2618 var2618-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2047 String (toString/-522406933 (cast-from-String-to-var3648 var2459))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2763 var2047)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2763!1 var2618)
(declare-const var2047!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3136_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var40-to-var3648=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2618-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3648=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2474=okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, var1490=r1, var40=okio.Buffer, var823=r0, var1619=l0, var3136=kotlin.jvm.internal.Intrinsics, var3648=java.lang.Object, var3952="sink", var2001=$b1, var2688=$i4, var180=$z2, var865=$r11, var899=$r5, var1855=$r6, var2459=$r9, var2618=java.lang.IllegalArgumentException, var2763=$r12, var2047=$r8}
; {okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource=var2474, r1=var1490, okio.Buffer=var40, r0=var823, l0=var1619, kotlin.jvm.internal.Intrinsics=var3136, java.lang.Object=var3648, "sink"=var3952, $b1=var2001, $i4=var2688, $z2=var180, $r11=var865, $r5=var899, $r6=var1855, $r9=var2459, java.lang.IllegalArgumentException=var2618, $r12=var2763, $r8=var2047}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 < 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: boolean getClosed()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 4