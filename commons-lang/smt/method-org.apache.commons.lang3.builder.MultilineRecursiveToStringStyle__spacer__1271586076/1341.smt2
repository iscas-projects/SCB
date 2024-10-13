(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var2187 var2187)
(declare-const null-Int Int)
(declare-const var3935 var2187) ; Statement: r1 := @this: org.apache.commons.lang3.builder.MultilineRecursiveToStringStyle 
(assert (not (= var3935 null-var2187)))
(declare-const var1388 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1388 null-Int)))
(define-const var2520 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2520)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2520!1 String)
(assert (= var2520!1 ""))
(define-const var1921 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var1921 var1388)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var2187=org.apache.commons.lang3.builder.MultilineRecursiveToStringStyle, var3935=r1, var1388=i0, var2520=$r0, var1921=i1}
; {org.apache.commons.lang3.builder.MultilineRecursiveToStringStyle=var2187, r1=var3935, i0=var1388, $r0=var2520, i1=var1921}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.MultilineRecursiveToStringStyle;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3