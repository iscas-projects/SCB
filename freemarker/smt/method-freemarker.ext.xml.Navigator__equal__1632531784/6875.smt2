(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1473 0)
(declare-sort var3863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1473 var1473)
(declare-const null-String String)
(declare-const var12 var1473) ; Statement: r2 := @this: freemarker.ext.xml.Navigator 
(assert (not (= var12 null-var1473)))
(declare-const var3038 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3038 null-String)))
(declare-const var1695 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1695 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
(assert (not (= var3038 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2967 Bool (= var3038 var1695)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1473=freemarker.ext.xml.Navigator, var12=r2, var3038=r0, var3863=null_type, var1695=r1, var2967=$z0}
; {freemarker.ext.xml.Navigator=var1473, r2=var12, r0=var3038, null_type=var3863, r1=var1695, $z0=var2967}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.ext.xml.Navigator;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 3