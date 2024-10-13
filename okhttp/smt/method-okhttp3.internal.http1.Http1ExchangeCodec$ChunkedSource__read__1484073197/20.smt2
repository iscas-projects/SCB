(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1644 0)
(declare-sort var403 0)
(declare-sort var3962 0)
(declare-sort var2584 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3962_checkNotNullParameter/-2060636419 (var2584 String) void)
(declare-fun cast-from-var403-to-var2584 (var403) var2584)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1543-init () var1543)
(declare-fun toString/-522406933 (var2584) String)
(declare-fun cast-from-String-to-var2584 (String) var2584)
(declare-fun <init>/875830710 (var1543 String) void)
(declare-const null-var1644 var1644)
(declare-const null-var403 var403)
(declare-const null-Int Int)
(declare-const var866 var1644) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource 
(assert (not (= var866 null-var1644)))
(declare-const var3176 var403) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var3176 null-var403)))
(declare-const var1950 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1950 null-Int)))
;(assert (var3962_checkNotNullParameter/-2060636419 (cast-from-var403-to-var2584 var3176) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var3176!1 var403)
(declare-const var2314 String)
(define-const var519 Int (ite (> var1950 0) 1 (ite (< var1950 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var894 Int (cast-from-Int-to-Int var519)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z3 = 0 
(assert (not (< var894 0))) ; Negate: Cond: $i12 < 0  
(define-const var1091 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z3 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: boolean getClosed()>() 
(assert (not (not (= (ite var1091 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3193 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3193)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3193!1 String)
(assert (= var3193!1 ""))
(assert true)
(define-const var104 String (append/672562846 var3193!1 "byteCount < 0: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var3193!2 String)
(assert (= var3193!2 (str.++ var3193!1 "byteCount < 0: ")))
(assert true)
(define-const var3516 String (append/-901862667 var104 var1950)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var104!1 String)
(assert (str.prefixof var104 var104!1))
(assert true)
(define-const var660 String (toString/-2075883882 var3516)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2216 var1543 var1543-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3536 String (toString/-522406933 (cast-from-String-to-var2584 var660))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2216 var3536)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2216!1 var1543)
(declare-const var3536!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3962_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var403-to-var2584=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1543-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2584=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1644=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, var866=r1, var403=okio.Buffer, var3176=r0, var1950=l0, var3962=kotlin.jvm.internal.Intrinsics, var2584=java.lang.Object, var2314="sink", var519=$b1, var894=$i12, var1091=$z3, var3193=$r14, var104=$r8, var3516=$r9, var660=$r12, var1543=java.lang.IllegalArgumentException, var2216=$r15, var3536=$r11}
; {okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource=var1644, r1=var866, okio.Buffer=var403, r0=var3176, l0=var1950, kotlin.jvm.internal.Intrinsics=var3962, java.lang.Object=var2584, "sink"=var2314, $b1=var519, $i12=var894, $z3=var1091, $r14=var3193, $r8=var104, $r9=var3516, $r12=var660, java.lang.IllegalArgumentException=var1543, $r15=var2216, $r11=var3536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z3 = 0;	$z3 = 1;	goto [?= (branch)];	if $z3 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: boolean getClosed()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 4