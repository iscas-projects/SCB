(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2727 0)
(declare-sort var3248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newline/-972443259 (var2727) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2727 var2727)
(declare-const null-String String)
(declare-const var717 var2727) ; Statement: r0 := @this: org.stringtemplate.v4.AutoIndentWriter 
(assert (not (= var717 null-var2727)))
(declare-const var2308 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2308 null-String)))
(define-const var3734 Int 0) ; Statement: i13 = 0 
(define-const var1081 String (newline/-972443259 var717)) ; Statement: $r1 = r0.<org.stringtemplate.v4.AutoIndentWriter: java.lang.String newline> 
(assert true)
(define-const var2827 Int (length/-134980193 var1081)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert true)
(define-const var377 Int (length/-134980193 var2308)) ; Statement: i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var559 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
 ; Statement: if i14 >= i1 goto return i13 
(assert (>= var559 var377)) ; Cond: i14 >= i1 
 ; Statement: return i13 
(check-sat)
(get-model)
(get-unsat-core)
; {newline/-972443259=([org.stringtemplate.v4.AutoIndentWriter], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2727=org.stringtemplate.v4.AutoIndentWriter, var717=r0, var2308=r2, var3248=null_type, var3734=i13, var1081=$r1, var2827=i0, var377=i1, var559=i14}
; {org.stringtemplate.v4.AutoIndentWriter=var2727, r0=var717, r2=var2308, null_type=var3248, i13=var3734, $r1=var1081, i0=var2827, i1=var377, i14=var559}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.stringtemplate.v4.AutoIndentWriter;	r2 := @parameter0: java.lang.String;	i13 = 0;	$r1 = r0.<org.stringtemplate.v4.AutoIndentWriter: java.lang.String newline>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i1 = virtualinvoke r2.<java.lang.String: int length()>();	i14 = 0;	if i14 >= i1 goto return i13;	return i13
;block_num 3