(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const var3509 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3509 null-String)))
(define-const var3994 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var1070 String "") ; Statement: r5 = "" 
(assert true)
(define-const var854 (Array Int Int) (toCharArray/415275702 var3509)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1271 Int (getLength-Arr-Int-1 var854)) ; Statement: i0 = lengthof r1 
(define-const var3526 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var3526 var1271)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var3509=r0, var3847=null_type, var3994=z2, var1070=r5, var854=r1, var1271=i0, var3526=i2}
; {r0=var3509, null_type=var3847, z2=var3994, r5=var1070, r1=var854, i0=var1271, i2=var3526}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z2 = 1;	r5 = "";	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto return r5;	return r5
;block_num 3