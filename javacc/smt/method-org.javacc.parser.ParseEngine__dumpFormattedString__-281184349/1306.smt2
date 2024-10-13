(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort var2098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1882 var1882)
(declare-const null-String String)
(declare-const var3382 var1882) ; Statement: r1 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var3382 null-var1882)))
(declare-const var1142 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1142 null-String)))
(define-const var1044 Int 32) ; Statement: c6 = 32 
(define-const var3735 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var1516 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1718 Int (length/-134980193 var1142)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto return 
(assert (>= var1516 var1718)) ; Cond: i7 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1882=org.javacc.parser.ParseEngine, var3382=r1, var1142=r0, var2098=null_type, var1044=c6, var3735=z0, var1516=i7, var1718=$i0}
; {org.javacc.parser.ParseEngine=var1882, r1=var3382, r0=var1142, null_type=var2098, c6=var1044, z0=var3735, i7=var1516, $i0=var1718}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: java.lang.String;	c6 = 32;	z0 = 1;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto return;	return
;block_num 3