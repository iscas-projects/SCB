(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1528-init () var1528)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1528 String) void)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const var2955 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2955 null-String)))
(declare-const var1026 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var1026 null-Float64)))
(define-const var30 Int (ite (fp.gt var1026 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var1026 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b0 = d0 cmpl 0.0 
(define-const var969 Int (cast-from-Int-to-Int var30)) ; Statement: $i1 = (int) $b0 
 ; Statement: if $i1 >= 0 goto return d0 
(assert (not (>= var969 0))) ; Negate: Cond: $i1 >= 0  
(define-const var682 var1528 var1528-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var2626 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2626)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2626!1 String)
(assert (= var2626!1 ""))
(assert true)
(define-const var3838 String (append/672562846 var2626!1 var2955)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2626!2 String)
(assert (= var2626!2 (str.++ var2626!1 var2955)))
(assert true)
(define-const var1572 String (append/672562846 var3838 " (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 " (")))
(assert true)
(define-const var2129 String (append/33611274 var1572 var1026)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var1572!1 String)
(assert (str.prefixof var1572 var1572!1))
(assert true)
(define-const var2546 String (append/672562846 var2129 ") must be >= 0")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0") 
(declare-const var2129!1 String)
(assert (= var2129!1 (str.++ var2129 ") must be >= 0")))
(assert true)
(define-const var939 String (toString/-2075883882 var2546)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var682 var939)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var682!1 var1528)
(declare-const var939!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1528-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2955=r2, var3853=null_type, var1026=d0, var30=$b0, var969=$i1, var1528=java.lang.IllegalArgumentException, var682=$r9, var2626=$r8, var3838=$r3, var1572=$r4, var2129=$r5, var2546=$r6, var939=$r7}
; {r2=var2955, null_type=var3853, d0=var1026, $b0=var30, $i1=var969, java.lang.IllegalArgumentException=var1528, $r9=var682, $r8=var2626, $r3=var3838, $r4=var1572, $r5=var2129, $r6=var2546, $r7=var939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	d0 := @parameter1: double;	$b0 = d0 cmpl 0.0;	$i1 = (int) $b0;	if $i1 >= 0 goto return d0;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2