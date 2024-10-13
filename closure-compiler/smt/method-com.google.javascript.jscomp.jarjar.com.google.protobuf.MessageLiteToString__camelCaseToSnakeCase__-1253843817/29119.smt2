(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2826 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2826 null-String)))
(define-const var426 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var426)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var426!1 String)
(assert (= var426!1 ""))
(define-const var3574 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1768 Int (length/-134980193 var2826)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3574 var1768)) ; Cond: i3 >= $i0 
(assert true)
(define-const var1504 String (toString/-2075883882 var426!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2826=r1, var1374=null_type, var426=$r0, var3574=i3, var1768=$i0, var1504=$r2}
; {r1=var2826, null_type=var1374, $r0=var426, i3=var3574, $i0=var1768, $r2=var1504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3