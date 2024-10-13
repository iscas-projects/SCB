(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2558 0)
(declare-sort var928 0)
(declare-sort var2164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-__Array__Int__var928__ (Array Int var928))
(declare-const var2164-INSTANCE var2164)
(declare-const var2198 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2198 null-String)))
(declare-const var155 (Array Int var928)) ; Statement: r3 := @parameter1: com.alibaba.fastjson2.JSONPath$Feature[] 
(assert (not (= var155 null-__Array__Int__var928__)))
(define-const var3298 String "#-1") ; Statement: $r1 = "#-1" 
(assert true)
(define-const var2376 Bool (= var3298 var2198)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert (not (= (ite var2376 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3682 var2164 var2164-INSTANCE) ; Statement: $r5 = <com.alibaba.fastjson2.JSONPath$PreviousPath: com.alibaba.fastjson2.JSONPath$PreviousPath INSTANCE> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2198=r0, var2558=null_type, var928=com.alibaba.fastjson2.JSONPath$Feature, var155=r3, var3298=$r1, var2376=$z0, var2164=com.alibaba.fastjson2.JSONPath$PreviousPath, var3682=$r5}
; {r0=var2198, null_type=var2558, com.alibaba.fastjson2.JSONPath$Feature=var928, r3=var155, $r1=var3298, $z0=var2376, com.alibaba.fastjson2.JSONPath$PreviousPath=var2164, $r5=var3682}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.alibaba.fastjson2.JSONPath$Feature[];	$r1 = "#-1";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser;	$r5 = <com.alibaba.fastjson2.JSONPath$PreviousPath: com.alibaba.fastjson2.JSONPath$PreviousPath INSTANCE>;	return $r5
;block_num 2