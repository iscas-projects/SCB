(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var924 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var924 null-String)))
(assert true)
(define-const var2189 Int (length/-134980193 var924)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3512 Int 0) ; Statement: l6 = 0L 
(define-const var2533 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return l6 
(assert (>= var2533 var2189)) ; Cond: i7 >= i0 
 ; Statement: return l6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var924=r0, var2922=null_type, var2189=i0, var3512=l6, var2533=i7}
; {r0=var924, null_type=var2922, i0=var2189, l6=var3512, i7=var2533}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	l6 = 0L;	i7 = 0;	if i7 >= i0 goto return l6;	return l6
;block_num 3