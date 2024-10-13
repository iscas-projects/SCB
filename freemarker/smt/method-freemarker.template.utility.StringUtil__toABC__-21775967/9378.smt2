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
(declare-const var3889 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3889 null-Int)))
(declare-const var2752 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var2752 null-Int)))
 ; Statement: if i0 >= 1 goto i8 = 1 
(assert (>= var3889 1)) ; Cond: i0 >= 1 
(define-const var2391 Int 1) ; Statement: i8 = 1 
(define-const var670 Int 1) ; Statement: i9 = 1 
(assert true) ; Non Conditional
(define-const var783 Int (* var670 26)) ; Statement: $i6 = i9 * 26 
(define-const var906 Int (+ var2391 var783)) ; Statement: $i7 = i8 + $i6 
 ; Statement: if $i7 > i0 goto $r9 = new java.lang.StringBuilder 
(assert (not (> var906 var3889))) ; Negate: Cond: $i7 > i0  
(define-const var670!1 Int var783) ; Statement: i9 = $i6 
(define-const var2391!1 Int var906) ; Statement: i8 = $i7 
 ; Statement: goto [?= $i6 = i9 * 26] 
(assert true) ; Non Conditional
(define-const var783!1 Int (* var670!1 26)) ; Statement: $i6 = i9 * 26 
(define-const var906!1 Int (+ var2391!1 var783!1)) ; Statement: $i7 = i8 + $i6 
 ; Statement: if $i7 > i0 goto $r9 = new java.lang.StringBuilder 
(assert (> var906!1 var3889)) ; Cond: $i7 > i0 
(define-const var3690 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3690)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3690!1 String)
(assert (= var3690!1 ""))
(assert true) ; Non Conditional
 ; Statement: if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var670!1 0)) ; Cond: i9 == 0 
(assert true)
(define-const var3842 String (toString/-2075883882 var3690!1)) ; Statement: $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3889=i0, var2752=c2, var2391=i8, var670=i9, var783=$i6, var906=$i7, var3690=$r9, var3842=$r1}
; {i0=var3889, c2=var2752, i8=var2391, i9=var670, $i6=var783, $i7=var906, $r9=var3690, $r1=var3842}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 >= 1 goto i8 = 1;	i8 = 1;	i9 = 1;	$i6 = i9 * 26;	$i7 = i8 + $i6;	if $i7 > i0 goto $r9 = new java.lang.StringBuilder;	i9 = $i6;	i8 = $i7;	goto [?= $i6 = i9 * 26];	$i6 = i9 * 26;	$i7 = i8 + $i6;	if $i7 > i0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 8