(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var689__ (Array Int var689))
(declare-const var3893 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3893 null-String)))
(declare-const var3656 ClassObject) ; Statement: r3 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3656 null-ClassObject)))
(declare-const var2132 (Array Int var689)) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[] 
(assert (not (= var2132 null-__Array__Int__var689__)))
 ; Statement: if r0 == null goto return null 
(assert (not (= var3893 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3632 Bool (isEmpty/-1285796103 var3893)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto r2 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONReader$Context createReadContext(com.alibaba.fastjson2.JSONReader$Feature[])>(r1) 
(assert (not (= (ite var3632 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3893=r0, var966=null_type, var3656=r3, var689=com.alibaba.fastjson2.JSONReader$Feature, var2132=r1, var3632=$z0}
; {r0=var3893, null_type=var966, r3=var3656, com.alibaba.fastjson2.JSONReader$Feature=var689, r1=var2132, $z0=var3632}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.reflect.Type;	r1 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[];	if r0 == null goto return null;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto r2 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.JSONReader$Context createReadContext(com.alibaba.fastjson2.JSONReader$Feature[])>(r1);	return null
;block_num 3