(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var555 0)
(declare-sort var3961 0)
(declare-sort var431 0)
(declare-sort var2735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3961_checkNotNullParameter/-2060636419 (var431 String) void)
(declare-fun cast-from-var555-to-var431 (var555) var431)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2735-init () var2735)
(declare-fun toString/-522406933 (var431) String)
(declare-fun cast-from-String-to-var431 (String) var431)
(declare-fun <init>/875830710 (var2735 String) void)
(declare-const null-var1969 var1969)
(declare-const null-var555 var555)
(declare-const null-Int Int)
(declare-const var3524 var1969) ; Statement: r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource 
(assert (not (= var3524 null-var1969)))
(declare-const var2676 var555) ; Statement: r0 := @parameter0: okio.Buffer 
(assert (not (= var2676 null-var555)))
(declare-const var1650 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1650 null-Int)))
;(assert (var3961_checkNotNullParameter/-2060636419 (cast-from-var555-to-var431 var2676) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink") 

(declare-const var2676!1 var555)
(declare-const var410 String)
(define-const var294 Int (ite (> var1650 0) 1 (ite (< var1650 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1185 Int (cast-from-Int-to-Int var294)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 < 0 goto $z1 = 0 
(assert (not (< var1185 0))) ; Negate: Cond: $i12 < 0  
(define-const var1686 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: boolean getClosed()>() 
(assert (not (not (= (ite var1686 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var317 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var317)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var317!1 String)
(assert (= var317!1 ""))
(assert true)
(define-const var908 String (append/672562846 var317!1 "byteCount < 0: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ") 
(declare-const var317!2 String)
(assert (= var317!2 (str.++ var317!1 "byteCount < 0: ")))
(assert true)
(define-const var121 String (append/-901862667 var908 var1650)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var908!1 String)
(assert (str.prefixof var908 var908!1))
(assert true)
(define-const var3342 String (toString/-2075883882 var121)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1631 var2735 var2735-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var59 String (toString/-522406933 (cast-from-String-to-var431 var3342))) ; Statement: $r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1631 var59)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1631!1 var2735)
(declare-const var59!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3961_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var555-to-var431=([okio.Buffer], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2735-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var431=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1969=okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, var3524=r1, var555=okio.Buffer, var2676=r0, var1650=l0, var3961=kotlin.jvm.internal.Intrinsics, var431=java.lang.Object, var410="sink", var294=$b1, var1185=$i12, var1686=$z1, var317=$r14, var908=$r8, var121=$r9, var3342=$r12, var2735=java.lang.IllegalArgumentException, var1631=$r15, var59=$r11}
; {okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource=var1969, r1=var3524, okio.Buffer=var555, r0=var2676, l0=var1650, kotlin.jvm.internal.Intrinsics=var3961, java.lang.Object=var431, "sink"=var410, $b1=var294, $i12=var1185, $z1=var1686, $r14=var317, $r8=var908, $r9=var121, $r12=var3342, java.lang.IllegalArgumentException=var2735, $r15=var1631, $r11=var59}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource;	r0 := @parameter0: okio.Buffer;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sink");	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 < 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $z0 = virtualinvoke r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: boolean getClosed()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("byteCount < 0: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalArgumentException;	$r11 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 4