(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3414 0)
(declare-sort var2097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var2097 var2097)
(declare-const var1283 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1283 null-String)))
(assert true)
(define-const var2012 Int (length/-134980193 var1283)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1243 Int 0) ; Statement: i12 = 0 
(define-const var2196 Int 0) ; Statement: i13 = 0 
(define-const var3748 Int 0) ; Statement: i14 = 0 
(define-const var606 var2097 null-var2097) ; Statement: r12 = null 
(define-const var1015 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i0 goto (branch) 
(assert (>= var1015 var2012)) ; Cond: i15 >= i0 
 ; Statement: if i14 <= 0 goto $i20 = i12 + i13 
(assert (<= var3748 0)) ; Cond: i14 <= 0 
(define-const var2202 Int (+ var1243 var2196)) ; Statement: $i20 = i12 + i13 
(define-const var2345 Int (+ var2202 var3748)) ; Statement: $i21 = $i20 + i14 
 ; Statement: return $i21 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1283=r0, var3414=null_type, var2012=i0, var1243=i12, var2196=i13, var3748=i14, var2097=cn.hutool.core.convert.NumberChineseFormatter$ChineseUnit, var606=r12, var1015=i15, var2202=$i20, var2345=$i21}
; {r0=var1283, null_type=var3414, i0=var2012, i12=var1243, i13=var2196, i14=var3748, cn.hutool.core.convert.NumberChineseFormatter$ChineseUnit=var2097, r12=var606, i15=var1015, $i20=var2202, $i21=var2345}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i12 = 0;	i13 = 0;	i14 = 0;	r12 = null;	i15 = 0;	if i15 >= i0 goto (branch);	if i14 <= 0 goto $i20 = i12 + i13;	$i20 = i12 + i13;	$i21 = $i20 + i14;	return $i21
;block_num 4