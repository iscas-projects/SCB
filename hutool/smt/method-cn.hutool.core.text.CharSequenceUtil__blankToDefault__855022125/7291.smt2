(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3006 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var187_isBlank/-1569658263 (String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var278 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var278 null-String)))
(declare-const var3896 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3896 null-String)))
(define-const var2966 Bool (var187_isBlank/-1569658263 var278)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var2966 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3808 String (String_toString/-1426662429 var278)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var187_isBlank/-1569658263=([java.lang.CharSequence], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var278=r0, var3896=r1, var3006=null_type, var187=cn.hutool.core.text.CharSequenceUtil, var2966=$z0, var3808=$r2}
; {r0=var278, r1=var3896, null_type=var3006, cn.hutool.core.text.CharSequenceUtil=var187, $z0=var2966, $r2=var3808}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 3