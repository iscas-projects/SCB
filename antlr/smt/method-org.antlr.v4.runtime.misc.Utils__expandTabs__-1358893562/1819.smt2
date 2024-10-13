(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var186 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var186 null-String)))
(declare-const var690 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var690 null-Int)))
 ; Statement: if r0 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var186 null-String))) ; Cond: r0 != null 
(define-const var3070 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3070)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3070!1 String)
(assert (= var3070!1 ""))
(define-const var1498 Int 0) ; Statement: i5 = 0 
(define-const var3767 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2551 Int (length/-134980193 var186)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3767 var2551)) ; Cond: i6 >= $i0 
(assert true)
(define-const var3917 String (toString/-2075883882 var3070!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var186=r0, var832=null_type, var690=i2, var3070=$r4, var1498=i5, var3767=i6, var2551=$i0, var3917=$r2}
; {r0=var186, null_type=var832, i2=var690, $r4=var3070, i5=var1498, i6=var3767, $i0=var2551, $r2=var3917}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	if r0 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	i6 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4