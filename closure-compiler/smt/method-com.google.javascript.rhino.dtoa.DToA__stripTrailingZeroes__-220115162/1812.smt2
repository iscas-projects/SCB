(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-String String)
(declare-const var1396 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1396 null-String)))
(assert true)
(define-const var2020 Int (length/-171891354 var1396)) ; Statement: i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true) ; Non Conditional
(define-const var3866 Int var2020) ; Statement: $i0 = i3 
(define-const var189 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(define-const var2020!1 Int (+ var2020 var189)) ; Statement: i3 = i3 + $i5 
 ; Statement: if $i0 <= 0 goto $i1 = i3 + 1 
(assert (<= var3866 0)) ; Cond: $i0 <= 0 
(define-const var1236 Int (+ var2020!1 1)) ; Statement: $i1 = i3 + 1 
(assert true)
;(assert (setLength/1276735992 var1396 var1236)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>($i1) 

(declare-const var1396!1 String)
(declare-const var1236!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), cast-from-Int-to-Int=([int], int), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var1396=r0, var2020=i3, var3866=$i0, var189=$i5, var1236=$i1}
; {r0=var1396, i3=var2020, $i0=var3866, $i5=var189, $i1=var1236}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$i0 = i3;	$i5 = (int) -1;	i3 = i3 + $i5;	if $i0 <= 0 goto $i1 = i3 + 1;	$i1 = i3 + 1;	virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>($i1);	return
;block_num 3