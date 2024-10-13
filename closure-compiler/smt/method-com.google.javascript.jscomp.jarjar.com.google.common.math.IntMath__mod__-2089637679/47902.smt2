(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1365-init () var1365)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var1365 String) void)
(declare-const null-Int Int)
(declare-const var1657 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1657 null-Int)))
(declare-const var568 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var568 null-Int)))
 ; Statement: if i0 > 0 goto i2 = i1 % i0 
(assert (not (> var568 0))) ; Negate: Cond: i0 > 0  
(define-const var2372 var1365 var1365-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var327 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var327)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var327!1 String)
(assert (= var327!1 ""))
(assert true)
(define-const var3471 String (append/672562846 var327!1 "Modulus ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Modulus ") 
(declare-const var327!2 String)
(assert (= var327!2 (str.++ var327!1 "Modulus ")))
(assert true)
(define-const var1372 String (append/-1001720160 var3471 var568)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3471!1 String)
(assert (str.prefixof var3471 var3471!1))
(assert true)
(define-const var2873 String (append/672562846 var1372 " must be > 0")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be > 0") 
(declare-const var1372!1 String)
(assert (= var1372!1 (str.++ var1372 " must be > 0")))
(assert true)
(define-const var2547 String (toString/-2075883882 var2873)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var2372 var2547)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5) 

(declare-const var2372!1 var1365)
(declare-const var2547!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1365-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var1657=i1, var568=i0, var1365=java.lang.ArithmeticException, var2372=$r0, var327=$r1, var3471=$r2, var1372=$r3, var2873=$r4, var2547=$r5}
; {i1=var1657, i0=var568, java.lang.ArithmeticException=var1365, $r0=var2372, $r1=var327, $r2=var3471, $r3=var1372, $r4=var2873, $r5=var2547}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	i0 := @parameter1: int;	if i0 > 0 goto i2 = i1 % i0;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Modulus ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be > 0");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2