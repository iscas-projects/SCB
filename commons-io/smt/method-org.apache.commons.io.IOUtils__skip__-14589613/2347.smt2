(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2361 0)
(declare-sort var3754 0)
(declare-sort var50 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var50-init () var50)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var50 String) void)
(declare-const null-var2361 var2361)
(declare-const null-Int Int)
(declare-const null-var3754 var3754)
(declare-const var583 var2361) ; Statement: r3 := @parameter0: java.io.InputStream 
(assert (not (= var583 null-var2361)))
(declare-const var1281 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1281 null-Int)))
(declare-const var17 var3754) ; Statement: r0 := @parameter2: java.util.function.Supplier 
(assert (not (= var17 null-var3754)))
(define-const var320 Int (ite (> var1281 0) 1 (ite (< var1281 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3015 Int (cast-from-Int-to-Int var320)) ; Statement: $i12 = (int) $b1 
 ; Statement: if $i12 >= 0 goto l11 = l0 
(assert (not (>= var3015 0))) ; Negate: Cond: $i12 >= 0  
(define-const var3330 var50 var50-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1879 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1879)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1879!1 String)
(assert (= var1879!1 ""))
(assert true)
(define-const var754 String (append/672562846 var1879!1 "Skip count must be non-negative, actual: ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ") 
(declare-const var1879!2 String)
(assert (= var1879!2 (str.++ var1879!1 "Skip count must be non-negative, actual: ")))
(assert true)
(define-const var3466 String (append/-901862667 var754 var1281)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var754!1 String)
(assert (str.prefixof var754 var754!1))
(assert true)
(define-const var2984 String (toString/-2075883882 var3466)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3330 var2984)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3330!1 var50)
(declare-const var2984!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var50-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2361=java.io.InputStream, var583=r3, var1281=l0, var3754=java.util.function.Supplier, var17=r0, var320=$b1, var3015=$i12, var50=java.lang.IllegalArgumentException, var3330=$r10, var1879=$r9, var754=$r6, var3466=$r7, var2984=$r8}
; {java.io.InputStream=var2361, r3=var583, l0=var1281, java.util.function.Supplier=var3754, r0=var17, $b1=var320, $i12=var3015, java.lang.IllegalArgumentException=var50, $r10=var3330, $r9=var1879, $r6=var754, $r7=var3466, $r8=var2984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	r0 := @parameter2: java.util.function.Supplier;	$b1 = l0 cmp 0L;	$i12 = (int) $b1;	if $i12 >= 0 goto l11 = l0;	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skip count must be non-negative, actual: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2