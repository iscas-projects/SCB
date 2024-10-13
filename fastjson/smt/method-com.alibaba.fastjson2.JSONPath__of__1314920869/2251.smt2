(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2877 0)
(declare-sort var3948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3948-INSTANCE var3948)
(declare-const var1986 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1986 null-String)))
(define-const var2694 String "#-1") ; Statement: $r1 = "#-1" 
(assert true)
(define-const var1000 Bool (= var2694 var1986)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert (not (= (ite var1000 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3296 var3948 var3948-INSTANCE) ; Statement: $r5 = <com.alibaba.fastjson2.JSONPath$PreviousPath: com.alibaba.fastjson2.JSONPath$PreviousPath INSTANCE> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1986=r0, var2877=null_type, var2694=$r1, var1000=$z0, var3948=com.alibaba.fastjson2.JSONPath$PreviousPath, var3296=$r5}
; {r0=var1986, null_type=var2877, $r1=var2694, $z0=var1000, com.alibaba.fastjson2.JSONPath$PreviousPath=var3948, $r5=var3296}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "#-1";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser;	$r5 = <com.alibaba.fastjson2.JSONPath$PreviousPath: com.alibaba.fastjson2.JSONPath$PreviousPath INSTANCE>;	return $r5
;block_num 2