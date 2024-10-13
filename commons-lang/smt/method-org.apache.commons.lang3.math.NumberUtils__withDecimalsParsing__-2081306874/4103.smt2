(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2483 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2483 null-String)))
(declare-const var1417 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1417 null-Int)))
(define-const var3140 Int 0) ; Statement: i4 = 0 
(define-const var168 Int var1417) ; Statement: i5 = i0 
(assert true) ; Non Conditional
(assert true)
(define-const var1306 Int (length/-134980193 var2483)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i1 goto return 1 
(assert (>= var168 var1306)) ; Cond: i5 >= $i1 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2483=r0, var1976=null_type, var1417=i0, var3140=i4, var168=i5, var1306=$i1}
; {r0=var2483, null_type=var1976, i0=var1417, i4=var3140, i5=var168, $i1=var1306}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 = 0;	i5 = i0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i1 goto return 1;	return 1
;block_num 3