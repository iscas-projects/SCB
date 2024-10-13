(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var3833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByteCount/-1545773945 (var1309) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3833-init () var3833)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var3833 String) void)
(declare-const null-var1309 var1309)
(declare-const var2702 var1309) ; Statement: r0 := @this: org.apache.commons.io.output.CountingOutputStream 
(assert (not (= var2702 null-var1309)))
(assert true)
(define-const var630 Int (getByteCount/-1545773945 var2702)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long getByteCount()>() 
(define-const var3622 Int (ite (> var630 2147483647) 1 (ite (< var630 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var2101 Int (cast-from-Int-to-Int var3622)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (not (<= var2101 0))) ; Negate: Cond: $i3 <= 0  
(define-const var3054 var3833 var3833-init) ; Statement: $r8 = new java.lang.ArithmeticException 
(define-const var300 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var300)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var300!1 String)
(assert (= var300!1 ""))
(assert true)
(define-const var2650 String (append/672562846 var300!1 "The byte count ")) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ") 
(declare-const var300!2 String)
(assert (= var300!2 (str.++ var300!1 "The byte count ")))
(assert true)
(define-const var979 String (append/-901862667 var2650 var630)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
(assert true)
(define-const var2755 String (append/672562846 var979 " is too large to be converted to an int")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int") 
(declare-const var979!1 String)
(assert (= var979!1 (str.++ var979 " is too large to be converted to an int")))
(assert true)
(define-const var2200 String (toString/-2075883882 var2755)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var3054 var2200)) ; Statement: specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6) 

(declare-const var3054!1 var3833)
(declare-const var2200!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getByteCount/-1545773945=([org.apache.commons.io.output.CountingOutputStream], long), cast-from-Int-to-Int=([byte], int), var3833-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var1309=org.apache.commons.io.output.CountingOutputStream, var2702=r0, var630=l0, var3622=$b1, var2101=$i3, var3833=java.lang.ArithmeticException, var3054=$r8, var300=$r7, var2650=$r3, var979=$r4, var2755=$r5, var2200=$r6}
; {org.apache.commons.io.output.CountingOutputStream=var1309, r0=var2702, l0=var630, $b1=var3622, $i3=var2101, java.lang.ArithmeticException=var3833, $r8=var3054, $r7=var300, $r3=var2650, $r4=var979, $r5=var2755, $r6=var2200}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.output.CountingOutputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long getByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$r8 = new java.lang.ArithmeticException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The byte count ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is too large to be converted to an int");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2