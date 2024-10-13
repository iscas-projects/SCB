(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1776 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1776 null-Int)))
(declare-const var3333 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3333 null-String)))
(define-const var3008 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3008)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3008!1 String)
(assert (= var3008!1 ""))
(define-const var3728 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
 ; Statement: if i1 > i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var3728 var1776)) ; Cond: i1 > i0 
(assert true)
(define-const var2226 String (toString/-2075883882 var3008!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1776=i0, var3333=r2, var3479=null_type, var3008=$r0, var3728=i1, var2226=$r1}
; {i0=var1776, r2=var3333, null_type=var3479, $r0=var3008, i1=var3728, $r1=var2226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 1;	if i1 > i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3