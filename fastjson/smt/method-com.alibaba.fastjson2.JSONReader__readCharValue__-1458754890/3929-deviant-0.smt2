(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort var1915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/1282532359 (var654) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var654 var654)
(declare-const null-String String)
(declare-const var75 var654) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var75 null-var654)))
(assert true)
(define-const var2926 String (readString/1282532359 var75)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
 ; Statement: if r1 == null goto r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1 
(assert (not (= var2926 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2530 Bool (isEmpty/-1285796103 var2926)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var2530 1 0) 0)) ; Cond: $z0 == 0 
(assert (not (and true (and (> (str.len var2926) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), charAt/698050440=([java.lang.String, int], char)}
; {var654=com.alibaba.fastjson2.JSONReader, var75=r0, var2926=r1, var1915=null_type, var2530=$z0, var2998=$c0}
; {com.alibaba.fastjson2.JSONReader=var654, r0=var75, r1=var2926, null_type=var1915, $z0=var2530, $c0=var2998}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	if r1 == null goto r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1;	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 3