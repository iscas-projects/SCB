(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1839 null-String)))
(declare-const var1493 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1493 null-Int)))
(declare-const var421 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var421 null-__Array__Int__Int__)))
(define-const var244 Int 0) ; Statement: i4 = 0 
(define-const var3252 Int var1493) ; Statement: i5 = i0 
(assert true)
(define-const var3835 Int (length/-134980193 var1839)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto return i5 
(assert (>= var244 var3835)) ; Cond: i4 >= i1 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1839=r0, var280=null_type, var1493=i0, var421=r1, var244=i4, var3252=i5, var3835=i1}
; {r0=var1839, null_type=var280, i0=var1493, r1=var421, i4=var244, i5=var3252, i1=var3835}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i4 = 0;	i5 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= i1 goto return i5;	return i5
;block_num 3