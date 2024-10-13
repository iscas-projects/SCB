(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2691 0)
(declare-sort var1646 0)
(declare-sort var2611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var1646 Int) Bool)
(declare-fun startArray/-1126310615 (var1646) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2691 var2691)
(declare-const null-var1646 var1646)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2611 var2611)
(declare-const null-Int Int)
(declare-const var2684 var2691) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray 
(assert (not (= var2684 null-var2691)))
(declare-const var2989 var1646) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2989 null-var1646)))
(declare-const var1763 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1763 null-ClassObject)))
(declare-const var1998 var2611) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var1998 null-var2611)))
(declare-const var1355 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var1355 null-Int)))
(assert true)
(define-const var2858 Bool (nextIfMatch/-1486561452 var2989 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (= (ite var2858 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1024 Int (startArray/-1126310615 var2989)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(define-const var2784 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i2 != $i7 goto r1 = newarray (float)[$i2] 
(assert (not (not (= var1024 var2784)))) ; Negate: Cond: $i2 != $i7  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), cast-from-Int-to-Int=([int], int)}
; {var2691=com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray, var2684=r2, var1646=com.alibaba.fastjson2.JSONReader, var2989=r0, var1763=r12, var2611=java.lang.Object, var1998=r13, var1355=l3, var2858=$z0, var1024=$i2, var2784=$i7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray=var2691, r2=var2684, com.alibaba.fastjson2.JSONReader=var1646, r0=var2989, r12=var1763, java.lang.Object=var2611, r13=var1998, l3=var1355, $z0=var2858, $i2=var1024, $i7=var2784}
;seq 
;cnt {}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i7 = (int) -1;	if $i2 != $i7 goto r1 = newarray (float)[$i2];	return null
;block_num 3