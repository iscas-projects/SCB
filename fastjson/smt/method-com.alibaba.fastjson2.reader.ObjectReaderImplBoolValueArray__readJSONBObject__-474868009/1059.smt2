(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2055 0)
(declare-sort var644 0)
(declare-sort var336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var644 Int) Bool)
(declare-fun startArray/-1126310615 (var644) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2055 var2055)
(declare-const null-var644 var644)
(declare-const null-ClassObject ClassObject)
(declare-const null-var336 var336)
(declare-const null-Int Int)
(declare-const var820 var2055) ; Statement: r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray 
(assert (not (= var820 null-var2055)))
(declare-const var2624 var644) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2624 null-var644)))
(declare-const var613 ClassObject) ; Statement: r9 := @parameter1: java.lang.reflect.Type 
(assert (not (= var613 null-ClassObject)))
(declare-const var3832 var336) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var3832 null-var336)))
(declare-const var1646 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var1646 null-Int)))
(assert true)
(define-const var154 Bool (nextIfMatch/-1486561452 var2624 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (= (ite var154 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2246 Int (startArray/-1126310615 var2624)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(define-const var3559 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i2 != $i7 goto r1 = newarray (boolean)[$i2] 
(assert (not (not (= var2246 var3559)))) ; Negate: Cond: $i2 != $i7  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), cast-from-Int-to-Int=([int], int)}
; {var2055=com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray, var820=r8, var644=com.alibaba.fastjson2.JSONReader, var2624=r0, var613=r9, var336=java.lang.Object, var3832=r10, var1646=l3, var154=$z0, var2246=$i2, var3559=$i7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray=var2055, r8=var820, com.alibaba.fastjson2.JSONReader=var644, r0=var2624, r9=var613, java.lang.Object=var336, r10=var3832, l3=var1646, $z0=var154, $i2=var2246, $i7=var3559}
;seq 
;cnt {}
;stmts r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r9 := @parameter1: java.lang.reflect.Type;	r10 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i7 = (int) -1;	if $i2 != $i7 goto r1 = newarray (boolean)[$i2];	return null
;block_num 3