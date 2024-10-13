(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3101-init () var3101)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3101 String) void)
(declare-const null-Int Int)
(declare-const var257 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var257 null-Int)))
(declare-const var665 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var665 null-Int)))
 ; Statement: if i0 >= 1 goto i8 = 1 
(assert (not (>= var257 1))) ; Negate: Cond: i0 >= 1  
(define-const var1203 var3101 var3101-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1403 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1403)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1403!1 String)
(assert (= var1403!1 ""))
(assert true)
(define-const var862 String (append/672562846 var1403!1 "Can\u0027t convert 0 or negative numbers to latin-number: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t convert 0 or negative numbers to latin-number: ") 
(declare-const var1403!2 String)
(assert (= var1403!2 (str.++ var1403!1 "Can\u0027t convert 0 or negative numbers to latin-number: ")))
(assert true)
(define-const var2474 String (append/-1001720160 var862 var257)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var862!1 String)
(assert (str.prefixof var862 var862!1))
(assert true)
(define-const var3462 String (toString/-2075883882 var2474)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1203 var3462)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1203!1 var3101)
(declare-const var3462!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3101-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var257=i0, var665=c2, var3101=java.lang.IllegalArgumentException, var1203=$r8, var1403=$r7, var862=$r4, var2474=$r5, var3462=$r6}
; {i0=var257, c2=var665, java.lang.IllegalArgumentException=var3101, $r8=var1203, $r7=var1403, $r4=var862, $r5=var2474, $r6=var3462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 >= 1 goto i8 = 1;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t convert 0 or negative numbers to latin-number: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2