(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-const null-String String)
(declare-const var628 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var628 null-String)))
(define-const var1850 Int 1) ; Statement: i2 = 1 
(define-const var1745 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var919 Int (indexOf/1426977840 var628 10 var1745)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(10, i3) 
(define-const var22 Int (+ var919 1)) ; Statement: $i1 = $i0 + 1 
(define-const var1745!1 Int var22) ; Statement: i3 = $i1 
 ; Statement: if $i1 == 0 goto return i2 
(assert (= var22 0)) ; Cond: $i1 == 0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/1426977840=([java.lang.String, int, int], int)}
; {var628=r0, var2076=null_type, var1850=i2, var1745=i3, var919=$i0, var22=$i1}
; {r0=var628, null_type=var2076, i2=var1850, i3=var1745, $i0=var919, $i1=var22}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 1;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(10, i3);	$i1 = $i0 + 1;	i3 = $i1;	if $i1 == 0 goto return i2;	return i2
;block_num 3