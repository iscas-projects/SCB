(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1658 0)
(declare-sort var2412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2412-init () var2412)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2412 String) void)
(declare-const null-var1658 var1658)
(declare-const null-Int Int)
(declare-const var2458 var1658) ; Statement: r5 := @this: freemarker.core.Configurable 
(assert (not (= var2458 null-var1658)))
(declare-const var1679 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1679 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var1679 0)) ; Cond: i0 < 0 
(define-const var1927 var2412 var2412-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3558 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3558)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3558!1 String)
(assert (= var3558!1 ""))
(assert true)
(define-const var1561 String (append/672562846 var3558!1 "Unsupported \u0022classicCompatibility\u0022: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported \"classicCompatibility\": ") 
(declare-const var3558!2 String)
(assert (= var3558!2 (str.++ var3558!1 "Unsupported \u0022classicCompatibility\u0022: ")))
(assert true)
(define-const var2274 String (append/-1001720160 var1561 var1679)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1561!1 String)
(assert (str.prefixof var1561 var1561!1))
(assert true)
(define-const var3345 String (toString/-2075883882 var2274)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1927 var3345)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1927!1 var2412)
(declare-const var3345!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2412-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1658=freemarker.core.Configurable, var2458=r5, var1679=i0, var2412=java.lang.IllegalArgumentException, var1927=$r0, var3558=$r1, var1561=$r2, var2274=$r3, var3345=$r4}
; {freemarker.core.Configurable=var1658, r5=var2458, i0=var1679, java.lang.IllegalArgumentException=var2412, $r0=var1927, $r1=var3558, $r2=var1561, $r3=var2274, $r4=var3345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: freemarker.core.Configurable;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported \"classicCompatibility\": ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2