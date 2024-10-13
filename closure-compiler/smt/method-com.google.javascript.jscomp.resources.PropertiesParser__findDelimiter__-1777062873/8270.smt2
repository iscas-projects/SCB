(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var2461 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2461 null-String)))
(define-const var2580 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var139 Int (length/-134980193 var2461)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32) 
(assert (>= var2580 var139)) ; Cond: i3 >= $i0 
(assert true)
(define-const var129 Int (indexOf/-1037706067 var2461 32)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2461=r0, var471=null_type, var2580=i3, var139=$i0, var129=$i1}
; {r0=var2461, null_type=var471, i3=var2580, $i0=var139, $i1=var129}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32);	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32);	return $i1
;block_num 3