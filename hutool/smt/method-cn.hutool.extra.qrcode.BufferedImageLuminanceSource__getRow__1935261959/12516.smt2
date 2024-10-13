(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2028 0)
(declare-sort var2777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2777-init () var2777)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2777 String) void)
(declare-const null-var2028 var2028)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2526 var2028) ; Statement: r5 := @this: cn.hutool.extra.qrcode.BufferedImageLuminanceSource 
(assert (not (= var2526 null-var2028)))
(declare-const var2339 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2339 null-Int)))
(declare-const var2340 (Array Int Int)) ; Statement: r6 := @parameter1: byte[] 
(assert (not (= var2340 null-__Array__Int__Int__)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var2339 0)) ; Cond: i0 < 0 
(define-const var3525 var2777 var2777-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3039 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3039)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3039!1 String)
(assert (= var3039!1 ""))
(assert true)
(define-const var3287 String (append/672562846 var3039!1 "Requested row is outside the image: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Requested row is outside the image: ") 
(declare-const var3039!2 String)
(assert (= var3039!2 (str.++ var3039!1 "Requested row is outside the image: ")))
(assert true)
(define-const var3484 String (append/-1001720160 var3287 var2339)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3287!1 String)
(assert (str.prefixof var3287 var3287!1))
(assert true)
(define-const var2734 String (toString/-2075883882 var3484)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3525 var2734)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3525!1 var2777)
(declare-const var2734!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2777-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2028=cn.hutool.extra.qrcode.BufferedImageLuminanceSource, var2526=r5, var2339=i0, var2340=r6, var2777=java.lang.IllegalArgumentException, var3525=$r0, var3039=$r1, var3287=$r2, var3484=$r3, var2734=$r4}
; {cn.hutool.extra.qrcode.BufferedImageLuminanceSource=var2028, r5=var2526, i0=var2339, r6=var2340, java.lang.IllegalArgumentException=var2777, $r0=var3525, $r1=var3039, $r2=var3287, $r3=var3484, $r4=var2734}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.qrcode.BufferedImageLuminanceSource;	i0 := @parameter0: int;	r6 := @parameter1: byte[];	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Requested row is outside the image: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2