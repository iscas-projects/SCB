(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort var1130 0)
(declare-sort var1401 0)
(declare-sort var486 0)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mask/1918454044 (var1130) Int)
(declare-fun creator/1914013406 (var486) var1401)
(declare-fun cast-from-var1856-to-var486 (var1856) var486)
(declare-fun var1401_get/1017044072 (var1401) var492)
(declare-const null-var1856 var1856)
(declare-const null-Int Int)
(declare-const var1130-UseDefaultConstructorAsPossible var1130)
(declare-const null-var1401 var1401)
(declare-const var1510 var1856) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var1510 null-var1856)))
(declare-const var2739 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2739 null-Int)))
(define-const var79 var1130 var1130-UseDefaultConstructorAsPossible) ; Statement: $r0 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature UseDefaultConstructorAsPossible> 
(define-const var2072 Int (mask/1918454044 var79)) ; Statement: $l1 = $r0.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var398 Int (bv2nat (bvand ((_ int2bv 64) var2739) ((_ int2bv 64) var2072)))) ; Statement: $l2 = l0 & $l1 
(define-const var875 Int (ite (> var398 0) 1 (ite (< var398 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert (= var875 0)) ; Cond: $b3 == 0 
(define-const var3796 var1401 (creator/1914013406 (cast-from-var1856-to-var486 var1510))) ; Statement: $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
 ; Statement: if $r22 != null goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert (not (= var3796 null-var1401))) ; Cond: $r22 != null 
(define-const var3789 var1401 (creator/1914013406 (cast-from-var1856-to-var486 var1510))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(define-const var96 var492 (var1401_get/1017044072 var3789)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.function.Supplier: java.lang.Object get()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), creator/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.util.function.Supplier), cast-from-var1856-to-var486=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], com.alibaba.fastjson2.reader.ObjectReaderBean), var1401_get/1017044072=([java.util.function.Supplier], java.lang.Object)}
; {var1856=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var1510=r1, var2739=l0, var1130=com.alibaba.fastjson2.JSONReader$Feature, var79=$r0, var2072=$l1, var398=$l2, var875=$b3, var1401=java.util.function.Supplier, var486=com.alibaba.fastjson2.reader.ObjectReaderBean, var3796=$r22, var3789=$r2, var492=java.lang.Object, var96=$r3}
; {com.alibaba.fastjson2.reader.ObjectReaderAdapter=var1856, r1=var1510, l0=var2739, com.alibaba.fastjson2.JSONReader$Feature=var1130, $r0=var79, $l1=var2072, $l2=var398, $b3=var875, java.util.function.Supplier=var1401, com.alibaba.fastjson2.reader.ObjectReaderBean=var486, $r22=var3796, $r2=var3789, java.lang.Object=var492, $r3=var96}
;seq 
;cnt {}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	l0 := @parameter0: long;	$r0 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature UseDefaultConstructorAsPossible>;	$l1 = $r0.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l2 = l0 & $l1;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	$r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	if $r22 != null goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	$r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	$r3 = interfaceinvoke $r2.<java.util.function.Supplier: java.lang.Object get()>();	return $r3
;block_num 3