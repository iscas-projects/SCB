(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3243 0)
(declare-sort var2135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resetByteCount/-1840539502 (var3243) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2135-init () var2135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var2135 String) void)
(declare-const null-var3243 var3243)
(declare-const var2842 var3243) ; Statement: r0 := @this: org.apache.commons.io.input.CountingInputStream 
(assert (not (= var2842 null-var3243)))
(assert true)
(define-const var387 Int (resetByteCount/-1840539502 var2842)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long resetByteCount()>() 
(define-const var873 Int (ite (> var387 2147483647) 1 (ite (< var387 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var3197 Int (cast-from-Int-to-Int var873)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (not (<= var3197 0))) ; Negate: Cond: $i3 <= 0  
(define-const var208 var2135 var2135-init) ; Statement: $r8 = new java.lang.ArithmeticException 
(define-const var3213 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3213)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3213!1 String)
(assert (= var3213!1 ""))
(assert true)
(define-const var158 String (append/672562846 var3213!1 "The byte count ")) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ") 
(declare-const var3213!2 String)
(assert (= var3213!2 (str.++ var3213!1 "The byte count ")))
(assert true)
(define-const var927 String (append/-901862667 var158 var387)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var158!1 String)
(assert (str.prefixof var158 var158!1))
(assert true)
(define-const var2305 String (append/672562846 var927 " is too large to be converted to an int")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int") 
(declare-const var927!1 String)
(assert (= var927!1 (str.++ var927 " is too large to be converted to an int")))
(assert true)
(define-const var161 String (toString/-2075883882 var2305)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var208 var161)) ; Statement: specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6) 

(declare-const var208!1 var2135)
(declare-const var161!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {resetByteCount/-1840539502=([org.apache.commons.io.input.CountingInputStream], long), cast-from-Int-to-Int=([byte], int), var2135-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var3243=org.apache.commons.io.input.CountingInputStream, var2842=r0, var387=l0, var873=$b1, var3197=$i3, var2135=java.lang.ArithmeticException, var208=$r8, var3213=$r7, var158=$r3, var927=$r4, var2305=$r5, var161=$r6}
; {org.apache.commons.io.input.CountingInputStream=var3243, r0=var2842, l0=var387, $b1=var873, $i3=var3197, java.lang.ArithmeticException=var2135, $r8=var208, $r7=var3213, $r3=var158, $r4=var927, $r5=var2305, $r6=var161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CountingInputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long resetByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$r8 = new java.lang.ArithmeticException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2