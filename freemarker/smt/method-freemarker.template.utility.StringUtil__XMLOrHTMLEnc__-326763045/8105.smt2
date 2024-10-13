(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1179 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var949 var949)
(declare-const var2837 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2837 null-String)))
(declare-const var2648 (Array Int Int)) ; Statement: r6 := @parameter1: char[] 
(assert (not (= var2648 null-__Array__Int__Int__)))
(declare-const var586 var949) ; Statement: r1 := @parameter2: java.io.Writer 
(assert (not (= var586 null-var949)))
(define-const var937 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var3994 Int (length/-134980193 var2837)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3104 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var3104 var3994)) ; Cond: i4 >= i0 
 ; Statement: if i3 >= i0 goto return 
(assert (>= var937 var3994)) ; Cond: i3 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2837=r0, var1179=null_type, var2648=r6, var949=java.io.Writer, var586=r1, var937=i3, var3994=i0, var3104=i4}
; {r0=var2837, null_type=var1179, r6=var2648, java.io.Writer=var949, r1=var586, i3=var937, i0=var3994, i4=var3104}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: char[];	r1 := @parameter2: java.io.Writer;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i3 >= i0 goto return;	return
;block_num 4