(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var1870 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var500-init () var500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var500 String) void)
(declare-const null-var1415 var1415)
(declare-const null-Int Int)
(declare-const null-var1870 var1870)
(declare-const var2267 var1415) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2267 null-var1415)))
(declare-const var57 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var57 null-Int)))
(declare-const var1539 var1870) ; Statement: r1 := @parameter2: java.util.function.Supplier 
(assert (not (= var1539 null-var1870)))
(define-const var754 Int (ite (> var57 0) 1 (ite (< var57 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var2836 Int (cast-from-Int-to-Int var754)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 >= 0 goto l2 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, r1) 
(assert (not (>= var2836 0))) ; Negate: Cond: $i4 >= 0  
(define-const var319 var500 var500-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var1556 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1556)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1556!1 String)
(assert (= var1556!1 ""))
(assert true)
(define-const var1575 String (append/672562846 var1556!1 "Bytes to skip must not be negative: ")) ; Statement: $r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip must not be negative: ") 
(declare-const var1556!2 String)
(assert (= var1556!2 (str.++ var1556!1 "Bytes to skip must not be negative: ")))
(assert true)
(define-const var3700 String (append/-901862667 var1575 var57)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1575!1 String)
(assert (str.prefixof var1575 var1575!1))
(assert true)
(define-const var3531 String (toString/-2075883882 var3700)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var319 var3531)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var319!1 var500)
(declare-const var3531!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var500-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1415=java.io.InputStream, var2267=r0, var57=l0, var1870=java.util.function.Supplier, var1539=r1, var754=$b1, var2836=$i4, var500=java.lang.IllegalArgumentException, var319=$r15, var1556=$r14, var1575=$r11, var3700=$r12, var3531=$r13}
; {java.io.InputStream=var1415, r0=var2267, l0=var57, java.util.function.Supplier=var1870, r1=var1539, $b1=var754, $i4=var2836, java.lang.IllegalArgumentException=var500, $r15=var319, $r14=var1556, $r11=var1575, $r12=var3700, $r13=var3531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	r1 := @parameter2: java.util.function.Supplier;	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 >= 0 goto l2 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, r1);	$r15 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bytes to skip must not be negative: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r15
;block_num 2