(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3850 0)
(declare-sort var2181 0)
(declare-sort var3367 0)
(declare-sort var1262 0)
(declare-sort var2102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3367_checkNotNullParameter/-2060636419 (var1262 String) void)
(declare-fun cast-from-var2181-to-var1262 (var2181) var1262)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2102-init () var2102)
(declare-fun toString/-522406933 (var1262) String)
(declare-fun cast-from-String-to-var1262 (String) var1262)
(declare-fun <init>/875830710 (var2102 String) void)
(declare-const null-var3850 var3850)
(declare-const null-var2181 var2181)
(declare-const null-Int Int)
(declare-const var800 var3850) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource 
(assert (not (= var800 null-var3850)))
(declare-const var2881 var2181) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var2881 null-var2181)))
(declare-const var721 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var721 null-Int)))
;(assert (var3367_checkNotNullParameter/-2060636419 (cast-from-var2181-to-var1262 var2881) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var2881!1 var2181)
(declare-const var3271 String)
(define-const var3811 Int (ite (> var721 0) 1 (ite (< var721 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3623 Int (cast-from-Int-to-Int var3811)) ; Statement: $i19 = (int) $b1 
 ; Statement: if $i19 < 0 goto $z2 = 0 
(assert (not (< var3623 0))) ; Negate: Cond: $i19 < 0  
(define-const var1015 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto z3 = 0 
(assert (not (not (= (ite var1015 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1618 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1618)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1618!1 String)
(assert (= var1618!1 ""))
(assert true)
(define-const var1470 String (append/672562846 var1618!1 "byteCount < 0: ")) ; Statement: $r17 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var1618!2 String)
(assert (= var1618!2 (str.++ var1618!1 "byteCount < 0: ")))
(assert true)
(define-const var2116 String (append/-901862667 var1470 var721)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1470!1 String)
(assert (str.prefixof var1470 var1470!1))
(assert true)
(define-const var2044 String (toString/-2075883882 var2116)) ; Statement: $r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1400 var2102 var2102-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1137 String (toString/-522406933 (cast-from-String-to-var1262 var2044))) ; Statement: $r20 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1400 var1137)) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var1400!1 var2102)
(declare-const var1137!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3367_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2181-to-var1262=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2102-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1262=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3850=okhttp3.internal.http2.Http2Stream$FramingSource, var800=r1, var2181=okio.Buffer, var2881=r0, var721=l0, var3367=kotlin.jvm.internal.Intrinsics, var1262=java.lang.Object, var3271="sink", var3811=$b1, var3623=$i19, var1015=$z2, var1618=$r29, var1470=$r17, var2116=$r18, var2044=$r24, var2102=java.lang.IllegalArgumentException, var1400=$r30, var1137=$r20}
; {okhttp3.internal.http2.Http2Stream$FramingSource=var3850, r1=var800, okio.Buffer=var2181, r0=var2881, l0=var721, kotlin.jvm.internal.Intrinsics=var3367, java.lang.Object=var1262, "sink"=var3271, $b1=var3811, $i19=var3623, $z2=var1015, $r29=var1618, $r17=var1470, $r18=var2116, $r24=var2044, java.lang.IllegalArgumentException=var2102, $r30=var1400, $r20=var1137}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i19 = (int) $b1;	if $i19 < 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 != 0 goto z3 = 0;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = new java.lang.IllegalArgumentException;	$r20 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r30
;block_num 4