(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const var1558 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1558 null-String)))
(declare-const var2552 String) ; Statement: r2 := @parameter1: java.lang.StringBuilder 
(assert (not (= var2552 null-String)))
(assert true)
(define-const var1410 (Array Int Int) (toCharArray/415275702 var1558)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2237 Int (getLength-Arr-Int-1 var1410)) ; Statement: i0 = lengthof r1 
(define-const var3655 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 
(assert (>= var3655 var2237)) ; Cond: i2 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var1558=r0, var2960=null_type, var2552=r2, var1410=r1, var2237=i0, var3655=i2}
; {r0=var1558, null_type=var2960, r2=var2552, r1=var1410, i0=var2237, i2=var3655}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.StringBuilder;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto return;	return
;block_num 3