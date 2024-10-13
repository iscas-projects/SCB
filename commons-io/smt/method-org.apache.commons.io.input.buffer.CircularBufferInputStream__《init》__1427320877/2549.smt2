(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort var861 0)
(declare-sort var1546 0)
(declare-sort var36 0)
(declare-sort var568 0)
(declare-sort var141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var36_requireNonNull/1378936425 (var1546 String) var1546)
(declare-fun cast-from-var861-to-var1546 (var861) var1546)
(declare-fun cast-from-var1546-to-var861 (var1546) var861)
(declare-fun <init>/105507897 (var568 var861) void)
(declare-fun cast-from-var3064-to-var568 (var3064) var568)
(declare-fun var141-init () var141)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var141 String) void)
(declare-const null-var3064 var3064)
(declare-const null-var861 var861)
(declare-const null-Int Int)
(declare-const var960 var3064) ; Statement: r0 := @this: org.apache.commons.io.input.buffer.CircularBufferInputStream 
(assert (not (= var960 null-var3064)))
(declare-const var2910 var861) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2910 null-var861)))
(declare-const var370 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var370 null-Int)))
(define-const var855 var1546 (var36_requireNonNull/1378936425 (cast-from-var861-to-var1546 var2910) "inputStream")) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream") 
(define-const var76 var861 (cast-from-var1546-to-var861 var855)) ; Statement: $r3 = (java.io.InputStream) $r2 
(assert true)
;(assert (<init>/105507897 (cast-from-var3064-to-var568 var960) var76)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3) 

(declare-const var960!1 var3064)
(declare-const var76!1 var861)
 ; Statement: if i0 > 0 goto $r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert (not (> var370 0))) ; Negate: Cond: i0 > 0  
(define-const var3994 var141 var141-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2891 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2891)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2891!1 String)
(assert (= var2891!1 ""))
(assert true)
(define-const var1101 String (append/672562846 var2891!1 "Illegal bufferSize: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal bufferSize: ") 
(declare-const var2891!2 String)
(assert (= var2891!2 (str.++ var2891!1 "Illegal bufferSize: ")))
(assert true)
(define-const var1313 String (append/-1001720160 var1101 var370)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1101!1 String)
(assert (str.prefixof var1101 var1101!1))
(assert true)
(define-const var2011 String (toString/-2075883882 var1313)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3994 var2011)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3994!1 var141)
(declare-const var2011!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var36_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var861-to-var1546=([java.io.InputStream], java.lang.Object), cast-from-var1546-to-var861=([java.lang.Object], java.io.InputStream), <init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var3064-to-var568=([org.apache.commons.io.input.buffer.CircularBufferInputStream], java.io.FilterInputStream), var141-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3064=org.apache.commons.io.input.buffer.CircularBufferInputStream, var960=r0, var861=java.io.InputStream, var2910=r1, var370=i0, var1546=java.lang.Object, var36=java.util.Objects, var855=$r2, var76=$r3, var568=java.io.FilterInputStream, var141=java.lang.IllegalArgumentException, var3994=$r5, var2891=$r6, var1101=$r7, var1313=$r8, var2011=$r9}
; {org.apache.commons.io.input.buffer.CircularBufferInputStream=var3064, r0=var960, java.io.InputStream=var861, r1=var2910, i0=var370, java.lang.Object=var1546, java.util.Objects=var36, $r2=var855, $r3=var76, java.io.FilterInputStream=var568, java.lang.IllegalArgumentException=var141, $r5=var3994, $r6=var2891, $r7=var1101, $r8=var1313, $r9=var2011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.buffer.CircularBufferInputStream;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream");	$r3 = (java.io.InputStream) $r2;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3);	if i0 > 0 goto $r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal bufferSize: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2