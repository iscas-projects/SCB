(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var708 0)
(declare-sort var1861 0)
(declare-sort var2173 0)
(declare-sort var274 0)
(declare-sort var3292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2173_checkNotNullParameter/-2060636419 (var274 String) void)
(declare-fun cast-from-var1861-to-var274 (var1861) var274)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3292-init () var3292)
(declare-fun toString/-522406933 (var274) String)
(declare-fun cast-from-String-to-var274 (String) var274)
(declare-fun <init>/875830710 (var3292 String) void)
(declare-const null-var708 var708)
(declare-const null-var1861 var1861)
(declare-const null-Int Int)
(declare-const var2379 var708) ; Statement: r1 := @this: okhttp3.MultipartReader$PartSource 
(assert (not (= var2379 null-var708)))
(declare-const var3734 var1861) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var3734 null-var1861)))
(declare-const var700 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var700 null-Int)))
;(assert (var2173_checkNotNullParameter/-2060636419 (cast-from-var1861-to-var274 var3734) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var3734!1 var1861)
(declare-const var878 String)
(define-const var2093 Int (ite (> var700 0) 1 (ite (< var700 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3006 Int (cast-from-Int-to-Int var2093)) ; Statement: $i19 = (int) $b1 
 ; Statement: if $i19 < 0 goto $z8 = 0 
(assert (not (< var3006 0))) ; Negate: Cond: $i19 < 0  
(define-const var3932 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z8 != 0 goto $r2 = r1.<okhttp3.MultipartReader$PartSource: okhttp3.MultipartReader this$0> 
(assert (not (not (= (ite var3932 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var1670 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1670)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1670!1 String)
(assert (= var1670!1 ""))
(assert true)
(define-const var965 String (append/672562846 var1670!1 "byteCount < 0: ")) ; Statement: $r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var1670!2 String)
(assert (= var1670!2 (str.++ var1670!1 "byteCount < 0: ")))
(assert true)
(define-const var2045 String (append/-901862667 var965 var700)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var965!1 String)
(assert (str.prefixof var965 var965!1))
(assert true)
(define-const var1074 String (toString/-2075883882 var2045)) ; Statement: $r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1296 var3292 var3292-init) ; Statement: $r29 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1966 String (toString/-522406933 (cast-from-String-to-var274 var1074))) ; Statement: $r20 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1296 var1966)) ; Statement: specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var1296!1 var3292)
(declare-const var1966!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2173_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1861-to-var274=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3292-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var274=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var708=okhttp3.MultipartReader$PartSource, var2379=r1, var1861=okio.Buffer, var3734=r0, var700=l0, var2173=kotlin.jvm.internal.Intrinsics, var274=java.lang.Object, var878="sink", var2093=$b1, var3006=$i19, var3932=$z8, var1670=$r28, var965=$r17, var2045=$r18, var1074=$r25, var3292=java.lang.IllegalArgumentException, var1296=$r29, var1966=$r20}
; {okhttp3.MultipartReader$PartSource=var708, r1=var2379, okio.Buffer=var1861, r0=var3734, l0=var700, kotlin.jvm.internal.Intrinsics=var2173, java.lang.Object=var274, "sink"=var878, $b1=var2093, $i19=var3006, $z8=var3932, $r28=var1670, $r17=var965, $r18=var2045, $r25=var1074, java.lang.IllegalArgumentException=var3292, $r29=var1296, $r20=var1966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.MultipartReader$PartSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i19 = (int) $b1;	if $i19 < 0 goto $z8 = 0;	$z8 = 1;	goto [?= (branch)];	if $z8 != 0 goto $r2 = r1.<okhttp3.MultipartReader$PartSource: okhttp3.MultipartReader this$0>;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = new java.lang.IllegalArgumentException;	$r20 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r29
;block_num 4