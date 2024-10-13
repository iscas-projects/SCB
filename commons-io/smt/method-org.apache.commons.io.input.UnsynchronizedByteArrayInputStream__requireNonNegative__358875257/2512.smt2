(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2304 0)
(declare-sort var1925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1925-init () var1925)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1925 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3068 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3068 null-Int)))
(declare-const var2054 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2054 null-String)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (not (>= var3068 0))) ; Negate: Cond: i0 >= 0  
(define-const var2976 var1925 var1925-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3065 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3065)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3065!1 String)
(assert (= var3065!1 ""))
(assert true)
(define-const var899 String (append/672562846 var3065!1 var2054)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3065!2 String)
(assert (= var3065!2 (str.++ var3065!1 var2054)))
(assert true)
(define-const var3858 String (append/672562846 var899 " cannot be negative")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative") 
(declare-const var899!1 String)
(assert (= var899!1 (str.++ var899 " cannot be negative")))
(assert true)
(define-const var3168 String (toString/-2075883882 var3858)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2976 var3168)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2976!1 var1925)
(declare-const var3168!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1925-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3068=i0, var2054=r2, var2304=null_type, var1925=java.lang.IllegalArgumentException, var2976=$r0, var3065=$r1, var899=$r3, var3858=$r4, var3168=$r5}
; {i0=var3068, r2=var2054, null_type=var2304, java.lang.IllegalArgumentException=var1925, $r0=var2976, $r1=var3065, $r3=var899, $r4=var3858, $r5=var3168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 >= 0 goto return i0;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 2