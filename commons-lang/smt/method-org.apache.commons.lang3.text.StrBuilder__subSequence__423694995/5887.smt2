(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1503) Int)
(declare-fun substring/-694008227 (var1503 Int Int) String)
(declare-const null-var1503 var1503)
(declare-const null-Int Int)
(declare-const var3253 var1503) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3253 null-var1503)))
(declare-const var2416 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2416 null-Int)))
(declare-const var1294 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1294 null-Int)))
 ; Statement: if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var2416 0)) ; Cond: i0 >= 0 
(define-const var467 Int (size/1389889126 var3253)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i1 <= $i2 goto (branch) 
(assert (<= var1294 var467)) ; Cond: i1 <= $i2 
 ; Statement: if i0 <= i1 goto $r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1) 
(assert (<= var2416 var1294)) ; Cond: i0 <= i1 
(assert true)
(define-const var2269 String (substring/-694008227 var3253 var2416 var1294)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), substring/-694008227=([org.apache.commons.lang3.text.StrBuilder, int, int], java.lang.String)}
; {var1503=org.apache.commons.lang3.text.StrBuilder, var3253=r0, var2416=i0, var1294=i1, var467=$i2, var2269=$r1}
; {org.apache.commons.lang3.text.StrBuilder=var1503, r0=var3253, i0=var2416, i1=var1294, $i2=var467, $r1=var2269}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 >= 0 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i1 <= $i2 goto (branch);	if i0 <= i1 goto $r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1);	$r1 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: java.lang.String substring(int,int)>(i0, i1);	return $r1
;block_num 4