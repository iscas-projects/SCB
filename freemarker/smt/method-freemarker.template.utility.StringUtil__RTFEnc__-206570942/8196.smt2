(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2829 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun write/-1610827708 (var105 String Int Int) void)
(declare-const null-String String)
(declare-const null-var105 var105)
(declare-const var2538 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2538 null-String)))
(declare-const var2290 var105) ; Statement: r1 := @parameter1: java.io.Writer 
(assert (not (= var2290 null-var105)))
(define-const var21 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var810 Int (length/-134980193 var2538)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1772 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1772 var810)) ; Cond: i4 >= i0 
 ; Statement: if i3 >= i0 goto return 
(assert (not (>= var21 var810))) ; Negate: Cond: i3 >= i0  
(define-const var2234 Int (- var810 var21)) ; Statement: $i1 = i0 - i3 
(assert true)
;(assert (write/-1610827708 var2290 var2538 var21 var2234)) ; Statement: virtualinvoke r1.<java.io.Writer: void write(java.lang.String,int,int)>(r0, i3, $i1) 

(declare-const var2290!1 var105)
(declare-const var2538!1 String)
(declare-const var21!1 Int)
(declare-const var2234!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), write/-1610827708=([java.io.Writer, java.lang.String, int, int], void)}
; {var2538=r0, var2829=null_type, var105=java.io.Writer, var2290=r1, var21=i3, var810=i0, var1772=i4, var2234=$i1}
; {r0=var2538, null_type=var2829, java.io.Writer=var105, r1=var2290, i3=var21, i0=var810, i4=var1772, $i1=var2234}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.io.Writer;	i3 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i3 >= i0 goto return;	$i1 = i0 - i3;	virtualinvoke r1.<java.io.Writer: void write(java.lang.String,int,int)>(r0, i3, $i1);	return
;block_num 5