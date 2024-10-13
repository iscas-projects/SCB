(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1393-init () var1393)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1393 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3450 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3450 null-__Array__Int__Int__)))
(declare-const var2769 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2769 null-Int)))
(declare-const var1645 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1645 null-Int)))
(define-const var701 Int 0) ; Statement: l10 = 0L 
(define-const var1110 Int (+ var2769 var1645)) ; Statement: i11 = i0 + i1 
(define-const var3044 Int var2769) ; Statement: i12 = i0 
 ; Statement: if i1 >= 2 goto $b2 = r0[i0] 
(assert (not (>= var1645 2))) ; Negate: Cond: i1 >= 2  
(define-const var396 var1393 var1393-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var2417 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2417)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2417!1 String)
(assert (= var2417!1 ""))
(assert true)
(define-const var541 String (append/672562846 var2417!1 "Length ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length ") 
(declare-const var2417!2 String)
(assert (= var2417!2 (str.++ var2417!1 "Length ")))
(assert true)
(define-const var2496 String (append/-1001720160 var541 var1645)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var541!1 String)
(assert (str.prefixof var541 var541!1))
(assert true)
(define-const var823 String (append/672562846 var2496 " must be at least 2")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be at least 2") 
(declare-const var2496!1 String)
(assert (= var2496!1 (str.++ var2496 " must be at least 2")))
(assert true)
(define-const var3434 String (toString/-2075883882 var823)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var396 var3434)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var396!1 var1393)
(declare-const var3434!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1393-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3450=r0, var2769=i0, var1645=i1, var701=l10, var1110=i11, var3044=i12, var1393=java.lang.IllegalArgumentException, var396=$r10, var2417=$r9, var541=$r5, var2496=$r6, var823=$r7, var3434=$r8}
; {r0=var3450, i0=var2769, i1=var1645, l10=var701, i11=var1110, i12=var3044, java.lang.IllegalArgumentException=var1393, $r10=var396, $r9=var2417, $r5=var541, $r6=var2496, $r7=var823, $r8=var3434}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	l10 = 0L;	i11 = i0 + i1;	i12 = i0;	if i1 >= 2 goto $b2 = r0[i0];	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be at least 2");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2