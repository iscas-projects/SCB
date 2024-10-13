(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var2781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2781_getMaskBit/-1172543496 (String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var998 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var998 null-String)))
(define-const var2374 Int (var2781_getMaskBit/-1172543496 var998)) ; Statement: r1 = staticinvoke <cn.hutool.core.net.MaskBit: java.lang.Integer getMaskBit(java.lang.String)>(r0) 
 ; Statement: if r1 != null goto $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>() 
(assert (not (= var2374 null-Int))) ; Cond: r1 != null 
(assert true)
(define-const var671 Int (intValue/-1815674922 var2374)) ; Statement: $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2781_getMaskBit/-1172543496=([java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var998=r0, var3103=null_type, var2781=cn.hutool.core.net.MaskBit, var2374=r1, var671=$i0}
; {r0=var998, null_type=var3103, cn.hutool.core.net.MaskBit=var2781, r1=var2374, $i0=var671}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <cn.hutool.core.net.MaskBit: java.lang.Integer getMaskBit(java.lang.String)>(r0);	if r1 != null goto $i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r1.<java.lang.Integer: int intValue()>();	return $i0
;block_num 2