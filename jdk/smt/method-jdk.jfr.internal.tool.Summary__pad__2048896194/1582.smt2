(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1363 var1363)
(declare-const null-Int Int)
(declare-const var2827 var1363) ; Statement: r2 := @this: jdk.jfr.internal.tool.Summary 
(assert (not (= var2827 null-var1363)))
(declare-const var3579 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3579 null-Int)))
(declare-const var3389 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var3389 null-Int)))
(define-const var2702 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2702)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2702!1 String)
(assert (= var2702!1 ""))
(define-const var2213 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2213 var3579)) ; Cond: i2 >= i0 
(assert true)
(define-const var1855 String (toString/-2075883882 var2702!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1363=jdk.jfr.internal.tool.Summary, var2827=r2, var3579=i0, var3389=c1, var2702=$r0, var2213=i2, var1855=$r1}
; {jdk.jfr.internal.tool.Summary=var1363, r2=var2827, i0=var3579, c1=var3389, $r0=var2702, i2=var2213, $r1=var1855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.jfr.internal.tool.Summary;	i0 := @parameter0: int;	c1 := @parameter1: char;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	if i2 >= i0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3