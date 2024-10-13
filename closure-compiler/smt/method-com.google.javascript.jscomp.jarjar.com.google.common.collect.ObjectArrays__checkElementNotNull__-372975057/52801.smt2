(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3161 0)
(declare-sort var1060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1060-init () var1060)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var1060 String) void)
(declare-const null-var3161 var3161)
(declare-const null-Int Int)
(declare-const var2523 var3161) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2523 null-var3161)))
(declare-const var632 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var632 null-Int)))
 ; Statement: if r0 != null goto return r0 
(assert (not (not (= var2523 null-var3161)))) ; Negate: Cond: r0 != null  
(define-const var2076 var1060 var1060-init) ; Statement: $r1 = new java.lang.NullPointerException 
(define-const var125 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var125)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var125!1 String)
(assert (= var125!1 ""))
(assert true)
(define-const var866 String (append/672562846 var125!1 "at index ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("at index ") 
(declare-const var125!2 String)
(assert (= var125!2 (str.++ var125!1 "at index ")))
(assert true)
(define-const var330 String (append/-1001720160 var866 var632)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var866!1 String)
(assert (str.prefixof var866 var866!1))
(assert true)
(define-const var2934 String (toString/-2075883882 var330)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var2076 var2934)) ; Statement: specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r5) 

(declare-const var2076!1 var1060)
(declare-const var2934!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1060-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var3161=java.lang.Object, var2523=r0, var632=i0, var1060=java.lang.NullPointerException, var2076=$r1, var125=$r2, var866=$r3, var330=$r4, var2934=$r5}
; {java.lang.Object=var3161, r0=var2523, i0=var632, java.lang.NullPointerException=var1060, $r1=var2076, $r2=var125, $r3=var866, $r4=var330, $r5=var2934}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	if r0 != null goto return r0;	$r1 = new java.lang.NullPointerException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("at index ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2