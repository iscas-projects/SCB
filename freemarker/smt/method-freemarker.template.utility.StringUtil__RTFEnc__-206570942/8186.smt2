(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3454 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var2651 var2651)
(declare-const var3203 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3203 null-String)))
(declare-const var64 var2651) ; Statement: r1 := @parameter1: java.io.Writer 
(assert (not (= var64 null-var2651)))
(define-const var3076 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var757 Int (length/-134980193 var3203)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var833 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var833 var757)) ; Cond: i4 >= i0 
 ; Statement: if i3 >= i0 goto return 
(assert (>= var3076 var757)) ; Cond: i3 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3203=r0, var3454=null_type, var2651=java.io.Writer, var64=r1, var3076=i3, var757=i0, var833=i4}
; {r0=var3203, null_type=var3454, java.io.Writer=var2651, r1=var64, i3=var3076, i0=var757, i4=var833}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.io.Writer;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i3 >= i0 goto return;	return
;block_num 4