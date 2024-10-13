(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3689 0)
(declare-sort var2108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/1282532359 (var3689) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun wasNull/1287024874 (var3689) Bool)
(declare-const null-var3689 var3689)
(declare-const null-String String)
(declare-const var2782 var3689) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2782 null-var3689)))
(assert true)
(define-const var1969 String (readString/1282532359 var2782)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
 ; Statement: if r1 == null goto r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1 
(assert (not (= var1969 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var745 Bool (isEmpty/-1285796103 var1969)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var745 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2782!1 var3689)
(assert (not (= var2782!1 null-var3689)))
(assert (= (wasNull/1287024874 var2782!1) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), wasNull/1287024874=([com.alibaba.fastjson2.JSONReader], boolean)}
; {var3689=com.alibaba.fastjson2.JSONReader, var2782=r0, var1969=r1, var2108=null_type, var745=$z0}
; {com.alibaba.fastjson2.JSONReader=var3689, r0=var2782, r1=var1969, null_type=var2108, $z0=var745}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	if r1 == null goto r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1;	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 1;	return 0
;block_num 3