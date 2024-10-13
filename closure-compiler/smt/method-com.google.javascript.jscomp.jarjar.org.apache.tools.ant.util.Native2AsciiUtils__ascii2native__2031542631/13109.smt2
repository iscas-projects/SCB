(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2369 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2369 null-String)))
(define-const var2685 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2685)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2685!1 String)
(assert (= var2685!1 ""))
(assert true)
(define-const var136 Int (length/-134980193 var2369)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3414 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3414 var136)) ; Cond: i7 >= i0 
(assert true)
(define-const var393 String (toString/-2075883882 var2685!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2369=r1, var591=null_type, var2685=$r4, var136=i0, var3414=i7, var393=$r2}
; {r1=var2369, null_type=var591, $r4=var2685, i0=var136, i7=var3414, $r2=var393}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i7 = 0;	if i7 >= i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3