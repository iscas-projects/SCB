(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var876 0)
(declare-sort var3074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var876-init () var876)
(declare-fun toString/-522406933 (var3074) String)
(declare-fun cast-from-String-to-var3074 (String) var3074)
(declare-fun <init>/875830710 (var876 String) void)
(declare-const null-var3779 var3779)
(declare-const null-Int Int)
(declare-const var660 var3779) ; Statement: r0 := @this: okhttp3.Dispatcher 
(assert (not (= var660 null-var3779)))
(declare-const var1879 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1879 null-Int)))
 ; Statement: if i0 < 1 goto $z0 = 0 
(assert (< var1879 1)) ; Cond: i0 < 1 
(define-const var3497 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto entermonitor r0 
(assert (not (not (= (ite var3497 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3172 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3172)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3172!1 String)
(assert (= var3172!1 ""))
(assert true)
(define-const var2620 String (append/672562846 var3172!1 "max < 1: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ") 
(declare-const var3172!2 String)
(assert (= var3172!2 (str.++ var3172!1 "max < 1: ")))
(assert true)
(define-const var1685 String (append/-1001720160 var2620 var1879)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2620!1 String)
(assert (str.prefixof var2620 var2620!1))
(assert true)
(define-const var3942 String (toString/-2075883882 var1685)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3437 var876 var876-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3610 String (toString/-522406933 (cast-from-String-to-var3074 var3942))) ; Statement: $r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3437 var3610)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3437!1 var876)
(declare-const var3610!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var876-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3074=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3779=okhttp3.Dispatcher, var660=r0, var1879=i0, var3497=$z0, var3172=$r1, var2620=$r2, var1685=$r3, var3942=$r7, var876=java.lang.IllegalArgumentException, var3437=$r4, var3074=java.lang.Object, var3610=$r5}
; {okhttp3.Dispatcher=var3779, r0=var660, i0=var1879, $z0=var3497, $r1=var3172, $r2=var2620, $r3=var1685, $r7=var3942, java.lang.IllegalArgumentException=var876, $r4=var3437, java.lang.Object=var3074, $r5=var3610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Dispatcher;	i0 := @parameter0: int;	if i0 < 1 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto entermonitor r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.lang.IllegalArgumentException;	$r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 4