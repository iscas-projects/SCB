(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort var742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var742-init () var742)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var742 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var246 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var246 null-Int)))
(declare-const var1765 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1765 null-String)))
(define-const var3906 Int (cast-from-Int-to-Int (- 128))) ; Statement: $i2 = (int) -128 
 ; Statement: if i0 < $i2 goto $r8 = new java.lang.IllegalArgumentException 
(assert (< var246 var3906)) ; Cond: i0 < $i2 
(define-const var2208 var742 var742-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1298 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var2745 String (append/672562846 var1298!1 var1765)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 var1765)))
(assert true)
(define-const var2615 String (append/672562846 var2745 " (must be a signed byte): ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a signed byte): ") 
(declare-const var2745!1 String)
(assert (= var2745!1 (str.++ var2745 " (must be a signed byte): ")))
(assert true)
(define-const var3565 String (append/-1001720160 var2615 var246)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2615!1 String)
(assert (str.prefixof var2615 var2615!1))
(assert true)
(define-const var771 String (toString/-2075883882 var3565)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2208 var771)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2208!1 var742)
(declare-const var771!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var742-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var246=i0, var1765=r2, var3310=null_type, var3906=$i2, var742=java.lang.IllegalArgumentException, var2208=$r8, var1298=$r7, var2745=$r3, var2615=$r4, var3565=$r5, var771=$r6}
; {i0=var246, r2=var1765, null_type=var3310, $i2=var3906, java.lang.IllegalArgumentException=var742, $r8=var2208, $r7=var1298, $r3=var2745, $r4=var2615, $r5=var3565, $r6=var771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	$i2 = (int) -128;	if i0 < $i2 goto $r8 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a signed byte): ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2