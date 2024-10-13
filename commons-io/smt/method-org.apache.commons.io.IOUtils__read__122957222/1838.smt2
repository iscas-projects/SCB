(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var877 0)
(declare-sort var2766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2766-init () var2766)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2766 String) void)
(declare-const null-var877 var877)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3389 var877) ; Statement: r0 := @parameter0: org.apache.commons.io.function.IOTriFunction 
(assert (not (= var3389 null-var877)))
(declare-const var257 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var257 null-__Array__Int__Int__)))
(declare-const var234 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var234 null-Int)))
(declare-const var1369 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1369 null-Int)))
 ; Statement: if i0 >= 0 goto i6 = i0 
(assert (not (>= var1369 0))) ; Negate: Cond: i0 >= 0  
(define-const var2107 var2766 var2766-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var3832 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3832)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3832!1 String)
(assert (= var3832!1 ""))
(assert true)
(define-const var2786 String (append/672562846 var3832!1 "Length must not be negative: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length must not be negative: ") 
(declare-const var3832!2 String)
(assert (= var3832!2 (str.++ var3832!1 "Length must not be negative: ")))
(assert true)
(define-const var3463 String (append/-1001720160 var2786 var1369)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2786!1 String)
(assert (str.prefixof var2786 var2786!1))
(assert true)
(define-const var2844 String (toString/-2075883882 var3463)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2107 var2844)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2107!1 var2766)
(declare-const var2844!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2766-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var877=org.apache.commons.io.function.IOTriFunction, var3389=r0, var257=r1, var234=i3, var1369=i0, var2766=java.lang.IllegalArgumentException, var2107=$r12, var3832=$r11, var2786=$r8, var3463=$r9, var2844=$r10}
; {org.apache.commons.io.function.IOTriFunction=var877, r0=var3389, r1=var257, i3=var234, i0=var1369, java.lang.IllegalArgumentException=var2766, $r12=var2107, $r11=var3832, $r8=var2786, $r9=var3463, $r10=var2844}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.commons.io.function.IOTriFunction;	r1 := @parameter1: byte[];	i3 := @parameter2: int;	i0 := @parameter3: int;	if i0 >= 0 goto i6 = i0;	$r12 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length must not be negative: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 2