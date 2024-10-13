(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2124-init () var2124)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2124 String) void)
(declare-const null-Int Int)
(declare-const var897 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var897 null-Int)))
 ; Statement: if i0 < 2 goto $r3 = new java.lang.IllegalArgumentException 
(assert (< var897 2)) ; Cond: i0 < 2 
(define-const var3982 var2124 var2124-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var210 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var210)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var210!1 String)
(assert (= var210!1 ""))
(assert true)
(define-const var3335 String (append/672562846 var210!1 "must be power of 2 between 2^1 and 2^30: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must be power of 2 between 2^1 and 2^30: ") 
(declare-const var210!2 String)
(assert (= var210!2 (str.++ var210!1 "must be power of 2 between 2^1 and 2^30: ")))
(assert true)
(define-const var1539 String (append/-1001720160 var3335 var897)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3335!1 String)
(assert (str.prefixof var3335 var3335!1))
(assert true)
(define-const var3455 String (toString/-2075883882 var1539)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3982 var3455)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3982!1 var2124)
(declare-const var3455!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2124-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var897=i0, var2124=java.lang.IllegalArgumentException, var3982=$r3, var210=$r4, var3335=$r5, var1539=$r6, var3455=$r7}
; {i0=var897, java.lang.IllegalArgumentException=var2124, $r3=var3982, $r4=var210, $r5=var3335, $r6=var1539, $r7=var3455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	if i0 < 2 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must be power of 2 between 2^1 and 2^30: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2