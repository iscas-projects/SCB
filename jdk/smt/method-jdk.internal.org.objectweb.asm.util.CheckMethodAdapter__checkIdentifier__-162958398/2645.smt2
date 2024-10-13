(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1828 0)
(declare-sort var1464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1464-init () var1464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1464 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2487 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2487 null-String)))
(declare-const var1761 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1761 null-Int)))
(declare-const var979 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var979 null-Int)))
(declare-const var822 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var822 null-String)))
 ; Statement: if r0 == null goto $r23 = new java.lang.IllegalArgumentException 
(assert (= var2487 null-String)) ; Cond: r0 == null 
(define-const var3577 var1464 var1464-init) ; Statement: $r23 = new java.lang.IllegalArgumentException 
(define-const var3961 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3961)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3961!1 String)
(assert (= var3961!1 ""))
(assert true)
(define-const var1286 String (append/672562846 var3961!1 "Invalid ")) ; Statement: $r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var3961!2 String)
(assert (= var3961!2 (str.++ var3961!1 "Invalid ")))
(assert true)
(define-const var973 String (append/672562846 var1286 var822)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1286!1 String)
(assert (= var1286!1 (str.++ var1286 var822)))
(assert true)
(define-const var1829 String (append/672562846 var973 " (must not be null or empty)")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)") 
(declare-const var973!1 String)
(assert (= var973!1 (str.++ var973 " (must not be null or empty)")))
(assert true)
(define-const var2319 String (toString/-2075883882 var1829)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3577 var2319)) ; Statement: specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var3577!1 var1464)
(declare-const var2319!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var1464-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2487=r0, var1828=null_type, var1761=i1, var979=i0, var822=r1, var1464=java.lang.IllegalArgumentException, var3577=$r23, var3961=$r22, var1286=$r18, var973=$r19, var1829=$r20, var2319=$r21}
; {r0=var2487, null_type=var1828, i1=var1761, i0=var979, r1=var822, java.lang.IllegalArgumentException=var1464, $r23=var3577, $r22=var3961, $r18=var1286, $r19=var973, $r20=var1829, $r21=var2319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: java.lang.String;	if r0 == null goto $r23 = new java.lang.IllegalArgumentException;	$r23 = new java.lang.IllegalArgumentException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r23
;block_num 2