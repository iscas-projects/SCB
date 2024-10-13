(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3237 0)
(declare-sort var2185 0)
(declare-sort var3737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var2185-1 ((Array Int var2185)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3237 var3237)
(declare-const null-__Array__Int__var2185__ (Array Int var2185))
(declare-const null-__Array__Int__var3737__ (Array Int var3737))
(declare-const var2222 var3237) ; Statement: r5 := @this: org.hibernate.internal.util.EntityPrinter 
(assert (not (= var2222 null-var3237)))
(declare-const var1708 (Array Int var2185)) ; Statement: r1 := @parameter0: org.hibernate.type.Type[] 
(assert (not (= var1708 null-__Array__Int__var2185__)))
(declare-const var1968 (Array Int var3737)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var1968 null-__Array__Int__var3737__)))
(define-const var92 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var92)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var92!1 String)
(assert (= var92!1 ""))
(define-const var2836 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2968 Int (getLength-Arr-var2185-1 var1708)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2836 var2968)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1987 String (toString/-2075883882 var92!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var2185-1=([org.hibernate.type.Type[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3237=org.hibernate.internal.util.EntityPrinter, var2222=r5, var2185=org.hibernate.type.Type, var1708=r1, var3737=java.lang.Object, var1968=r4, var92=$r0, var2836=i1, var2968=$i0, var1987=$r2}
; {org.hibernate.internal.util.EntityPrinter=var3237, r5=var2222, org.hibernate.type.Type=var2185, r1=var1708, java.lang.Object=var3737, r4=var1968, $r0=var92, i1=var2836, $i0=var2968, $r2=var1987}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.internal.util.EntityPrinter;	r1 := @parameter0: org.hibernate.type.Type[];	r4 := @parameter1: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3