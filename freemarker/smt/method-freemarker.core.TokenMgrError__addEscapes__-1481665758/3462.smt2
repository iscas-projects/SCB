(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var367 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var367 null-String)))
(define-const var1154 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1154)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1154!1 String)
(assert (= var1154!1 ""))
(define-const var533 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var948 Int (length/-134980193 var367)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var533 var948)) ; Cond: i6 >= $i0 
(assert true)
(define-const var3667 String (toString/-2075883882 var1154!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var367=r1, var3208=null_type, var1154=$r13, var533=i6, var948=$i0, var3667=$r2}
; {r1=var367, null_type=var3208, $r13=var1154, i6=var533, $i0=var948, $r2=var3667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3