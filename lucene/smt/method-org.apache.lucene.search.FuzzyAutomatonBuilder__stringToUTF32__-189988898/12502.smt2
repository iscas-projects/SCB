(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun codePointCount/-741124477 (String Int Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-String String)
(declare-const var2366 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2366 null-String)))
(assert true)
(define-const var2253 Int (length/-134980193 var2366)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3729 Int (codePointCount/-741124477 var2366 0 var2253)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int codePointCount(int,int)>(0, $i0) 
(define-const var785 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[$i1] 
(define-const var1734 Int 0) ; Statement: i6 = 0 
(define-const var564 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1297 Int (length/-134980193 var2366)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i2 goto return r1 
(assert (>= var1734 var1297)) ; Cond: i6 >= $i2 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), codePointCount/-741124477=([java.lang.String, int, int], int), arr-Int-init=([], int[])}
; {var2366=r0, var3157=null_type, var2253=$i0, var3729=$i1, var785=r1, var1734=i6, var564=i7, var1297=$i2}
; {r0=var2366, null_type=var3157, $i0=var2253, $i1=var3729, r1=var785, i6=var1734, i7=var564, $i2=var1297}
;seq <java.lang.String: int length()>;	<java.lang.String: int codePointCount(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: int codePointCount(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int codePointCount(int,int)>(0, $i0);	r1 = newarray (int)[$i1];	i6 = 0;	i7 = 0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i2 goto return r1;	return r1
;block_num 3