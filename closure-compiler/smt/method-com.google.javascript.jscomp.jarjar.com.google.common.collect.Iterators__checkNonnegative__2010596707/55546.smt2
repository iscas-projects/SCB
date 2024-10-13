(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var915-init () var915)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var915 String) void)
(declare-const null-Int Int)
(declare-const var1394 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1394 null-Int)))
 ; Statement: if i0 >= 0 goto return 
(assert (not (>= var1394 0))) ; Negate: Cond: i0 >= 0  
(define-const var450 var915 var915-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var1398 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1398)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1398!1 String)
(assert (= var1398!1 ""))
(assert true)
(define-const var3002 String (append/672562846 var1398!1 "position (")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position (") 
(declare-const var1398!2 String)
(assert (= var1398!2 (str.++ var1398!1 "position (")))
(assert true)
(define-const var2627 String (append/-1001720160 var3002 var1394)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3002!1 String)
(assert (str.prefixof var3002 var3002!1))
(assert true)
(define-const var1763 String (append/672562846 var2627 ") must not be negative")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must not be negative") 
(declare-const var2627!1 String)
(assert (= var2627!1 (str.++ var2627 ") must not be negative")))
(assert true)
(define-const var1354 String (toString/-2075883882 var1763)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var450 var1354)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r5) 

(declare-const var450!1 var915)
(declare-const var1354!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var915-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1394=i0, var915=java.lang.IndexOutOfBoundsException, var450=$r0, var1398=$r1, var3002=$r2, var2627=$r3, var1763=$r4, var1354=$r5}
; {i0=var1394, java.lang.IndexOutOfBoundsException=var915, $r0=var450, $r1=var1398, $r2=var3002, $r3=var2627, $r4=var1763, $r5=var1354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	if i0 >= 0 goto return;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must not be negative");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2