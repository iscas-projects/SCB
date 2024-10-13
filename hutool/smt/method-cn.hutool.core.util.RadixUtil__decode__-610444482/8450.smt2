(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-String String)
(declare-const var2969 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2969 null-String)))
(declare-const var1563 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1563 null-String)))
(assert true)
(define-const var3809 Int (length/-134980193 var2969)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3947 Int 0) ; Statement: l7 = 0L 
(assert true)
(define-const var1580 (Array Int Int) (toCharArray/415275702 var1563)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2856 Int (getLength-Arr-Int-1 var1580)) ; Statement: i1 = lengthof r2 
(define-const var776 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto return l7 
(assert (>= var776 var2856)) ; Cond: i8 >= i1 
 ; Statement: return l7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var2969=r0, var3800=null_type, var1563=r1, var3809=i0, var3947=l7, var1580=r2, var2856=i1, var776=i8}
; {r0=var2969, null_type=var3800, r1=var1563, i0=var3809, l7=var3947, r2=var1580, i1=var2856, i8=var776}
;seq <java.lang.String: int length()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	l7 = 0L;	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i1 = lengthof r2;	i8 = 0;	if i8 >= i1 goto return l7;	return l7
;block_num 3