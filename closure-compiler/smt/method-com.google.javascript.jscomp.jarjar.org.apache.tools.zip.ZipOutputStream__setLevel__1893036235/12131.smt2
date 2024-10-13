(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2831-init () var2831)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2831 String) void)
(declare-const null-var3366 var3366)
(declare-const null-Int Int)
(declare-const var434 var3366) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var434 null-var3366)))
(declare-const var1057 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1057 null-Int)))
(define-const var2541 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException 
(assert (< var1057 var2541)) ; Cond: i0 < $i3 
(define-const var1858 var2831 var2831-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var362 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var362)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var362!1 String)
(assert (= var362!1 ""))
(assert true)
(define-const var3208 String (append/672562846 var362!1 "Invalid compression level: ")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid compression level: ") 
(declare-const var362!2 String)
(assert (= var362!2 (str.++ var362!1 "Invalid compression level: ")))
(assert true)
(define-const var559 String (append/-1001720160 var3208 var1057)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3208!1 String)
(assert (str.prefixof var3208 var3208!1))
(assert true)
(define-const var505 String (toString/-2075883882 var559)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1858 var505)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1858!1 var2831)
(declare-const var505!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var2831-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3366=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var434=r5, var1057=i0, var2541=$i3, var2831=java.lang.IllegalArgumentException, var1858=$r7, var362=$r6, var3208=$r2, var559=$r3, var505=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var3366, r5=var434, i0=var1057, $i3=var2541, java.lang.IllegalArgumentException=var2831, $r7=var1858, $r6=var362, $r2=var3208, $r3=var559, $r4=var505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	i0 := @parameter0: int;	$i3 = (int) -1;	if i0 < $i3 goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid compression level: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r7
;block_num 2