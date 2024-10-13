(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2525 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2525 null-String)))
(declare-const var186 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var186 null-Int)))
(define-const var1603 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var256 Int (length/-134980193 var2525)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2593 Int (* var256 var186)) ; Statement: $i2 = $i1 * i0 
(assert true)
;(assert (<init>/543593434 var1603 var2593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1603!1 String)
(declare-const var2593!1 Int)
(define-const var1698 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1698 var186)) ; Cond: i3 >= i0 
(assert true)
(define-const var3853 String (toString/-2075883882 var1603!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2525=r1, var2358=null_type, var186=i0, var1603=$r0, var256=$i1, var2593=$i2, var1698=i3, var3853=$r2}
; {r1=var2525, null_type=var2358, i0=var186, $r0=var1603, $i1=var256, $i2=var2593, i3=var1698, $r2=var3853}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 * i0;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3