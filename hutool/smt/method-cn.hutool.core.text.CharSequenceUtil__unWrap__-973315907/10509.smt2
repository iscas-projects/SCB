(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1906 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3225_isWrap/1383528585 (String String String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var392 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var392 null-String)))
(declare-const var324 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var324 null-String)))
(declare-const var3742 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3742 null-String)))
(define-const var122 Bool (var3225_isWrap/1383528585 var392 var324 var3742)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isWrap(java.lang.CharSequence,java.lang.String,java.lang.String)>(r0, r1, r2) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var122 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3605 String (String_toString/-1426662429 var392)) ; Statement: $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3225_isWrap/1383528585=([java.lang.CharSequence, java.lang.String, java.lang.String], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var392=r0, var324=r1, var1906=null_type, var3742=r2, var3225=cn.hutool.core.text.CharSequenceUtil, var122=$z0, var3605=$r3}
; {r0=var392, r1=var324, null_type=var1906, r2=var3742, cn.hutool.core.text.CharSequenceUtil=var3225, $z0=var122, $r3=var3605}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isWrap(java.lang.CharSequence,java.lang.String,java.lang.String)>(r0, r1, r2);	if $z0 == 0 goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 2