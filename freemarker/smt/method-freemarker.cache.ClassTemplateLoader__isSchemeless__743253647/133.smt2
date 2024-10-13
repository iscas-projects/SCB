(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2049 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2049 null-String)))
(define-const var3766 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var3268 Int (length/-134980193 var2049)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if 0 >= i0 goto (branch) 
(assert (>= 0 var3268)) ; Cond: 0 >= i0 
 ; Statement: if i3 >= i0 goto return 1 
(assert (>= var3766 var3268)) ; Cond: i3 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2049=r0, var3910=null_type, var3766=i3, var3268=i0}
; {r0=var2049, null_type=var3910, i3=var3766, i0=var3268}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if 0 >= i0 goto (branch);	if i3 >= i0 goto return 1;	return 1
;block_num 3