(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun codePointCount/-741124477 (String Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-String String)
(declare-const var2385 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2385 null-String)))
(assert true)
(define-const var1550 Int (length/-134980193 var2385)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2534 Int (codePointCount/-741124477 var2385 0 var1550)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointCount(int,int)>(0, i0) 
(define-const var2771 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i1] 
(define-const var2159 Int 0) ; Statement: i5 = 0 
(define-const var3949 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return r1 
(assert (>= var3949 var1550)) ; Cond: i6 >= i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), codePointCount/-741124477=([java.lang.String, int, int], int), arr-Int-init=([], int[])}
; {var2385=r0, var2416=null_type, var1550=i0, var2534=i1, var2771=r1, var2159=i5, var3949=i6}
; {r0=var2385, null_type=var2416, i0=var1550, i1=var2534, r1=var2771, i5=var2159, i6=var3949}
;seq <java.lang.String: int length()>;	<java.lang.String: int codePointCount(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int codePointCount(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r0.<java.lang.String: int codePointCount(int,int)>(0, i0);	r1 = newarray (int)[i1];	i5 = 0;	i6 = 0;	if i6 >= i0 goto return r1;	return r1
;block_num 3