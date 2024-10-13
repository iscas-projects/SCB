(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var3196 0)
(declare-sort var3227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var3196 Int) Bool)
(declare-fun startArray/-1126310615 (var3196) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1910 var1910)
(declare-const null-var3196 var3196)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3227 var3227)
(declare-const null-Int Int)
(declare-const var670 var1910) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray 
(assert (not (= var670 null-var1910)))
(declare-const var1829 var3196) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1829 null-var3196)))
(declare-const var1116 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1116 null-ClassObject)))
(declare-const var2587 var3227) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var2587 null-var3227)))
(declare-const var590 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var590 null-Int)))
(assert true)
(define-const var1736 Bool (nextIfMatch/-1486561452 var1829 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (= (ite var1736 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3729 Int (startArray/-1126310615 var1829)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(define-const var1268 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i2 != $i7 goto r1 = newarray (double)[$i2] 
(assert (not (not (= var3729 var1268)))) ; Negate: Cond: $i2 != $i7  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), cast-from-Int-to-Int=([int], int)}
; {var1910=com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray, var670=r2, var3196=com.alibaba.fastjson2.JSONReader, var1829=r0, var1116=r12, var3227=java.lang.Object, var2587=r13, var590=l3, var1736=$z0, var3729=$i2, var1268=$i7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray=var1910, r2=var670, com.alibaba.fastjson2.JSONReader=var3196, r0=var1829, r12=var1116, java.lang.Object=var3227, r13=var2587, l3=var590, $z0=var1736, $i2=var3729, $i7=var1268}
;seq 
;cnt {}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i7 = (int) -1;	if $i2 != $i7 goto r1 = newarray (double)[$i2];	return null
;block_num 3