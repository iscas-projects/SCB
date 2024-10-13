(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1538 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1538 var1538)
(declare-const null-String String)
(declare-const var2122 var1538) ; Statement: r2 := @this: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var2122 null-var1538)))
(declare-const var2262 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2262 null-String)))
(declare-const var2900 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2900 null-String)))
(assert true)
(define-const var2142 Int (indexOf/-1209756239 var2262 var2900)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(assert true)
(define-const var2144 Int (length/-134980193 var2900)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3133 Int (+ var2142 var2144)) ; Statement: i2 = i0 + $i1 
(define-const var2574 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i0 == $i8 goto return 0 
(assert (= var2142 var2574)) ; Cond: i0 == $i8 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1538=org.hibernate.engine.internal.JoinSequence, var2122=r2, var2262=r0, var737=null_type, var2900=r1, var2142=i0, var2144=$i1, var3133=i2, var2574=$i8}
; {org.hibernate.engine.internal.JoinSequence=var1538, r2=var2122, r0=var2262, null_type=var737, r1=var2900, i0=var2142, $i1=var2144, i2=var3133, $i8=var2574}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: org.hibernate.engine.internal.JoinSequence;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = i0 + $i1;	$i8 = (int) -1;	if i0 == $i8 goto return 0;	return 0
;block_num 2