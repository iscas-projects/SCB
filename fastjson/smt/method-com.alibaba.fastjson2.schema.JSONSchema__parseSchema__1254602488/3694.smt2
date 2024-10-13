(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3539 0)
(declare-sort var2048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2048-INSTANCE var2048)
(declare-const var289 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var289 null-String)))
(define-const var2566 String "true") ; Statement: $r1 = "true" 
(assert true)
(define-const var633 Bool (= var2566 var289)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "false" 
(assert (not (= (ite var633 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1999 var2048 var2048-INSTANCE) ; Statement: $r7 = <com.alibaba.fastjson2.schema.Any: com.alibaba.fastjson2.schema.Any INSTANCE> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var289=r0, var3539=null_type, var2566=$r1, var633=$z0, var2048=com.alibaba.fastjson2.schema.Any, var1999=$r7}
; {r0=var289, null_type=var3539, $r1=var2566, $z0=var633, com.alibaba.fastjson2.schema.Any=var2048, $r7=var1999}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "true";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "false";	$r7 = <com.alibaba.fastjson2.schema.Any: com.alibaba.fastjson2.schema.Any INSTANCE>;	return $r7
;block_num 2