(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3045-init () var3045)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3045 String) void)
(declare-const null-Int Int)
(declare-const var3096 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3096 null-Int)))
(define-const var3397 Int (cast-from-Int-to-Int (- 128))) ; Statement: $i3 = (int) -128 
 ; Statement: if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException 
(assert (< var3096 var3397)) ; Cond: i0 < $i3 
(define-const var2970 var3045 var3045-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1767 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1767)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1767!1 String)
(assert (= var1767!1 ""))
(assert true)
(define-const var715 String (append/672562846 var1767!1 "Supplied value must be a valid byte literal between (- 128) and 127: [")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Supplied value must be a valid byte literal between -128 and 127: [") 
(declare-const var1767!2 String)
(assert (= var1767!2 (str.++ var1767!1 "Supplied value must be a valid byte literal between (- 128) and 127: [")))
(assert true)
(define-const var3264 String (append/-1001720160 var715 var3096)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var715!1 String)
(assert (str.prefixof var715 var715!1))
(assert true)
(define-const var3729 String (append/672562846 var3264 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3264!1 String)
(assert (= var3264!1 (str.++ var3264 "]")))
(assert true)
(define-const var892 String (toString/-2075883882 var3729)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2970 var892)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2970!1 var3045)
(declare-const var892!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var3045-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3096=i0, var3397=$i3, var3045=java.lang.IllegalArgumentException, var2970=$r7, var1767=$r6, var715=$r2, var3264=$r3, var3729=$r4, var892=$r5}
; {i0=var3096, $i3=var3397, java.lang.IllegalArgumentException=var3045, $r7=var2970, $r6=var1767, $r2=var715, $r3=var3264, $r4=var3729, $r5=var892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$i3 = (int) -128;	if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Supplied value must be a valid byte literal between -128 and 127: [");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2