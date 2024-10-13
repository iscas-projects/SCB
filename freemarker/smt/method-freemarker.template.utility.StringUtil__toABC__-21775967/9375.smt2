(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3759 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3759 null-Int)))
(declare-const var3135 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var3135 null-Int)))
 ; Statement: if i0 >= 1 goto i8 = 1 
(assert (>= var3759 1)) ; Cond: i0 >= 1 
(define-const var1800 Int 1) ; Statement: i8 = 1 
(define-const var1325 Int 1) ; Statement: i9 = 1 
(assert true) ; Non Conditional
(define-const var1175 Int (* var1325 26)) ; Statement: $i6 = i9 * 26 
(define-const var930 Int (+ var1800 var1175)) ; Statement: $i7 = i8 + $i6 
 ; Statement: if $i7 > i0 goto $r9 = new java.lang.StringBuilder 
(assert (> var930 var3759)) ; Cond: $i7 > i0 
(define-const var576 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var576)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var576!1 String)
(assert (= var576!1 ""))
(assert true) ; Non Conditional
 ; Statement: if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1325 0)) ; Cond: i9 == 0 
(assert true)
(define-const var1617 String (toString/-2075883882 var576!1)) ; Statement: $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3759=i0, var3135=c2, var1800=i8, var1325=i9, var1175=$i6, var930=$i7, var576=$r9, var1617=$r1}
; {i0=var3759, c2=var3135, i8=var1800, i9=var1325, $i6=var1175, $i7=var930, $r9=var576, $r1=var1617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 >= 1 goto i8 = 1;	i8 = 1;	i9 = 1;	$i6 = i9 * 26;	$i7 = i8 + $i6;	if $i7 > i0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 6