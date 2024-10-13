(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var812 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var812 null-String)))
(define-const var3415 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3415)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3415!1 String)
(assert (= var3415!1 ""))
(define-const var2692 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1392 Int (length/-134980193 var812)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2692 var1392)) ; Cond: i6 >= $i0 
(assert true)
(define-const var27 String (toString/-2075883882 var3415!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var812=r1, var406=null_type, var3415=$r13, var2692=i6, var1392=$i0, var27=$r2}
; {r1=var812, null_type=var406, $r13=var3415, i6=var2692, $i0=var1392, $r2=var27}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3