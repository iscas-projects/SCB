(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var3173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/-413709904 (var2022) (Array Int Int))
(declare-fun offset/1287024874 (var3173) Int)
(declare-fun cast-from-var2022-to-var3173 (var2022) var3173)
(declare-fun type/-413709904 (var2022) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2022 var2022)
(declare-const var18 var2022) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var18 null-var2022)))
(define-const var2348 (Array Int Int) (bytes/-413709904 var18)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var48 Int (offset/1287024874 (cast-from-var2022-to-var3173 var18))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var1326 Int (+ var48 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var18!1 var2022)
(assert (not (= var18!1 null-var2022)))
(assert (= (offset/1287024874 (cast-from-var2022-to-var3173 var18!1)) var1326)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i1 
(define-const var455 Int (select var2348 var48)) ; Statement: $b2 = $r1[$i0] 
(declare-const var18!2 var2022)
(assert (not (= var18!2 null-var2022)))
(assert (= (type/-413709904 var18!2) var455)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b2 
(define-const var74 Int (type/-413709904 var18!2)) ; Statement: $b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var2689 Int (cast-from-Int-to-Int var74)) ; Statement: $i5 = (int) $b3 
(define-const var577 Int (cast-from-Int-to-Int (- 81))) ; Statement: $i7 = (int) -81 
 ; Statement: if $i5 == $i7 goto return 
(assert (= var2689 var577)) ; Cond: $i5 == $i7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2022-to-var3173=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), cast-from-Int-to-Int=([byte], int)}
; {var2022=com.alibaba.fastjson2.JSONReaderJSONB, var18=r0, var2348=$r1, var3173=com.alibaba.fastjson2.JSONReader, var48=$i0, var1326=$i1, var455=$b2, var74=$b3, var2689=$i5, var577=$i7}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2022, r0=var18, $r1=var2348, com.alibaba.fastjson2.JSONReader=var3173, $i0=var48, $i1=var1326, $b2=var455, $b3=var74, $i5=var2689, $i7=var577}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$i1 = $i0 + 1;	r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i1;	$b2 = $r1[$i0];	r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b2;	$b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i5 = (int) $b3;	$i7 = (int) -81;	if $i5 == $i7 goto return;	return
;block_num 2