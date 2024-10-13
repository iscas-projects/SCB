(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var1798-1 ((Array Int var1798)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var1798__ (Array Int var1798))
(declare-const var2661 (Array Int var1798)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var2661 null-__Array__Int__var1798__)))
(define-const var3971 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3971)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3971!1 String)
(assert (= var3971!1 ""))
(define-const var173 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1890 Int (getLength-Arr-var1798-1 var2661)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var173 var1890)) ; Cond: i3 >= $i0 
(assert true)
(define-const var813 String (toString/-2075883882 var3971!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var1798-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1798=java.lang.Object, var2661=r1, var3971=$r0, var173=i3, var1890=$i0, var813=$r2}
; {java.lang.Object=var1798, r1=var2661, $r0=var3971, i3=var173, $i0=var1890, $r2=var813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3