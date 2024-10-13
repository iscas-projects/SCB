(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var127 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.CharSequence[] 
(assert (not (= var127 null-__Array__Int__String__)))
(define-const var3737 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3737)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3737!1 String)
(assert (= var3737!1 ""))
(define-const var3180 Int (getLength-Arr-String-1 var127)) ; Statement: i0 = lengthof r1 
(define-const var2892 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var2892 var3180)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.CharSequence[]], int)}
; {var127=r1, var3737=$r0, var3180=i0, var2892=i1}
; {r1=var127, $r0=var3737, i0=var3180, i1=var2892}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3