(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1417 0)
(declare-sort var1870 0)
(declare-sort var109 0)
(declare-sort var2810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun signum/-1960206851 (var1870) Int)
(declare-fun var109-init () var109)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2810) String)
(declare-fun cast-from-var1870-to-var2810 (var1870) var2810)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var109 String) void)
(declare-const null-String String)
(declare-const null-var1870 var1870)
(declare-const var2734 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2734 null-String)))
(declare-const var1468 var1870) ; Statement: r0 := @parameter1: java.math.BigInteger 
(assert (not (= var1468 null-var1870)))
(assert true)
(define-const var1611 Int (signum/-1960206851 var1468)) ; Statement: $i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>() 
 ; Statement: if $i0 > 0 goto return r0 
(assert (not (> var1611 0))) ; Negate: Cond: $i0 > 0  
(define-const var3555 var109 var109-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2242 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2242)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2242!1 String)
(assert (= var2242!1 ""))
(assert true)
(define-const var2057 String (append/672562846 var2242!1 var2734)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2242!2 String)
(assert (= var2242!2 (str.++ var2242!1 var2734)))
(assert true)
(define-const var1624 String (append/672562846 var2057 " (")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 " (")))
(assert true)
(define-const var3235 String (append/-1031950772 var1624 (cast-from-var1870-to-var2810 var1468))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1624!1 String)
(assert (str.prefixof var1624 var1624!1))
(assert true)
(define-const var2443 String (append/672562846 var3235 ") must be > 0")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0") 
(declare-const var3235!1 String)
(assert (= var3235!1 (str.++ var3235 ") must be > 0")))
(assert true)
(define-const var1626 String (toString/-2075883882 var2443)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3555 var1626)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3555!1 var109)
(declare-const var1626!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {signum/-1960206851=([java.math.BigInteger], int), var109-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1870-to-var2810=([java.math.BigInteger], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2734=r3, var1417=null_type, var1870=java.math.BigInteger, var1468=r0, var1611=$i0, var109=java.lang.IllegalArgumentException, var3555=$r1, var2242=$r2, var2057=$r4, var1624=$r5, var2810=java.lang.Object, var3235=$r6, var2443=$r7, var1626=$r8}
; {r3=var2734, null_type=var1417, java.math.BigInteger=var1870, r0=var1468, $i0=var1611, java.lang.IllegalArgumentException=var109, $r1=var3555, $r2=var2242, $r4=var2057, $r5=var1624, java.lang.Object=var2810, $r6=var3235, $r7=var2443, $r8=var1626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.math.BigInteger;	$i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>();	if $i0 > 0 goto return r0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2