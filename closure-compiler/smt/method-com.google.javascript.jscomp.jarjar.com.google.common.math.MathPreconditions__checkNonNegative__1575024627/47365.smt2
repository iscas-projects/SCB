(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var3877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3877-init () var3877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3877 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var986 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var986 null-String)))
(declare-const var59 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var59 null-Int)))
(define-const var3652 Int (ite (> var59 0) 1 (ite (< var59 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var237 Int (cast-from-Int-to-Int var3652)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return l0 
(assert (not (>= var237 0))) ; Negate: Cond: $i2 >= 0  
(define-const var3637 var3877 var3877-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3094 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3094)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3094!1 String)
(assert (= var3094!1 ""))
(assert true)
(define-const var2102 String (append/672562846 var3094!1 var986)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3094!2 String)
(assert (= var3094!2 (str.++ var3094!1 var986)))
(assert true)
(define-const var72 String (append/672562846 var2102 " (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2102!1 String)
(assert (= var2102!1 (str.++ var2102 " (")))
(assert true)
(define-const var2586 String (append/-901862667 var72 var59)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var72!1 String)
(assert (str.prefixof var72 var72!1))
(assert true)
(define-const var3885 String (append/672562846 var2586 ") must be >= 0")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0") 
(declare-const var2586!1 String)
(assert (= var2586!1 (str.++ var2586 ") must be >= 0")))
(assert true)
(define-const var1906 String (toString/-2075883882 var3885)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3637 var1906)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3637!1 var3877)
(declare-const var1906!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3877-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var986=r2, var335=null_type, var59=l0, var3652=$b1, var237=$i2, var3877=java.lang.IllegalArgumentException, var3637=$r9, var3094=$r8, var2102=$r3, var72=$r4, var2586=$r5, var3885=$r6, var1906=$r7}
; {r2=var986, null_type=var335, l0=var59, $b1=var3652, $i2=var237, java.lang.IllegalArgumentException=var3877, $r9=var3637, $r8=var3094, $r3=var2102, $r4=var72, $r5=var2586, $r6=var3885, $r7=var1906}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto return l0;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2