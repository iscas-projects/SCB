(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3536 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3536 null-String)))
(declare-const var2138 Int) ; Statement: c3 := @parameter1: char 
(assert (not (= var2138 null-Int)))
(define-const var2744 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2744)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2744!1 String)
(assert (= var2744!1 ""))
(define-const var1736 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2692 Int (length/-134980193 var3536)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1736 var2692)) ; Cond: i4 >= i0 
(assert true)
(define-const var3167 String (toString/-2075883882 var2744!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3536=r1, var2067=null_type, var2138=c3, var2744=$r0, var1736=i4, var2692=i0, var3167=$r2}
; {r1=var3536, null_type=var2067, c3=var2138, $r0=var2744, i4=var1736, i0=var2692, $r2=var3167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	c3 := @parameter1: char;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3