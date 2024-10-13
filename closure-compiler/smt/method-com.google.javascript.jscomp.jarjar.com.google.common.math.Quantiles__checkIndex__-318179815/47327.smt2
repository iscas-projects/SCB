(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3661-init () var3661)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3661 String) void)
(declare-const null-Int Int)
(declare-const var2579 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2579 null-Int)))
(declare-const var2940 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2940 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var2579 0)) ; Cond: i0 < 0 
(define-const var1200 var3661 var3661-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1110 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1110)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1110!1 String)
(assert (= var1110!1 ""))
(assert true)
(define-const var1135 String (append/672562846 var1110!1 "Quantile indexes must be between 0 and the scale, which is ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Quantile indexes must be between 0 and the scale, which is ") 
(declare-const var1110!2 String)
(assert (= var1110!2 (str.++ var1110!1 "Quantile indexes must be between 0 and the scale, which is ")))
(assert true)
(define-const var2875 String (append/-1001720160 var1135 var2940)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1135!1 String)
(assert (str.prefixof var1135 var1135!1))
(assert true)
(define-const var3641 String (toString/-2075883882 var2875)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1200 var3641)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1200!1 var3661)
(declare-const var3641!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3661-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2579=i0, var2940=i1, var3661=java.lang.IllegalArgumentException, var1200=$r0, var1110=$r1, var1135=$r2, var2875=$r3, var3641=$r4}
; {i0=var2579, i1=var2940, java.lang.IllegalArgumentException=var3661, $r0=var1200, $r1=var1110, $r2=var1135, $r3=var2875, $r4=var3641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Quantile indexes must be between 0 and the scale, which is ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2