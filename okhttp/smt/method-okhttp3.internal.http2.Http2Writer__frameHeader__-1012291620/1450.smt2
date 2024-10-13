(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2869 0)
(declare-sort var1069 0)
(declare-sort var869 0)
(declare-sort var1751 0)
(declare-sort var3590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isLoggable/-616065502 (var1069 var869) Bool)
(declare-fun maxFrameSize/1566524007 (var2869) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1751-init () var1751)
(declare-fun toString/-522406933 (var3590) String)
(declare-fun cast-from-String-to-var3590 (String) var3590)
(declare-fun <init>/875830710 (var1751 String) void)
(declare-const null-var2869 var2869)
(declare-const null-Int Int)
(declare-const var2869-logger var1069)
(declare-const var869-FINE var869)
(declare-const var2827 var2869) ; Statement: r2 := @this: okhttp3.internal.http2.Http2Writer 
(assert (not (= var2827 null-var2869)))
(declare-const var3467 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3467 null-Int)))
(declare-const var783 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var783 null-Int)))
(declare-const var2796 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var2796 null-Int)))
(declare-const var1499 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var1499 null-Int)))
(define-const var937 var1069 var2869-logger) ; Statement: $r1 = <okhttp3.internal.http2.Http2Writer: java.util.logging.Logger logger> 
(define-const var310 var869 var869-FINE) ; Statement: $r0 = <java.util.logging.Level: java.util.logging.Level FINE> 
(assert true)
(define-const var2502 Bool (isLoggable/-616065502 var937 var310)) ; Statement: $z0 = virtualinvoke $r1.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r0) 
 ; Statement: if $z0 == 0 goto $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
(assert (= (ite var2502 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1791 Int (maxFrameSize/1566524007 var2827)) ; Statement: $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
 ; Statement: if i0 > $i1 goto $z1 = 0 
(assert (> var783 var1791)) ; Cond: i0 > $i1 
(define-const var1902 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $i3 = i2 & -2147483648 
(assert (not (not (= (ite var1902 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3416 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var3701 String (append/672562846 var3416!1 "FRAME_SIZE_ERROR length > ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FRAME_SIZE_ERROR length > ") 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 "FRAME_SIZE_ERROR length > ")))
(define-const var3893 Int (maxFrameSize/1566524007 var2827)) ; Statement: $i9 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
(assert true)
(define-const var1778 String (append/-1001720160 var3701 var3893)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var3701!1 String)
(assert (str.prefixof var3701 var3701!1))
(assert true)
(define-const var153 String (append/672562846 var1778 ": ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1778!1 String)
(assert (= var1778!1 (str.++ var1778 ": ")))
(assert true)
(define-const var3796 String (append/-1001720160 var153 var783)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var153!1 String)
(assert (str.prefixof var153 var153!1))
(assert true)
(define-const var850 String (toString/-2075883882 var3796)) ; Statement: $r22 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2345 var1751 var1751-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var720 String (toString/-522406933 (cast-from-String-to-var3590 var850))) ; Statement: $r18 = virtualinvoke $r22.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2345 var720)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var2345!1 var1751)
(declare-const var720!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isLoggable/-616065502=([java.util.logging.Logger, java.util.logging.Level], boolean), maxFrameSize/1566524007=([okhttp3.internal.http2.Http2Writer], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1751-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3590=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2869=okhttp3.internal.http2.Http2Writer, var2827=r2, var3467=i2, var783=i0, var2796=i4, var1499=i6, var1069=java.util.logging.Logger, var937=$r1, var869=java.util.logging.Level, var310=$r0, var2502=$z0, var1791=$i1, var1902=$z1, var3416=$r12, var3701=$r13, var3893=$i9, var1778=$r14, var153=$r15, var3796=$r16, var850=$r22, var1751=java.lang.IllegalArgumentException, var2345=$r17, var3590=java.lang.Object, var720=$r18}
; {okhttp3.internal.http2.Http2Writer=var2869, r2=var2827, i2=var3467, i0=var783, i4=var2796, i6=var1499, java.util.logging.Logger=var1069, $r1=var937, java.util.logging.Level=var869, $r0=var310, $z0=var2502, $i1=var1791, $z1=var1902, $r12=var3416, $r13=var3701, $i9=var3893, $r14=var1778, $r15=var153, $r16=var3796, $r22=var850, java.lang.IllegalArgumentException=var1751, $r17=var2345, java.lang.Object=var3590, $r18=var720}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http2.Http2Writer;	i2 := @parameter0: int;	i0 := @parameter1: int;	i4 := @parameter2: int;	i6 := @parameter3: int;	$r1 = <okhttp3.internal.http2.Http2Writer: java.util.logging.Logger logger>;	$r0 = <java.util.logging.Level: java.util.logging.Level FINE>;	$z0 = virtualinvoke $r1.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r0);	if $z0 == 0 goto $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	$i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	if i0 > $i1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $i3 = i2 & -2147483648;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FRAME_SIZE_ERROR length > ");	$i9 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r22 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new java.lang.IllegalArgumentException;	$r18 = virtualinvoke $r22.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r17
;block_num 5