(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var1255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1255-init () var1255)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1255 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2345 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2345 null-Int)))
(declare-const var2116 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2116 null-String)))
(define-const var3689 Int (ite (> var2345 0) 1 (ite (< var2345 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1793 Int (cast-from-Int-to-Int var3689)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return l0 
(assert (not (>= var1793 0))) ; Negate: Cond: $i2 >= 0  
(define-const var924 var1255 var1255-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1227 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1227)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1227!1 String)
(assert (= var1227!1 ""))
(assert true)
(define-const var3376 String (append/672562846 var1227!1 var2116)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1227!2 String)
(assert (= var1227!2 (str.++ var1227!1 var2116)))
(assert true)
(define-const var498 String (append/672562846 var3376 " cannot be negative but was: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative but was: ") 
(declare-const var3376!1 String)
(assert (= var3376!1 (str.++ var3376 " cannot be negative but was: ")))
(assert true)
(define-const var923 String (append/-901862667 var498 var2345)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var498!1 String)
(assert (str.prefixof var498 var498!1))
(assert true)
(define-const var66 String (toString/-2075883882 var923)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var924 var66)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var924!1 var1255)
(declare-const var66!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1255-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2345=l0, var2116=r2, var1012=null_type, var3689=$b1, var1793=$i2, var1255=java.lang.IllegalArgumentException, var924=$r8, var1227=$r7, var3376=$r3, var498=$r4, var923=$r5, var66=$r6}
; {l0=var2345, r2=var2116, null_type=var1012, $b1=var3689, $i2=var1793, java.lang.IllegalArgumentException=var1255, $r8=var924, $r7=var1227, $r3=var3376, $r4=var498, $r5=var923, $r6=var66}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	r2 := @parameter1: java.lang.String;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto return l0;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative but was: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2