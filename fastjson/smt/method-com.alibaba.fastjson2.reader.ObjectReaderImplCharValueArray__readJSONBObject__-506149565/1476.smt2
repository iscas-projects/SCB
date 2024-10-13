(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort var2363 0)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2363 Int) Bool)
(declare-fun isString/368808286 (var2363) Bool)
(declare-fun readString/1282532359 (var2363) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-var3426 var3426)
(declare-const null-var2363 var2363)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2353 var2353)
(declare-const null-Int Int)
(declare-const var563 var3426) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray 
(assert (not (= var563 null-var3426)))
(declare-const var797 var2363) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var797 null-var2363)))
(declare-const var2374 ClassObject) ; Statement: r14 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2374 null-ClassObject)))
(declare-const var1194 var2353) ; Statement: r15 := @parameter2: java.lang.Object 
(assert (not (= var1194 null-var2353)))
(declare-const var118 Int) ; Statement: l5 := @parameter3: long 
(assert (not (= var118 null-Int)))
(assert true)
(define-const var1529 Bool (nextIfMatch/-1486561452 var797 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
(assert (= (ite var1529 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3403 Bool (isString/368808286 var797)) ; Statement: $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
 ; Statement: if $z1 == 0 goto i7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var3403 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1916 String (readString/1282532359 var797)) ; Statement: r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var1314 (Array Int Int) (toCharArray/415275702 var1916)) ; Statement: $r7 = virtualinvoke r16.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), isString/368808286=([com.alibaba.fastjson2.JSONReader], boolean), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), toCharArray/415275702=([java.lang.String], char[])}
; {var3426=com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray, var563=r2, var2363=com.alibaba.fastjson2.JSONReader, var797=r0, var2374=r14, var2353=java.lang.Object, var1194=r15, var118=l5, var1529=$z0, var3403=$z1, var1916=r16, var1314=$r7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray=var3426, r2=var563, com.alibaba.fastjson2.JSONReader=var2363, r0=var797, r14=var2374, java.lang.Object=var2353, r15=var1194, l5=var118, $z0=var1529, $z1=var3403, r16=var1916, $r7=var1314}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r14 := @parameter1: java.lang.reflect.Type;	r15 := @parameter2: java.lang.Object;	l5 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	$z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	if $z1 == 0 goto i7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r7 = virtualinvoke r16.<java.lang.String: char[] toCharArray()>();	return $r7
;block_num 3