(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var949 0)
(declare-sort var2575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2575_isEmpty/-1293327634 ((Array Int var949)) Bool)
(declare-fun String_format/1339386452 (String (Array Int var949)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var949__ (Array Int var949))
(declare-const var1654 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1654 null-String)))
(declare-const var2387 (Array Int var949)) ; Statement: r0 := @parameter1: java.lang.Object[] 
(assert (not (= var2387 null-__Array__Int__var949__)))
(define-const var1676 Bool (var2575_isEmpty/-1293327634 var2387)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isEmpty(java.lang.Object[])>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r0) 
(assert (= (ite var1676 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1293 String (String_format/1339386452 var1654 var2387)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r0) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2575_isEmpty/-1293327634=([java.lang.Object[]], boolean), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1654=r1, var937=null_type, var949=java.lang.Object, var2387=r0, var2575=org.apache.commons.lang3.ArrayUtils, var1676=$z0, var1293=$r2}
; {r1=var1654, null_type=var937, java.lang.Object=var949, r0=var2387, org.apache.commons.lang3.ArrayUtils=var2575, $z0=var1676, $r2=var1293}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Object[];	$z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isEmpty(java.lang.Object[])>(r0);	if $z0 == 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r0);	$r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r0);	return $r2
;block_num 3