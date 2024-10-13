(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var991 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var991 Int) Bool)
(declare-fun startArray/-1126310615 (var991) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1314 var1314)
(declare-const null-var991 var991)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3944 var3944)
(declare-const null-Int Int)
(declare-const var2073 var1314) ; Statement: r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray 
(assert (not (= var2073 null-var1314)))
(declare-const var3564 var991) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3564 null-var991)))
(declare-const var3902 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3902 null-ClassObject)))
(declare-const var547 var3944) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var547 null-var3944)))
(declare-const var3400 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var3400 null-Int)))
(assert true)
(define-const var459 Bool (nextIfMatch/-1486561452 var3564 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (= (ite var459 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3955 Int (startArray/-1126310615 var3564)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(define-const var1677 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i2 != $i7 goto r1 = newarray (java.lang.Double)[$i2] 
(assert (not (not (= var3955 var1677)))) ; Negate: Cond: $i2 != $i7  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), cast-from-Int-to-Int=([int], int)}
; {var1314=com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray, var2073=r9, var991=com.alibaba.fastjson2.JSONReader, var3564=r0, var3902=r10, var3944=java.lang.Object, var547=r11, var3400=l3, var459=$z0, var3955=$i2, var1677=$i7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray=var1314, r9=var2073, com.alibaba.fastjson2.JSONReader=var991, r0=var3564, r10=var3902, java.lang.Object=var3944, r11=var547, l3=var3400, $z0=var459, $i2=var3955, $i7=var1677}
;seq 
;cnt {}
;stmts r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i7 = (int) -1;	if $i2 != $i7 goto r1 = newarray (java.lang.Double)[$i2];	return null
;block_num 3