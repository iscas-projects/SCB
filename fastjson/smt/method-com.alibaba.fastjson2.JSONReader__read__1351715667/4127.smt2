(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1607 0)
(declare-sort var2048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch/1287024874 (var1607) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun typeRedirect/1287024874 (var1607) Bool)
(declare-fun readString/1282532359 (var1607) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1607 var1607)
(declare-const null-var2048 var2048)
(declare-const null-Int Int)
(declare-const var1201 var1607) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1201 null-var1607)))
(declare-const var2739 var2048) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var2739 null-var2048)))
(declare-const var2973 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var2973 null-Int)))
(define-const var1455 Int (ch/1287024874 var1201)) ; Statement: $c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(define-const var3766 Int (cast-from-Int-to-Int var1455)) ; Statement: $i35 = (int) $c0 
 ; Statement: if $i35 == 34 goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean typeRedirect> 
(assert (= var3766 34)) ; Cond: $i35 == 34 
(define-const var385 Bool (typeRedirect/1287024874 var1201)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean typeRedirect> 
 ; Statement: if $z0 != 0 goto $z15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
(assert (not (not (= (ite var385 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var146 String (readString/1282532359 var1201)) ; Statement: r57 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var602 Bool (isEmpty/-1285796103 var146)) ; Statement: $z14 = virtualinvoke r57.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z14 == 0 goto $c31 = virtualinvoke r57.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var602 1 0) 0))) ; Negate: Cond: $z14 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-Int-to-Int=([char], int), typeRedirect/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1607=com.alibaba.fastjson2.JSONReader, var1201=r0, var2048=java.util.Map, var2739=r1, var2973=l1, var1455=$c0, var3766=$i35, var385=$z0, var146=r57, var602=$z14}
; {com.alibaba.fastjson2.JSONReader=var1607, r0=var1201, java.util.Map=var2048, r1=var2739, l1=var2973, $c0=var1455, $i35=var3766, $z0=var385, r57=var146, $z14=var602}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r1 := @parameter0: java.util.Map;	l1 := @parameter1: long;	$c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$i35 = (int) $c0;	if $i35 == 34 goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean typeRedirect>;	$z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean typeRedirect>;	if $z0 != 0 goto $z15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	r57 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$z14 = virtualinvoke r57.<java.lang.String: boolean isEmpty()>();	if $z14 == 0 goto $c31 = virtualinvoke r57.<java.lang.String: char charAt(int)>(0);	return
;block_num 4