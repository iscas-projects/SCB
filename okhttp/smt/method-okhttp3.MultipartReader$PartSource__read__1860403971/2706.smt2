(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort var3996 0)
(declare-sort var1644 0)
(declare-sort var912 0)
(declare-sort var2029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1644_checkNotNullParameter/-2060636419 (var912 String) void)
(declare-fun cast-from-var3996-to-var912 (var3996) var912)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2029-init () var2029)
(declare-fun toString/-522406933 (var912) String)
(declare-fun cast-from-String-to-var912 (String) var912)
(declare-fun <init>/875830710 (var2029 String) void)
(declare-const null-var2514 var2514)
(declare-const null-var3996 var3996)
(declare-const null-Int Int)
(declare-const var1257 var2514) ; Statement: r1 := @this: okhttp3.MultipartReader$PartSource 
(assert (not (= var1257 null-var2514)))
(declare-const var2804 var3996) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var2804 null-var3996)))
(declare-const var3125 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3125 null-Int)))
;(assert (var1644_checkNotNullParameter/-2060636419 (cast-from-var3996-to-var912 var2804) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var2804!1 var3996)
(declare-const var1255 String)
(define-const var1645 Int (ite (> var3125 0) 1 (ite (< var3125 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var259 Int (cast-from-Int-to-Int var1645)) ; Statement: $i19 = (int) $b1 
 ; Statement: if $i19 < 0 goto $z8 = 0 
(assert (< var259 0)) ; Cond: $i19 < 0 
(define-const var1804 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z8 != 0 goto $r2 = r1.<okhttp3.MultipartReader$PartSource: okhttp3.MultipartReader this$0> 
(assert (not (not (= (ite var1804 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var1441 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1441)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1441!1 String)
(assert (= var1441!1 ""))
(assert true)
(define-const var2237 String (append/672562846 var1441!1 "byteCount < 0: ")) ; Statement: $r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var1441!2 String)
(assert (= var1441!2 (str.++ var1441!1 "byteCount < 0: ")))
(assert true)
(define-const var754 String (append/-901862667 var2237 var3125)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2237!1 String)
(assert (str.prefixof var2237 var2237!1))
(assert true)
(define-const var3556 String (toString/-2075883882 var754)) ; Statement: $r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var499 var2029 var2029-init) ; Statement: $r29 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2336 String (toString/-522406933 (cast-from-String-to-var912 var3556))) ; Statement: $r20 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var499 var2336)) ; Statement: specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var499!1 var2029)
(declare-const var2336!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1644_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3996-to-var912=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2029-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var912=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2514=okhttp3.MultipartReader$PartSource, var1257=r1, var3996=okio.Buffer, var2804=r0, var3125=l0, var1644=kotlin.jvm.internal.Intrinsics, var912=java.lang.Object, var1255="sink", var1645=$b1, var259=$i19, var1804=$z8, var1441=$r28, var2237=$r17, var754=$r18, var3556=$r25, var2029=java.lang.IllegalArgumentException, var499=$r29, var2336=$r20}
; {okhttp3.MultipartReader$PartSource=var2514, r1=var1257, okio.Buffer=var3996, r0=var2804, l0=var3125, kotlin.jvm.internal.Intrinsics=var1644, java.lang.Object=var912, "sink"=var1255, $b1=var1645, $i19=var259, $z8=var1804, $r28=var1441, $r17=var2237, $r18=var754, $r25=var3556, java.lang.IllegalArgumentException=var2029, $r29=var499, $r20=var2336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.MultipartReader$PartSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i19 = (int) $b1;	if $i19 < 0 goto $z8 = 0;	$z8 = 0;	if $z8 != 0 goto $r2 = r1.<okhttp3.MultipartReader$PartSource: okhttp3.MultipartReader this$0>;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = new java.lang.IllegalArgumentException;	$r20 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r29
;block_num 4