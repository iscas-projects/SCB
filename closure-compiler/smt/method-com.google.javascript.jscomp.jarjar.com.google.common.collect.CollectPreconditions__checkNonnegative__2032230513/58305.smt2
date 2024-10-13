(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var3899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3899-init () var3899)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3899 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2587 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2587 null-Int)))
(declare-const var1219 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1219 null-String)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (not (>= var2587 0))) ; Negate: Cond: i0 >= 0  
(define-const var2418 var3899 var3899-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2409 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2409)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2409!1 String)
(assert (= var2409!1 ""))
(assert true)
(define-const var3530 String (append/672562846 var2409!1 var1219)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2409!2 String)
(assert (= var2409!2 (str.++ var2409!1 var1219)))
(assert true)
(define-const var3258 String (append/672562846 var3530 " cannot be negative but was: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative but was: ") 
(declare-const var3530!1 String)
(assert (= var3530!1 (str.++ var3530 " cannot be negative but was: ")))
(assert true)
(define-const var2154 String (append/-1001720160 var3258 var2587)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3258!1 String)
(assert (str.prefixof var3258 var3258!1))
(assert true)
(define-const var1367 String (toString/-2075883882 var2154)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2418 var1367)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2418!1 var3899)
(declare-const var1367!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3899-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2587=i0, var1219=r2, var2129=null_type, var3899=java.lang.IllegalArgumentException, var2418=$r0, var2409=$r1, var3530=$r3, var3258=$r4, var2154=$r5, var1367=$r6}
; {i0=var2587, r2=var1219, null_type=var2129, java.lang.IllegalArgumentException=var3899, $r0=var2418, $r1=var2409, $r3=var3530, $r4=var3258, $r5=var2154, $r6=var1367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 >= 0 goto return i0;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cannot be negative but was: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2