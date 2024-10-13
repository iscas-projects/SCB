(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2674 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2674 null-String)))
(assert true)
(define-const var188 Int (length/-134980193 var2674)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2560 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2560)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2560!1 String)
(assert (= var2560!1 ""))
(define-const var1121 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1121 var188)) ; Cond: i3 >= i0 
(assert true)
(define-const var3346 String (toString/-2075883882 var2560!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2674=r0, var611=null_type, var188=i0, var2560=$r4, var1121=i3, var3346=$r2}
; {r0=var2674, null_type=var611, i0=var188, $r4=var2560, i3=var1121, $r2=var3346}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3