(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var662 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var662 null-String)))
(declare-const var2533 Int) ; Statement: c3 := @parameter1: char 
(assert (not (= var2533 null-Int)))
(define-const var3805 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3805)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3805!1 String)
(assert (= var3805!1 ""))
(define-const var3629 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var1185 Int (length/-134980193 var662)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3629 var1185)) ; Cond: i4 >= i0 
(assert true)
(define-const var219 String (toString/-2075883882 var3805!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var662=r1, var3492=null_type, var2533=c3, var3805=$r0, var3629=i4, var1185=i0, var219=$r2}
; {r1=var662, null_type=var3492, c3=var2533, $r0=var3805, i4=var3629, i0=var1185, $r2=var219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	c3 := @parameter1: char;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3