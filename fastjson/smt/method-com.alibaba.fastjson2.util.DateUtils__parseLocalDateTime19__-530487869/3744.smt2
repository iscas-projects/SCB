(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2367 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2367 null-String)))
(declare-const var897 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var897 null-Int)))
(define-const var877 Int (+ var897 19)) ; Statement: $i2 = i0 + 19 
(assert true)
(define-const var29 Int (length/-134980193 var2367)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= $i1 goto $r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.ToIntFunction STRING_CODER> 
(assert (not (<= var877 var29))) ; Negate: Cond: $i2 <= $i1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2367=r0, var1964=null_type, var897=i0, var877=$i2, var29=$i1}
; {r0=var2367, null_type=var1964, i0=var897, $i2=var877, $i1=var29}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i2 = i0 + 19;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i2 <= $i1 goto $r1 = <com.alibaba.fastjson2.util.JDKUtils: java.util.function.ToIntFunction STRING_CODER>;	return null
;block_num 2