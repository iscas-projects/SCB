(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort var2104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByteCount/-1840449703 (var1980) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2104-init () var2104)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2104 String) void)
(declare-const null-var1980 var1980)
(declare-const var2569 var1980) ; Statement: r0 := @this: org.apache.commons.io.input.CountingInputStream 
(assert (not (= var2569 null-var1980)))
(assert true)
(define-const var2316 Int (getByteCount/-1840449703 var2569)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long getByteCount()>() 
(define-const var1645 Int (ite (> var2316 2147483647) 1 (ite (< var2316 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var1228 Int (cast-from-Int-to-Int var1645)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (not (<= var1228 0))) ; Negate: Cond: $i3 <= 0  
(define-const var70 var2104 var2104-init) ; Statement: $r8 = new java.lang.ArithmeticException 
(define-const var2771 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2771)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2771!1 String)
(assert (= var2771!1 ""))
(assert true)
(define-const var887 String (append/672562846 var2771!1 "The byte count ")) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ") 
(declare-const var2771!2 String)
(assert (= var2771!2 (str.++ var2771!1 "The byte count ")))
(assert true)
(define-const var1359 String (append/-901862667 var887 var2316)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var887!1 String)
(assert (str.prefixof var887 var887!1))
(assert true)
(define-const var3065 String (append/672562846 var1359 " is too large to be converted to an int")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int") 
(declare-const var1359!1 String)
(assert (= var1359!1 (str.++ var1359 " is too large to be converted to an int")))
(assert true)
(define-const var3270 String (toString/-2075883882 var3065)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var70 var3270)) ; Statement: specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6) 

(declare-const var70!1 var2104)
(declare-const var3270!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getByteCount/-1840449703=([org.apache.commons.io.input.CountingInputStream], long), cast-from-Int-to-Int=([byte], int), var2104-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var1980=org.apache.commons.io.input.CountingInputStream, var2569=r0, var2316=l0, var1645=$b1, var1228=$i3, var2104=java.lang.ArithmeticException, var70=$r8, var2771=$r7, var887=$r3, var1359=$r4, var3065=$r5, var3270=$r6}
; {org.apache.commons.io.input.CountingInputStream=var1980, r0=var2569, l0=var2316, $b1=var1645, $i3=var1228, java.lang.ArithmeticException=var2104, $r8=var70, $r7=var2771, $r3=var887, $r4=var1359, $r5=var3065, $r6=var3270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CountingInputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long getByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$r8 = new java.lang.ArithmeticException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2