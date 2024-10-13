(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2947 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2947 null-String)))
(define-const var2317 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2317)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2317!1 String)
(assert (= var2317!1 ""))
(define-const var186 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2026 Int (length/-134980193 var2947)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var186 var2026)) ; Cond: i2 >= $i0 
(assert true)
(define-const var1301 String (toString/-2075883882 var2317!1)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2947=r1, var3325=null_type, var2317=$r5, var186=i2, var2026=$i0, var1301=$r2}
; {r1=var2947, null_type=var3325, $r5=var2317, i2=var186, $i0=var2026, $r2=var1301}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= $i0 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3