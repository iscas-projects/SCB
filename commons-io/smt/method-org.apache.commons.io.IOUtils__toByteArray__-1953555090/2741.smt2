(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3861 0)
(declare-sort var1587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1587-init () var1587)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1587 String) void)
(declare-const null-var3861 var3861)
(declare-const null-Int Int)
(declare-const var2175 var3861) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2175 null-var3861)))
(declare-const var883 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var883 null-Int)))
(define-const var2426 Int (ite (> var883 2147483647) 1 (ite (< var883 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var1919 Int (cast-from-Int-to-Int var2426)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (not (<= var1919 0))) ; Negate: Cond: $i3 <= 0  
(define-const var2237 var1587 var1587-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3639 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3639)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3639!1 String)
(assert (= var3639!1 ""))
(assert true)
(define-const var1284 String (append/672562846 var3639!1 "Size cannot be greater than Integer max value: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size cannot be greater than Integer max value: ") 
(declare-const var3639!2 String)
(assert (= var3639!2 (str.++ var3639!1 "Size cannot be greater than Integer max value: ")))
(assert true)
(define-const var1802 String (append/-901862667 var1284 var883)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1284!1 String)
(assert (str.prefixof var1284 var1284!1))
(assert true)
(define-const var2509 String (toString/-2075883882 var1802)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2237 var2509)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2237!1 var1587)
(declare-const var2509!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1587-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3861=java.io.InputStream, var2175=r0, var883=l0, var2426=$b1, var1919=$i3, var1587=java.lang.IllegalArgumentException, var2237=$r8, var3639=$r7, var1284=$r4, var1802=$r5, var2509=$r6}
; {java.io.InputStream=var3861, r0=var2175, l0=var883, $b1=var2426, $i3=var1919, java.lang.IllegalArgumentException=var1587, $r8=var2237, $r7=var3639, $r4=var1284, $r5=var1802, $r6=var2509}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size cannot be greater than Integer max value: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2