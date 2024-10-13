(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3677 0)
(declare-sort var293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3677_checkPositive/765015080 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var293-init () var293)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var293 String) void)
(declare-const null-Int Int)
(declare-const var2640 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2640 null-Int)))
;(assert (var3677_checkPositive/765015080 "x" var2640)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: long checkPositive(java.lang.String,long)>("x", l0) 

(declare-const var46 String)
(declare-const var2640!1 Int)
(define-const var961 Int (ite (> var2640!1 4611686018427387904) 1 (ite (< var2640!1 4611686018427387904) (- 1) 0))) ; Statement: $b1 = l0 cmp 4611686018427387904L 
(define-const var1689 Int (cast-from-Int-to-Int var961)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 <= 0 goto $l2 = l0 - 1L 
(assert (not (<= var1689 0))) ; Negate: Cond: $i6 <= 0  
(define-const var351 var293 var293-init) ; Statement: $r7 = new java.lang.ArithmeticException 
(define-const var2836 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2836)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2836!1 String)
(assert (= var2836!1 ""))
(assert true)
(define-const var2148 String (append/672562846 var2836!1 "ceilingPowerOfTwo(")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ceilingPowerOfTwo(") 
(declare-const var2836!2 String)
(assert (= var2836!2 (str.++ var2836!1 "ceilingPowerOfTwo(")))
(assert true)
(define-const var1716 String (append/-901862667 var2148 var2640!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2148!1 String)
(assert (str.prefixof var2148 var2148!1))
(assert true)
(define-const var3702 String (append/672562846 var1716 ") is not representable as a long")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is not representable as a long") 
(declare-const var1716!1 String)
(assert (= var1716!1 (str.++ var1716 ") is not representable as a long")))
(assert true)
(define-const var2956 String (toString/-2075883882 var3702)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var351 var2956)) ; Statement: specialinvoke $r7.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5) 

(declare-const var351!1 var293)
(declare-const var2956!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3677_checkPositive/765015080=([java.lang.String, long], long), cast-from-Int-to-Int=([byte], int), var293-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var2640=l0, var3677=com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions, var46="x", var961=$b1, var1689=$i6, var293=java.lang.ArithmeticException, var351=$r7, var2836=$r6, var2148=$r2, var1716=$r3, var3702=$r4, var2956=$r5}
; {l0=var2640, com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions=var3677, "x"=var46, $b1=var961, $i6=var1689, java.lang.ArithmeticException=var293, $r7=var351, $r6=var2836, $r2=var2148, $r3=var1716, $r4=var3702, $r5=var2956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.math.MathPreconditions: long checkPositive(java.lang.String,long)>("x", l0);	$b1 = l0 cmp 4611686018427387904L;	$i6 = (int) $b1;	if $i6 <= 0 goto $l2 = l0 - 1L;	$r7 = new java.lang.ArithmeticException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ceilingPowerOfTwo(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is not representable as a long");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2