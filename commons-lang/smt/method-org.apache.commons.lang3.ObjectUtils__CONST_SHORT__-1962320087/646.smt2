(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2508-init () var2508)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2508 String) void)
(declare-const null-Int Int)
(declare-const var2505 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2505 null-Int)))
(define-const var1963 Int (cast-from-Int-to-Int (- 32768))) ; Statement: $i3 = (int) -32768 
 ; Statement: if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException 
(assert (< var2505 var1963)) ; Cond: i0 < $i3 
(define-const var1774 var2508 var2508-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var930 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var930)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var930!1 String)
(assert (= var930!1 ""))
(assert true)
(define-const var3177 String (append/672562846 var930!1 "Supplied value must be a valid byte literal between (- 32768) and 32767: [")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Supplied value must be a valid byte literal between -32768 and 32767: [") 
(declare-const var930!2 String)
(assert (= var930!2 (str.++ var930!1 "Supplied value must be a valid byte literal between (- 32768) and 32767: [")))
(assert true)
(define-const var2912 String (append/-1001720160 var3177 var2505)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3177!1 String)
(assert (str.prefixof var3177 var3177!1))
(assert true)
(define-const var3038 String (append/672562846 var2912 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2912!1 String)
(assert (= var2912!1 (str.++ var2912 "]")))
(assert true)
(define-const var3375 String (toString/-2075883882 var3038)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1774 var3375)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1774!1 var2508)
(declare-const var3375!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var2508-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2505=i0, var1963=$i3, var2508=java.lang.IllegalArgumentException, var1774=$r7, var930=$r6, var3177=$r2, var2912=$r3, var3038=$r4, var3375=$r5}
; {i0=var2505, $i3=var1963, java.lang.IllegalArgumentException=var2508, $r7=var1774, $r6=var930, $r2=var3177, $r3=var2912, $r4=var3038, $r5=var3375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$i3 = (int) -32768;	if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Supplied value must be a valid byte literal between -32768 and 32767: [");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2