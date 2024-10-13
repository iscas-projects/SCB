(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3270 0)
(declare-sort var2422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3270 var3270)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2736 var3270) ; Statement: r1 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var2736 null-var3270)))
(declare-const var2642 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2642 null-String)))
(declare-const var3894 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3894 null-Int)))
(declare-const var376 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var376 null-String)))
(define-const var943 Int 0) ; Statement: i6 = 0 
(define-const var3324 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1165 Int (length/-134980193 var376)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto return i6 
(assert (>= var3324 var1165)) ; Cond: i7 >= $i0 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3270=cn.hutool.core.text.AntPathMatcher, var2736=r1, var2642=r2, var2422=null_type, var3894=i2, var376=r0, var943=i6, var3324=i7, var1165=$i0}
; {cn.hutool.core.text.AntPathMatcher=var3270, r1=var2736, r2=var2642, null_type=var2422, i2=var3894, r0=var376, i6=var943, i7=var3324, $i0=var1165}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: cn.hutool.core.text.AntPathMatcher;	r2 := @parameter0: java.lang.String;	i2 := @parameter1: int;	r0 := @parameter2: java.lang.String;	i6 = 0;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto return i6;	return i6
;block_num 3