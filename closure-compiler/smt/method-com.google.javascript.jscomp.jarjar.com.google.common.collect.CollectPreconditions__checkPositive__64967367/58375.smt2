(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2725 0)
(declare-sort var1838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1838-init () var1838)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1838 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3287 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3287 null-Int)))
(declare-const var3458 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3458 null-String)))
 ; Statement: if i0 > 0 goto return 
(assert (not (> var3287 0))) ; Negate: Cond: i0 > 0  
(define-const var1542 var1838 var1838-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1469 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1469)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1469!1 String)
(assert (= var1469!1 ""))
(assert true)
(define-const var1933 String (append/672562846 var1469!1 var3458)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1469!2 String)
(assert (= var1469!2 (str.++ var1469!1 var3458)))
(assert true)
(define-const var3647 String (append/672562846 var1933 " must be positive but was: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be positive but was: ") 
(declare-const var1933!1 String)
(assert (= var1933!1 (str.++ var1933 " must be positive but was: ")))
(assert true)
(define-const var1138 String (append/-1001720160 var3647 var3287)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3647!1 String)
(assert (str.prefixof var3647 var3647!1))
(assert true)
(define-const var3946 String (toString/-2075883882 var1138)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1542 var3946)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1542!1 var1838)
(declare-const var3946!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1838-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3287=i0, var3458=r2, var2725=null_type, var1838=java.lang.IllegalArgumentException, var1542=$r0, var1469=$r1, var1933=$r3, var3647=$r4, var1138=$r5, var3946=$r6}
; {i0=var3287, r2=var3458, null_type=var2725, java.lang.IllegalArgumentException=var1838, $r0=var1542, $r1=var1469, $r3=var1933, $r4=var3647, $r5=var1138, $r6=var3946}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 > 0 goto return;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be positive but was: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2