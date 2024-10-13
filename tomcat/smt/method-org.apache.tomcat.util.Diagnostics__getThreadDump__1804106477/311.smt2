(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var3028-1 ((Array Int var3028)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var3028__ (Array Int var3028))
(declare-const var2265 (Array Int var3028)) ; Statement: r1 := @parameter0: java.lang.management.ThreadInfo[] 
(assert (not (= var2265 null-__Array__Int__var3028__)))
(define-const var2590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2590!1 String)
(assert (= var2590!1 ""))
(define-const var410 Int (getLength-Arr-var3028-1 var2265)) ; Statement: i0 = lengthof r1 
(define-const var2873 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2873 var410)) ; Cond: i1 >= i0 
(assert true)
(define-const var164 String (toString/-2075883882 var2590!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var3028-1=([java.lang.management.ThreadInfo[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3028=java.lang.management.ThreadInfo, var2265=r1, var2590=$r0, var410=i0, var2873=i1, var164=$r2}
; {java.lang.management.ThreadInfo=var3028, r1=var2265, $r0=var2590, i0=var410, i1=var2873, $r2=var164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.management.ThreadInfo[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3