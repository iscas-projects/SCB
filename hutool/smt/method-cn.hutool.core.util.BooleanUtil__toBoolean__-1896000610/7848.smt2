(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var135_isNotBlank/-658997806 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var693 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var693 null-String)))
(define-const var2454 Bool (var135_isNotBlank/-658997806 (cast-from-String-to-String var693))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2454 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var135_isNotBlank/-658997806=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var693=r2, var1469=null_type, var135=cn.hutool.core.text.CharSequenceUtil, var2454=$z0}
; {r2=var693, null_type=var1469, cn.hutool.core.text.CharSequenceUtil=var135, $z0=var2454}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto return 0;	return 0
;block_num 2