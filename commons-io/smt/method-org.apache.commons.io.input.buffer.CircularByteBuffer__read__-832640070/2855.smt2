(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1372 0)
(declare-sort var3305 0)
(declare-sort var3259 0)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3305_requireNonNull/1378936425 (var3259 String) var3259)
(declare-fun cast-from-__Array__Int__Int__-to-var3259 ((Array Int Int)) var3259)
(declare-fun var2310-init () var2310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2310 String) void)
(declare-const null-var1372 var1372)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1930 var1372) ; Statement: r11 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert (not (= var1930 null-var1372)))
(declare-const var1782 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1782 null-__Array__Int__Int__)))
(declare-const var3747 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3747 null-Int)))
(declare-const var1252 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1252 null-Int)))
;(assert (var3305_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var3259 var1782) "targetBuffer")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "targetBuffer") 

(declare-const var1782!1 (Array Int Int))
(declare-const var670 String)
 ; Statement: if i0 < 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var3747 0)) ; Cond: i0 < 0 
(define-const var2351 var2310 var2310-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1963 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1963)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1963!1 String)
(assert (= var1963!1 ""))
(assert true)
(define-const var3188 String (append/672562846 var1963!1 "Illegal offset: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ") 
(declare-const var1963!2 String)
(assert (= var1963!2 (str.++ var1963!1 "Illegal offset: ")))
(assert true)
(define-const var3255 String (append/-1001720160 var3188 var3747)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3188!1 String)
(assert (str.prefixof var3188 var3188!1))
(assert true)
(define-const var112 String (toString/-2075883882 var3255)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2351 var112)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2351!1 var2310)
(declare-const var112!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3305_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3259=([byte[]], java.lang.Object), var2310-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1372=org.apache.commons.io.input.buffer.CircularByteBuffer, var1930=r11, var1782=r0, var3747=i0, var1252=i2, var3305=java.util.Objects, var3259=java.lang.Object, var670="targetBuffer", var2310=java.lang.IllegalArgumentException, var2351=$r1, var1963=$r2, var3188=$r3, var3255=$r4, var112=$r5}
; {org.apache.commons.io.input.buffer.CircularByteBuffer=var1372, r11=var1930, r0=var1782, i0=var3747, i2=var1252, java.util.Objects=var3305, java.lang.Object=var3259, "targetBuffer"=var670, java.lang.IllegalArgumentException=var2310, $r1=var2351, $r2=var1963, $r3=var3188, $r4=var3255, $r5=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "targetBuffer");	if i0 < 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2