(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/-565925419 (var758) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var758 var758)
(declare-const var392 var758) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var392 null-var758)))
(assert true)
(define-const var3755 String (readString/-565925419 var392)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>() 
(assert true)
(define-const var629 Int (length/-134980193 var3755)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2773 Int (div var629 2)) ; Statement: $i1 = $i0 / 2 
(define-const var2416 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (byte)[$i1] 
(define-const var2399 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var3095 Int (getLength-Arr-Int-1 var2416)) ; Statement: $i2 = lengthof r2 
 ; Statement: if i13 >= $i2 goto return r2 
(assert (>= var2399 var3095)) ; Cond: i13 >= $i2 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/-565925419=([com.alibaba.fastjson2.JSONReaderJSONB], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int)}
; {var758=com.alibaba.fastjson2.JSONReaderJSONB, var392=r0, var3755=r1, var629=$i0, var2773=$i1, var2416=r2, var2399=i13, var3095=$i2}
; {com.alibaba.fastjson2.JSONReaderJSONB=var758, r0=var392, r1=var3755, $i0=var629, $i1=var2773, r2=var2416, i13=var2399, $i2=var3095}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 / 2;	r2 = newarray (byte)[$i1];	i13 = 0;	$i2 = lengthof r2;	if i13 >= $i2 goto return r2;	return r2
;block_num 3