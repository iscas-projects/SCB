(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2484 0)
(declare-sort var1152 0)
(declare-sort var2446 0)
(declare-sort var294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1152_requireNonNull/1378936425 (var2446 String) var2446)
(declare-fun cast-from-__Array__Int__Int__-to-var2446 ((Array Int Int)) var2446)
(declare-fun var294-init () var294)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var294 String) void)
(declare-const null-var2484 var2484)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2771 var2484) ; Statement: r6 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert (not (= var2771 null-var2484)))
(declare-const var1014 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1014 null-__Array__Int__Int__)))
(declare-const var1220 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1220 null-Int)))
(declare-const var3914 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3914 null-Int)))
;(assert (var1152_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var2446 var1014) "Buffer")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Buffer") 

(declare-const var1014!1 (Array Int Int))
(declare-const var219 String)
 ; Statement: if i0 < 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var1220 0)) ; Cond: i0 < 0 
(define-const var3358 var294 var294-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2744 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2744)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2744!1 String)
(assert (= var2744!1 ""))
(assert true)
(define-const var3558 String (append/672562846 var2744!1 "Illegal offset: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ") 
(declare-const var2744!2 String)
(assert (= var2744!2 (str.++ var2744!1 "Illegal offset: ")))
(assert true)
(define-const var2382 String (append/-1001720160 var3558 var1220)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3558!1 String)
(assert (str.prefixof var3558 var3558!1))
(assert true)
(define-const var3387 String (toString/-2075883882 var2382)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3358 var3387)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3358!1 var294)
(declare-const var3387!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1152_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var2446=([byte[]], java.lang.Object), var294-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2484=org.apache.commons.io.input.buffer.CircularByteBuffer, var2771=r6, var1014=r0, var1220=i0, var3914=i2, var1152=java.util.Objects, var2446=java.lang.Object, var219="Buffer", var294=java.lang.IllegalArgumentException, var3358=$r1, var2744=$r2, var3558=$r3, var2382=$r4, var3387=$r5}
; {org.apache.commons.io.input.buffer.CircularByteBuffer=var2484, r6=var2771, r0=var1014, i0=var1220, i2=var3914, java.util.Objects=var1152, java.lang.Object=var2446, "Buffer"=var219, java.lang.IllegalArgumentException=var294, $r1=var3358, $r2=var2744, $r3=var3558, $r4=var2382, $r5=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.commons.io.input.buffer.CircularByteBuffer;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Buffer");	if i0 < 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal offset: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2