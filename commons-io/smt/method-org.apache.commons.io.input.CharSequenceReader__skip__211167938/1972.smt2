(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort var1832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1832-init () var1832)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1832 String) void)
(declare-const null-var2871 var2871)
(declare-const null-Int Int)
(declare-const var1287 var2871) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var1287 null-var2871)))
(declare-const var3710 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3710 null-Int)))
(define-const var3558 Int (ite (> var3710 0) 1 (ite (< var3710 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1326 Int (cast-from-Int-to-Int var3558)) ; Statement: $i14 = (int) $b1 
 ; Statement: if $i14 >= 0 goto $i2 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx> 
(assert (not (>= var1326 0))) ; Negate: Cond: $i14 >= 0  
(define-const var1269 var1832 var1832-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1684 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1684)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1684!1 String)
(assert (= var1684!1 ""))
(assert true)
(define-const var215 String (append/672562846 var1684!1 "Number of characters to skip is less than zero: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of characters to skip is less than zero: ") 
(declare-const var1684!2 String)
(assert (= var1684!2 (str.++ var1684!1 "Number of characters to skip is less than zero: ")))
(assert true)
(define-const var1712 String (append/-901862667 var215 var3710)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var215!1 String)
(assert (str.prefixof var215 var215!1))
(assert true)
(define-const var1610 String (toString/-2075883882 var1712)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1269 var1610)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1269!1 var1832)
(declare-const var1610!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1832-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2871=org.apache.commons.io.input.CharSequenceReader, var1287=r0, var3710=l0, var3558=$b1, var1326=$i14, var1832=java.lang.IllegalArgumentException, var1269=$r7, var1684=$r6, var215=$r3, var1712=$r4, var1610=$r5}
; {org.apache.commons.io.input.CharSequenceReader=var2871, r0=var1287, l0=var3710, $b1=var3558, $i14=var1326, java.lang.IllegalArgumentException=var1832, $r7=var1269, $r6=var1684, $r3=var215, $r4=var1712, $r5=var1610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	l0 := @parameter0: long;	$b1 = l0 cmp 0L;	$i14 = (int) $b1;	if $i14 >= 0 goto $i2 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx>;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of characters to skip is less than zero: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2