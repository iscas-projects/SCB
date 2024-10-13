(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1641104350 (var836 Int) Bool)
(declare-fun startArray/-1573404517 (var836) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var836 var836)
(declare-const var59 var836) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var59 null-var836)))
(assert true)
(define-const var1378 Bool (nextIfMatch/-1641104350 var59 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>() 
(assert (= (ite var1378 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2177 Int (startArray/-1573404517 var59)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>() 
(define-const var1517 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i2 != $i6 goto r1 = newarray (java.lang.String)[$i2] 
(assert (not (not (= var2177 var1517)))) ; Negate: Cond: $i2 != $i6  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1641104350=([com.alibaba.fastjson2.JSONReaderJSONB, byte], boolean), startArray/-1573404517=([com.alibaba.fastjson2.JSONReaderJSONB], int), cast-from-Int-to-Int=([int], int)}
; {var836=com.alibaba.fastjson2.JSONReaderJSONB, var59=r0, var1378=$z0, var2177=$i2, var1517=$i6}
; {com.alibaba.fastjson2.JSONReaderJSONB=var836, r0=var59, $z0=var1378, $i2=var2177, $i6=var1517}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>();	$i6 = (int) -1;	if $i2 != $i6 goto r1 = newarray (java.lang.String)[$i2];	return null
;block_num 3