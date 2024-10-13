(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3831 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3831 null-String)))
(declare-const var2299 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var2299 null-__Array__Int__Int__)))
(assert true)
;(assert (append/672562846 var3831 "0x")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x") 
(declare-const var3831!1 String)
(assert (= var3831!1 (str.++ var3831 "0x")))
(define-const var990 Int (getLength-Arr-Int-1 var2299)) ; Statement: i0 = lengthof r1 
(define-const var3671 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return 
(assert (>= var3671 var990)) ; Cond: i7 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int)}
; {var3831=r0, var2299=r1, var990=i0, var3671=i7}
; {r0=var3831, r1=var2299, i0=var990, i7=var3671}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: byte[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x");	i0 = lengthof r1;	i7 = 0;	if i7 >= i0 goto return;	return
;block_num 3