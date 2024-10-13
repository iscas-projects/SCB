(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var525 0)
(declare-sort var2797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resetByteCount/-2124977600 (var525) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2797-init () var2797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2797 String) void)
(declare-const null-var525 var525)
(declare-const var1496 var525) ; Statement: r0 := @this: org.apache.commons.io.output.CountingOutputStream 
(assert (not (= var1496 null-var525)))
(assert true)
(define-const var2589 Int (resetByteCount/-2124977600 var1496)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long resetByteCount()>() 
(define-const var1485 Int (ite (> var2589 2147483647) 1 (ite (< var2589 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var1076 Int (cast-from-Int-to-Int var1485)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (not (<= var1076 0))) ; Negate: Cond: $i3 <= 0  
(define-const var145 var2797 var2797-init) ; Statement: $r8 = new java.lang.ArithmeticException 
(define-const var642 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var642)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var642!1 String)
(assert (= var642!1 ""))
(assert true)
(define-const var3036 String (append/672562846 var642!1 "The byte count ")) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ") 
(declare-const var642!2 String)
(assert (= var642!2 (str.++ var642!1 "The byte count ")))
(assert true)
(define-const var2666 String (append/-901862667 var3036 var2589)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3036!1 String)
(assert (str.prefixof var3036 var3036!1))
(assert true)
(define-const var2994 String (append/672562846 var2666 " is too large to be converted to an int")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int") 
(declare-const var2666!1 String)
(assert (= var2666!1 (str.++ var2666 " is too large to be converted to an int")))
(assert true)
(define-const var777 String (toString/-2075883882 var2994)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var145 var777)) ; Statement: specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6) 

(declare-const var145!1 var2797)
(declare-const var777!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {resetByteCount/-2124977600=([org.apache.commons.io.output.CountingOutputStream], long), cast-from-Int-to-Int=([byte], int), var2797-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var525=org.apache.commons.io.output.CountingOutputStream, var1496=r0, var2589=l0, var1485=$b1, var1076=$i3, var2797=java.lang.ArithmeticException, var145=$r8, var642=$r7, var3036=$r3, var2666=$r4, var2994=$r5, var777=$r6}
; {org.apache.commons.io.output.CountingOutputStream=var525, r0=var1496, l0=var2589, $b1=var1485, $i3=var1076, java.lang.ArithmeticException=var2797, $r8=var145, $r7=var642, $r3=var3036, $r4=var2666, $r5=var2994, $r6=var777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.CountingOutputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long resetByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$r8 = new java.lang.ArithmeticException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2