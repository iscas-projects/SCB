(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var3307-1 ((Array Int var3307)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__var3307__ (Array Int var3307))
(declare-const null-String String)
(declare-const var2856 (Array Int var3307)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var2856 null-__Array__Int__var3307__)))
(declare-const var1063 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1063 null-String)))
(define-const var891 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var891)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var891!1 String)
(assert (= var891!1 ""))
(define-const var3877 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3762 Int (getLength-Arr-var3307-1 var2856)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3877 var3762)) ; Cond: i3 >= $i0 
(assert true)
(define-const var11 String (toString/-2075883882 var891!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var3307-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3307=java.lang.Object, var2856=r1, var1063=r4, var2891=null_type, var891=$r0, var3877=i3, var3762=$i0, var11=$r2}
; {java.lang.Object=var3307, r1=var2856, r4=var1063, null_type=var2891, $r0=var891, i3=var3877, $i0=var3762, $r2=var11}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object[];	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3