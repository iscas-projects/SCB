(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3333 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3333 null-String)))
(assert true)
(define-const var1324 (Array Int String) (split/-636890950 var3333 "\u005cp{Punct}")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\p{Punct}") 
(define-const var3349 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3349)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3349!1 String)
(assert (= var3349!1 ""))
(define-const var28 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3598 Int (getLength-Arr-String-1 var1324)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto $i1 = lengthof r1 
(assert (>= var28 var3598)) ; Cond: i3 >= $i0 
(define-const var3411 Int (getLength-Arr-String-1 var1324)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 >= 3 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3411 3)) ; Cond: $i1 >= 3 
(assert true)
(define-const var1582 String (toString/-2075883882 var3349!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3333=r0, var3708=null_type, var1324=r1, var3349=$r2, var28=i3, var3598=$i0, var3411=$i1, var1582=$r3}
; {r0=var3333, null_type=var3708, r1=var1324, $r2=var3349, i3=var28, $i0=var3598, $i1=var3411, $r3=var1582}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\p{Punct}");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto $i1 = lengthof r1;	$i1 = lengthof r1;	if $i1 >= 3 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4