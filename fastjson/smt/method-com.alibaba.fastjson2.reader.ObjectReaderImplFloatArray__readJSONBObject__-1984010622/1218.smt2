(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var133 0)
(declare-sort var3314 0)
(declare-sort var1426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var3314 Int) Bool)
(declare-fun startArray/-1126310615 (var3314) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var133 var133)
(declare-const null-var3314 var3314)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1426 var1426)
(declare-const null-Int Int)
(declare-const var2939 var133) ; Statement: r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray 
(assert (not (= var2939 null-var133)))
(declare-const var830 var3314) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var830 null-var3314)))
(declare-const var164 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var164 null-ClassObject)))
(declare-const var3653 var1426) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var3653 null-var1426)))
(declare-const var632 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var632 null-Int)))
(assert true)
(define-const var644 Bool (nextIfMatch/-1486561452 var830 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (= (ite var644 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3106 Int (startArray/-1126310615 var830)) ; Statement: $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(define-const var2355 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i2 != $i7 goto r1 = newarray (java.lang.Float)[$i2] 
(assert (not (not (= var3106 var2355)))) ; Negate: Cond: $i2 != $i7  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), cast-from-Int-to-Int=([int], int)}
; {var133=com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray, var2939=r9, var3314=com.alibaba.fastjson2.JSONReader, var830=r0, var164=r10, var1426=java.lang.Object, var3653=r11, var632=l3, var644=$z0, var3106=$i2, var2355=$i7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray=var133, r9=var2939, com.alibaba.fastjson2.JSONReader=var3314, r0=var830, r10=var164, java.lang.Object=var1426, r11=var3653, l3=var632, $z0=var644, $i2=var3106, $i7=var2355}
;seq 
;cnt {}
;stmts r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$i7 = (int) -1;	if $i2 != $i7 goto r1 = newarray (java.lang.Float)[$i2];	return null
;block_num 3