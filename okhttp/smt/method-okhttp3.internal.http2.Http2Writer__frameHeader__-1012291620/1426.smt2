(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1110 0)
(declare-sort var2044 0)
(declare-sort var2541 0)
(declare-sort var2548 0)
(declare-sort var3625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isLoggable/-616065502 (var2044 var2541) Bool)
(declare-fun maxFrameSize/1566524007 (var1110) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2548-init () var2548)
(declare-fun toString/-522406933 (var3625) String)
(declare-fun cast-from-String-to-var3625 (String) var3625)
(declare-fun <init>/875830710 (var2548 String) void)
(declare-const null-var1110 var1110)
(declare-const null-Int Int)
(declare-const var1110-logger var2044)
(declare-const var2541-FINE var2541)
(declare-const var2760 var1110) ; Statement: r2 := @this: okhttp3.internal.http2.Http2Writer 
(assert (not (= var2760 null-var1110)))
(declare-const var2049 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var2049 null-Int)))
(declare-const var1158 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1158 null-Int)))
(declare-const var708 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var708 null-Int)))
(declare-const var1483 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var1483 null-Int)))
(define-const var3728 var2044 var1110-logger) ; Statement: $r1 = <okhttp3.internal.http2.Http2Writer: java.util.logging.Logger logger> 
(define-const var994 var2541 var2541-FINE) ; Statement: $r0 = <java.util.logging.Level: java.util.logging.Level FINE> 
(assert true)
(define-const var3746 Bool (isLoggable/-616065502 var3728 var994)) ; Statement: $z0 = virtualinvoke $r1.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r0) 
 ; Statement: if $z0 == 0 goto $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
(assert (= (ite var3746 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3029 Int (maxFrameSize/1566524007 var2760)) ; Statement: $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
 ; Statement: if i0 > $i1 goto $z1 = 0 
(assert (not (> var1158 var3029))) ; Negate: Cond: i0 > $i1  
(define-const var1131 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $i3 = i2 & -2147483648 
(assert (not (not (= (ite var1131 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2600 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2600)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2600!1 String)
(assert (= var2600!1 ""))
(assert true)
(define-const var386 String (append/672562846 var2600!1 "FRAME_SIZE_ERROR length > ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FRAME_SIZE_ERROR length > ") 
(declare-const var2600!2 String)
(assert (= var2600!2 (str.++ var2600!1 "FRAME_SIZE_ERROR length > ")))
(define-const var1886 Int (maxFrameSize/1566524007 var2760)) ; Statement: $i9 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize> 
(assert true)
(define-const var3307 String (append/-1001720160 var386 var1886)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var386!1 String)
(assert (str.prefixof var386 var386!1))
(assert true)
(define-const var2051 String (append/672562846 var3307 ": ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3307!1 String)
(assert (= var3307!1 (str.++ var3307 ": ")))
(assert true)
(define-const var606 String (append/-1001720160 var2051 var1158)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2051!1 String)
(assert (str.prefixof var2051 var2051!1))
(assert true)
(define-const var3807 String (toString/-2075883882 var606)) ; Statement: $r22 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2350 var2548 var2548-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1228 String (toString/-522406933 (cast-from-String-to-var3625 var3807))) ; Statement: $r18 = virtualinvoke $r22.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2350 var1228)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var2350!1 var2548)
(declare-const var1228!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isLoggable/-616065502=([java.util.logging.Logger, java.util.logging.Level], boolean), maxFrameSize/1566524007=([okhttp3.internal.http2.Http2Writer], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2548-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3625=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1110=okhttp3.internal.http2.Http2Writer, var2760=r2, var2049=i2, var1158=i0, var708=i4, var1483=i6, var2044=java.util.logging.Logger, var3728=$r1, var2541=java.util.logging.Level, var994=$r0, var3746=$z0, var3029=$i1, var1131=$z1, var2600=$r12, var386=$r13, var1886=$i9, var3307=$r14, var2051=$r15, var606=$r16, var3807=$r22, var2548=java.lang.IllegalArgumentException, var2350=$r17, var3625=java.lang.Object, var1228=$r18}
; {okhttp3.internal.http2.Http2Writer=var1110, r2=var2760, i2=var2049, i0=var1158, i4=var708, i6=var1483, java.util.logging.Logger=var2044, $r1=var3728, java.util.logging.Level=var2541, $r0=var994, $z0=var3746, $i1=var3029, $z1=var1131, $r12=var2600, $r13=var386, $i9=var1886, $r14=var3307, $r15=var2051, $r16=var606, $r22=var3807, java.lang.IllegalArgumentException=var2548, $r17=var2350, java.lang.Object=var3625, $r18=var1228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http2.Http2Writer;	i2 := @parameter0: int;	i0 := @parameter1: int;	i4 := @parameter2: int;	i6 := @parameter3: int;	$r1 = <okhttp3.internal.http2.Http2Writer: java.util.logging.Logger logger>;	$r0 = <java.util.logging.Level: java.util.logging.Level FINE>;	$z0 = virtualinvoke $r1.<java.util.logging.Logger: boolean isLoggable(java.util.logging.Level)>($r0);	if $z0 == 0 goto $i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	$i1 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	if i0 > $i1 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $i3 = i2 & -2147483648;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FRAME_SIZE_ERROR length > ");	$i9 = r2.<okhttp3.internal.http2.Http2Writer: int maxFrameSize>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r22 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = new java.lang.IllegalArgumentException;	$r18 = virtualinvoke $r22.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r17
;block_num 5