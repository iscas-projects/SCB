(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var2341 0)
(declare-sort var257 0)
(declare-sort var128 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var257_checkNotNullParameter/-2060636419 (var128 String) void)
(declare-fun cast-from-var2341-to-var128 (var2341) var128)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var450-init () var450)
(declare-fun toString/-522406933 (var128) String)
(declare-fun cast-from-String-to-var128 (String) var128)
(declare-fun <init>/875830710 (var450 String) void)
(declare-const null-var2755 var2755)
(declare-const null-var2341 var2341)
(declare-const null-Int Int)
(declare-const var1567 var2755) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource 
(assert (not (= var1567 null-var2755)))
(declare-const var690 var2341) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var690 null-var2341)))
(declare-const var3062 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3062 null-Int)))
;(assert (var257_checkNotNullParameter/-2060636419 (cast-from-var2341-to-var128 var690) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var690!1 var2341)
(declare-const var3906 String)
(define-const var1436 Int (ite (> var3062 0) 1 (ite (< var3062 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3074 Int (cast-from-Int-to-Int var1436)) ; Statement: $i19 = (int) $b1 
 ; Statement: if $i19 < 0 goto $z2 = 0 
(assert (< var3074 0)) ; Cond: $i19 < 0 
(define-const var165 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto z3 = 0 
(assert (not (not (= (ite var165 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3211 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3211)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3211!1 String)
(assert (= var3211!1 ""))
(assert true)
(define-const var3908 String (append/672562846 var3211!1 "byteCount < 0: ")) ; Statement: $r17 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var3211!2 String)
(assert (= var3211!2 (str.++ var3211!1 "byteCount < 0: ")))
(assert true)
(define-const var683 String (append/-901862667 var3908 var3062)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3908!1 String)
(assert (str.prefixof var3908 var3908!1))
(assert true)
(define-const var2283 String (toString/-2075883882 var683)) ; Statement: $r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2041 var450 var450-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3768 String (toString/-522406933 (cast-from-String-to-var128 var2283))) ; Statement: $r20 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2041 var3768)) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var2041!1 var450)
(declare-const var3768!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var257_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2341-to-var128=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var450-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var128=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2755=okhttp3.internal.http2.Http2Stream$FramingSource, var1567=r1, var2341=okio.Buffer, var690=r0, var3062=l0, var257=kotlin.jvm.internal.Intrinsics, var128=java.lang.Object, var3906="sink", var1436=$b1, var3074=$i19, var165=$z2, var3211=$r29, var3908=$r17, var683=$r18, var2283=$r24, var450=java.lang.IllegalArgumentException, var2041=$r30, var3768=$r20}
; {okhttp3.internal.http2.Http2Stream$FramingSource=var2755, r1=var1567, okio.Buffer=var2341, r0=var690, l0=var3062, kotlin.jvm.internal.Intrinsics=var257, java.lang.Object=var128, "sink"=var3906, $b1=var1436, $i19=var3074, $z2=var165, $r29=var3211, $r17=var3908, $r18=var683, $r24=var2283, java.lang.IllegalArgumentException=var450, $r30=var2041, $r20=var3768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i19 = (int) $b1;	if $i19 < 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto z3 = 0;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = new java.lang.IllegalArgumentException;	$r20 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r30
;block_num 4