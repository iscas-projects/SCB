(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2883 0)
(declare-sort var2564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2883_checkPositive/-144509040 (String Int) Int)
(declare-fun var2564-init () var2564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2564 String) void)
(declare-const null-Int Int)
(declare-const var1375 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1375 null-Int)))
;(assert (var2883_checkPositive/-144509040 "x" var1375)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: int checkPositive(java.lang.String,int)>("x", i0) 

(declare-const var1613 String)
(declare-const var1375!1 Int)
 ; Statement: if i0 <= 1073741824 goto $i1 = i0 - 1 
(assert (not (<= var1375!1 1073741824))) ; Negate: Cond: i0 <= 1073741824  
(define-const var3221 var2564 var2564-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var846 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var846)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var846!1 String)
(assert (= var846!1 ""))
(assert true)
(define-const var1111 String (append/672562846 var846!1 "ceilingPowerOfTwo(")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ceilingPowerOfTwo(") 
(declare-const var846!2 String)
(assert (= var846!2 (str.++ var846!1 "ceilingPowerOfTwo(")))
(assert true)
(define-const var3571 String (append/-1001720160 var1111 var1375!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1111!1 String)
(assert (str.prefixof var1111 var1111!1))
(assert true)
(define-const var271 String (append/672562846 var3571 ") not representable as an int")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") not representable as an int") 
(declare-const var3571!1 String)
(assert (= var3571!1 (str.++ var3571 ") not representable as an int")))
(assert true)
(define-const var360 String (toString/-2075883882 var271)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var3221 var360)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5) 

(declare-const var3221!1 var2564)
(declare-const var360!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2883_checkPositive/-144509040=([java.lang.String, int], int), var2564-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var1375=i0, var2883=com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions, var1613="x", var2564=java.lang.ArithmeticException, var3221=$r0, var846=$r1, var1111=$r2, var3571=$r3, var271=$r4, var360=$r5}
; {i0=var1375, com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions=var2883, "x"=var1613, java.lang.ArithmeticException=var2564, $r0=var3221, $r1=var846, $r2=var1111, $r3=var3571, $r4=var271, $r5=var360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: int checkPositive(java.lang.String,int)>("x", i0);	if i0 <= 1073741824 goto $i1 = i0 - 1;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ceilingPowerOfTwo(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") not representable as an int");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2