(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1213 var1213)
(declare-const null-String String)
(declare-const var1535 var1213) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var1535 null-var1213)))
(declare-const var2671 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2671 null-String)))
(declare-const var1622 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1622 null-String)))
(define-const var1333 Int 0) ; Statement: i15 = 0 
(define-const var608 Int 0) ; Statement: i16 = 0 
(assert true)
(define-const var2275 Int (length/-134980193 var1622)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var1212 Int (- var2275 1)) ; Statement: $i1 = i0 - 1 
 ; Statement: if i16 >= $i1 goto (branch) 
(assert (>= var608 var1212)) ; Cond: i16 >= $i1 
 ; Statement: if i15 >= i0 goto return 
(assert (>= var1333 var2275)) ; Cond: i15 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1213=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var1535=r4, var2671=r1, var1622=r0, var298=null_type, var1333=i15, var608=i16, var2275=i0, var1212=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var1213, r4=var1535, r1=var2671, r0=var1622, null_type=var298, i15=var1333, i16=var608, i0=var2275, $i1=var1212}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	i15 = 0;	i16 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = i0 - 1;	if i16 >= $i1 goto (branch);	if i15 >= i0 goto return;	return
;block_num 4