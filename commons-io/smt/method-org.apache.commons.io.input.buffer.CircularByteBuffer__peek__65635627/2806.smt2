(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort var1459 0)
(declare-sort var3172 0)
(declare-sort var599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1459_requireNonNull/1378936425 (var3172 String) var3172)
(declare-fun cast-from-__Array__Int__Int__-to-var3172 ((Array Int Int)) var3172)
(declare-fun var599-init () var599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var599 String) void)
(declare-const null-var3421 var3421)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2155 var3421) ; Statement: r11 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert (not (= var2155 null-var3421)))
(declare-const var710 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var710 null-__Array__Int__Int__)))
(declare-const var115 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var115 null-Int)))
(declare-const var517 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var517 null-Int)))
;(assert (var1459_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var3172 var710) "Buffer")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Buffer") 

(declare-const var710!1 (Array Int Int))
(declare-const var116 String)
 ; Statement: if i0 < 0 goto $r16 = new java.lang.IllegalArgumentException 
(assert (< var115 0)) ; Cond: i0 < 0 
(define-const var2721 var599 var599-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var494 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var494)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var494!1 String)
(assert (= var494!1 ""))
(assert true)
(define-const var3910 String (append/672562846 var494!1 "Illegal offset: ")) ; Statement: $r3 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ") 
(declare-const var494!2 String)
(assert (= var494!2 (str.++ var494!1 "Illegal offset: ")))
(assert true)
(define-const var3667 String (append/-1001720160 var3910 var115)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3910!1 String)
(assert (str.prefixof var3910 var3910!1))
(assert true)
(define-const var3439 String (toString/-2075883882 var3667)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2721 var3439)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2721!1 var599)
(declare-const var3439!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1459_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3172=([byte[]], java.lang.Object), var599-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3421=org.apache.commons.io.input.buffer.CircularByteBuffer, var2155=r11, var710=r0, var115=i0, var517=i2, var1459=java.util.Objects, var3172=java.lang.Object, var116="Buffer", var599=java.lang.IllegalArgumentException, var2721=$r16, var494=$r15, var3910=$r3, var3667=$r4, var3439=$r5}
; {org.apache.commons.io.input.buffer.CircularByteBuffer=var3421, r11=var2155, r0=var710, i0=var115, i2=var517, java.util.Objects=var1459, java.lang.Object=var3172, "Buffer"=var116, java.lang.IllegalArgumentException=var599, $r16=var2721, $r15=var494, $r3=var3910, $r4=var3667, $r5=var3439}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Buffer");	if i0 < 0 goto $r16 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r16
;block_num 2