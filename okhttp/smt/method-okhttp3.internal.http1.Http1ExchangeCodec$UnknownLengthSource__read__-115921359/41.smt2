(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var235 0)
(declare-sort var1618 0)
(declare-sort var2197 0)
(declare-sort var2758 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2197_checkNotNullParameter/-2060636419 (var2758 String) void)
(declare-fun cast-from-var1618-to-var2758 (var1618) var2758)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3408-init () var3408)
(declare-fun toString/-522406933 (var2758) String)
(declare-fun cast-from-String-to-var2758 (String) var2758)
(declare-fun <init>/875830710 (var3408 String) void)
(declare-const null-var235 var235)
(declare-const null-var1618 var1618)
(declare-const null-Int Int)
(declare-const var2965 var235) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource 
(assert (not (= var2965 null-var235)))
(declare-const var3178 var1618) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var3178 null-var1618)))
(declare-const var742 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var742 null-Int)))
;(assert (var2197_checkNotNullParameter/-2060636419 (cast-from-var1618-to-var2758 var3178) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var3178!1 var1618)
(declare-const var2801 String)
(define-const var1756 Int (ite (> var742 0) 1 (ite (< var742 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1389 Int (cast-from-Int-to-Int var1756)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 < 0 goto $z2 = 0 
(assert (< var1389 0)) ; Cond: $i4 < 0 
(define-const var3723 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: boolean getClosed()>() 
(assert (not (not (= (ite var3723 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3873 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3873)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3873!1 String)
(assert (= var3873!1 ""))
(assert true)
(define-const var2814 String (append/672562846 var3873!1 "byteCount < 0: ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var3873!2 String)
(assert (= var3873!2 (str.++ var3873!1 "byteCount < 0: ")))
(assert true)
(define-const var1835 String (append/-901862667 var2814 var742)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2814!1 String)
(assert (str.prefixof var2814 var2814!1))
(assert true)
(define-const var1944 String (toString/-2075883882 var1835)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1153 var3408 var3408-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var31 String (toString/-522406933 (cast-from-String-to-var2758 var1944))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1153 var31)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1153!1 var3408)
(declare-const var31!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2197_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1618-to-var2758=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3408-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2758=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var235=okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, var2965=r1, var1618=okio.Buffer, var3178=r0, var742=l0, var2197=kotlin.jvm.internal.Intrinsics, var2758=java.lang.Object, var2801="sink", var1756=$b1, var1389=$i4, var3723=$z2, var3873=$r11, var2814=$r5, var1835=$r6, var1944=$r9, var3408=java.lang.IllegalArgumentException, var1153=$r12, var31=$r8}
; {okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource=var235, r1=var2965, okio.Buffer=var1618, r0=var3178, l0=var742, kotlin.jvm.internal.Intrinsics=var2197, java.lang.Object=var2758, "sink"=var2801, $b1=var1756, $i4=var1389, $z2=var3723, $r11=var3873, $r5=var2814, $r6=var1835, $r9=var1944, java.lang.IllegalArgumentException=var3408, $r12=var1153, $r8=var31}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 < 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: boolean getClosed()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 4